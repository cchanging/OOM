#![feature(const_mut_refs)]
#![feature(cell_update)]
#![feature(as_array_of_cells)]
#![feature(const_fn_trait_bound)]
#![feature(allocator_api)]
#![feature(mutex_unlock)]

#[macro_use]
extern crate lazy_static;
extern crate alloc;
use alloc::alloc::AllocError;
use alloc::alloc::{GlobalAlloc, Layout};
use core::cell::Cell;
use core::ptr::null_mut;
use core::mem;
use alloc::string::String;
use core::marker::Sync;
use core::result::Result::Err;
use core::result::Result::Ok;
use core::result::Result;
use core::ops::Drop;
use core::ops::FnOnce;
use lazy_static::lazy_static;
use core::fmt::{self, Write};
use alloc::fmt::write;
use std::sync::{Arc, Mutex};
const MAX_SUPPORTED_ALIGN: usize = 4096;

pub mod cal_tools;
use cal_tools::decal_position;
use cal_tools::find_block;
use cal_tools::BLOCK_SIZES;


pub fn my_wrap<T>(a:T){
}

pub fn my_wrap_end(){
}

pub fn loop_wrap<T>(a:T){
}

#[repr(C)]
pub struct Count {
    allocated: u64,
    deallocated: u64,
    peak: u64,
    flag: bool,
    alloc_msg: [i64; 4096],
    alloc_msg_point:u64,
    alloc_begin_point:u64,
    reserve_msg: [ i64; 4096],
    reserve_msg_point: u64,
    reserve_begin_point: u64,
}

extern "C" { 
    fn get_thread_local() -> *const Count; 
}

fn with_counter<T>(f: impl FnOnce(&mut Cell<Count>) -> T) -> T {   
    let counter =
        unsafe { &mut *(get_thread_local() as *mut Cell<Count>) };
    f(counter)
}

//use Mutex for sync
pub static mut MyblocksNum: [i64;8] = [0,0,0,0,0,0,0,0];

pub struct AllocatorReservation<DefaultAllocator: 'static + GlobalAlloc>{
    current_allocator: &'static OOMGuard_Allocator<DefaultAllocator>,
    pub require_num: [i64;8],
    current_flag: bool,
}

impl<DefaultAllocator: 'static + GlobalAlloc> Drop for AllocatorReservation<DefaultAllocator>{
    fn drop(&mut self){
        self.current_allocator.finish(self.current_flag);
        let mut index = 0;
        unsafe{ 
            loop {
                if index == 8 {break;}
                MyblocksNum[index] += self.require_num[index];
                index += 1;
            }
        }
    }
}

pub struct PageListHead{
    ptr: *mut MyPage,
    // Indicates the size of each item of this page item
    size_class: usize,
 
}

// Mypage  space is 290B
pub struct MyPage{
    // padding: used as alignment padding
    pub padding: *mut u8,// 8B 
    // next: Indicates the next page
    pub next: *mut MyPage, // 8B
    // size_class: sizeclass of the current page
    pub size_class: usize, // 8B
    // bin_top: free_ptr, Represents the freelist stack header, size 0-255
    pub bin_top: usize,// 8B 
    // freelist: Save all the current vacancies, it is a stack itself, bin_top points to the top bin of the stack
    // freelist: The unit is size_class*1B, which is represented by blocks, fastbin[i] * sizeclass = offset 
    pub fast_bin:[u8;256], // 256B

}

impl PageListHead{
    const fn new(size_class:usize) -> PageListHead{
        PageListHead {
            ptr: 0 as *mut MyPage,
            size_class: size_class,

        }
    }
    fn get_sizeclass(&self) -> usize{
        self.size_class
    } 

    // reseve_page
    // parameters i: Indicates that i pages need to be inserted
    // Returns a result indicating whether the application is successful
    // 
    // The function is to apply for i pages of size class, and insert i pages into the page list of the current size class. 
    // The time efficiency is O(i), and it will not be released after insertion.
    unsafe fn reserve_page<DefaultAllocator: 'static + GlobalAlloc>(&self, allocator: &'static DefaultAllocator, i:usize) -> Result<*mut u8, AllocError>{
        
        let mut flag = 0;
        let layout = Layout::from_size_align(4096 + mem::size_of::<MyPage>(), 4096).unwrap();
        let mut j= i;
        let mut current = self.ptr as *mut MyPage;
        // traverse to the end of the linked list
        if self.ptr !=(0 as *mut MyPage){
            flag = 1;
            while (*current).next != 0 as *mut MyPage{
                current = (*current).next as *mut MyPage;
            }
        }
        // j: Indicates that j pages need to be inserted
        while j > 0{
            j = j - 1;
            // Pages applied by default_allocator
            let memory_pool = allocator.alloc(layout);
            if memory_pool == null_mut(){
                return Err(AllocError);
            }
            if flag == 0 {
                (*(self as *const PageListHead as *mut PageListHead)).ptr = memory_pool as *mut MyPage;
                current = self.ptr as *mut MyPage;
                flag = 1 ;
            }
            else {
                (*current).next = memory_pool as *mut MyPage;
                current = (*current).next as *mut MyPage;
            }
            // initialize memory
            let new_page = memory_pool as *mut MyPage;
            (*new_page).next = 0 as *mut MyPage;
            (*new_page).padding = 123456789 as *mut u8;
            (*new_page).size_class = self.size_class;
            // Initialize freelist
            let mut i = 0 as usize;
            let max_blocks = 4096/self.size_class as usize;
            (*new_page).bin_top = (4096/self.size_class as usize) - 1 ;
            loop {
                if i == max_blocks {break;}
                (*new_page).fast_bin[i as usize] = (max_blocks - 1 - i) as u8;
                i += 1;
            }
        }
        // Return value is meaningless when the allocator run correctly
        return Ok(0 as *mut u8);
    }

    // reseve_large_page
    // parameter arr: For the page array to be inserted, the size order is guaranteed
    // parameter size: the size of the array "arr"
    // Returns a result indicating whether the application is successful
    // The function is to apply for large file pages of different sizes
    unsafe fn reserve_large_page<DefaultAllocator: 'static + GlobalAlloc>(&self, arr: *const i32, size: usize, allocator: &'static DefaultAllocator) -> Result<*mut u8, AllocError> {
        let mut flag = 0;
        let temp_ptr = self.ptr;
        let mut j = 0;
        
        let layout = Layout::from_size_align(mem::size_of::<MyPage>(), 16).unwrap();
        
        let mut current = self.ptr as *mut MyPage;
        

        if self.ptr !=(0 as *mut MyPage){
            flag =1;
            while (*current).next != 0 as *mut MyPage{
                current = (*current).next as *mut MyPage;
            }
        }
        while j < size{
            let mut head = self.ptr as *mut MyPage;
            let mut align = 16;
            let page_size = (*(((arr as usize)+(j as usize)*4) as *const i32)) as usize;
            
            if(head != (0 as *mut MyPage)){
                while(head != (0 as *mut MyPage) && (*head).size_class < page_size){
                    head = (*head).next;
                }
                if(head != (0 as *mut MyPage)){
                    j += 1;
                    continue;
                }
            }
            
            // if page_size == 4096{
            //     align = 4096;
            // }
            let layout_page = Layout::from_size_align(page_size, align).unwrap();
            let memory_pool = allocator.alloc(layout);
            let big_page = allocator.alloc(layout_page);
            if memory_pool == null_mut(){
                return Err(AllocError);
            }
            if big_page == null_mut(){
                allocator.dealloc(memory_pool, layout);
                println!("big page fail{}", page_size);
                return Err(AllocError);
            }
            let new_page = memory_pool as *mut MyPage;
            (*new_page).next = 0 as *mut MyPage;
            (*new_page).size_class = page_size; 
            // free_ptr is used to save the page start address while reserving large pages.
            (*new_page).bin_top  = big_page as usize;
            
            if flag ==0 {
                (*new_page).padding = 0 as *mut u8;
            }else {
                // padding is used to point to the previous page as a pre pointer
                (*new_page).padding = current as *mut u8;
            }

            if flag == 0 {
                (*(self as *const PageListHead as *mut PageListHead)).ptr = memory_pool as *mut MyPage;
                current = self.ptr as *mut MyPage;
                flag = 1 ;
            }
            else {
                (*current).next = memory_pool as *mut MyPage;
                current = (*current).next as *mut MyPage;
            }          
            j = j + 1;
        }
        return Ok(0 as *mut u8);
    }


}



#[repr(C, align(4096))]
pub struct OOMGuard_Allocator<DefaultAllocator: 'static + GlobalAlloc> {
    default_allocator: &'static DefaultAllocator,
}

// MyPages: The head of the linked list of all pages
pub static mut MyPages:[PageListHead;9] = [PageListHead::new(16), PageListHead::new(32), PageListHead::new(64), PageListHead::new(128),PageListHead::new(256),PageListHead::new(512),PageListHead::new(1024),PageListHead::new(2048), PageListHead::new(2049)];




impl<DefaultAllocator: 'static + GlobalAlloc> OOMGuard_Allocator<DefaultAllocator>{

    pub const fn new(allocator: &'static DefaultAllocator)->OOMGuard_Allocator<DefaultAllocator>{
        OOMGuard_Allocator {
            default_allocator: &allocator,
        }
    }
    
    pub fn init(&self){
        with_counter(|it| {
            (*it.get_mut()).flag = true;
        });
    }
    
    pub fn set_flag(&self, flag: bool){
        with_counter(|it| {
            (*it.get_mut()).flag = flag;
        });
    }

    pub fn get_flag(&self) -> bool{
        return with_counter(|it| {
            it.get_mut().flag
        });  
    }

    // reservation
    // parameter arr2: Represents an array of block requests, which are reserved blocks after analysis
    // parameter size: Indicates the size of the request array
    // The function is to convert all applied blocks into how many pages need to be applied for
    pub fn reservation(&'static self, arr2: *const i32, size: usize) -> Result<AllocatorReservation<DefaultAllocator>, AllocError>{
        unsafe{
            let current_flag = self.get_flag();
            let mut areturn = AllocatorReservation{current_allocator: &self, require_num: [0;8],current_flag: current_flag};
            self.init();
            
            let mut size_pages:[usize;8] = [0, 0, 0, 0, 0, 0, 0, 0];
            let mut large_number:usize = 0;
            
            let arr:*mut i32 = arr2 as *mut i32;
            let mut i = 0;
            loop {
                if i == size {break;}
                // Each block has 1B to save in-page offset
                let x = arr.add(i).read() as usize;
                let block_pos = find_block(x);
                // Handling large files
                if block_pos == 8 {
                    if i == large_number {large_number = large_number +1;i +=1; continue;}
                    arr.add(i).write(arr.add(large_number).read());
                    arr.add(large_number).write(x as i32);
                    large_number += 1;
                }
                else {
                    size_pages[block_pos] += 1;
                }
                i = i+1;
            }
            // Select Sort by File Size
            if large_number != 0{
                let mut i = 0;
                loop {
                    if i == large_number -1 {break;}
                
                    let mut t = i;
                    let mut j = i+1;
                    loop {
                        if j == large_number{break;}
                    
                        if arr.add(j).read() < arr.add(t).read(){
                            t =j;
                        }
                        j +=1;
                    }
                    let mut temp = arr.add(t).read();
                    arr.add(t).write(arr.add(i).read());
                    arr.add(i).write(temp);
                    i = i +1;

                }

            }
            // Reserve Large File Page
            let ret_ptr = MyPages[8].reserve_large_page(arr,large_number,self.default_allocator);
            if let Err(a) = ret_ptr{
                return Err(a);
            }
            i = 0;
            // Calculate how many pages currently need to be applied according to the remaining number of blocks and pages
            loop {
                if i == 8 {break;}
                if size_pages[i]== 0 { i = i+1;continue; }
                let reserve_num = {if size_pages[i] as i64 > MyblocksNum[i]{size_pages[i] as i64 - MyblocksNum[i]}else{0}} as usize;
                areturn.require_num[i] = size_pages[i] as i64;
                size_pages[i]= (reserve_num+(4096/BLOCK_SIZES[i] -1))/ (4096/BLOCK_SIZES[i]);
                MyblocksNum[i] += (((4096/BLOCK_SIZES[i]) * size_pages[i]) as i64) - areturn.require_num[i];
                let ret_ptr = MyPages[i].reserve_page(self.default_allocator, size_pages[i]);
                if let Err(a) = ret_ptr{
                    return Err(a);
                }
                i = i+1;
            }
            return Ok(areturn);
        }
    }


    pub fn record_msg(&self, size: usize, flag: usize){
        with_counter(|it| {
            let a = it.get_mut().alloc_msg_point as usize;
            if a >= 4096{
                return;
            } 
            if flag == 1{
                (*it.get_mut()).alloc_msg[a] = size as i64;
                (*it.get_mut()).alloc_msg_point += 1; 
            }
        }); 
    }

    pub fn update_alloc(&self, size: usize){
        with_counter(|it| {
            (*it.get_mut()).allocated += size as u64; 
        }); 
    }

    pub fn update_dealloc(&self, size: usize){
        with_counter(|it| {
            (*it.get_mut()).deallocated += size as u64; 
        }); 
    }

    pub fn finish(&self, flag:bool){
        with_counter(|it| {
            if(flag == false){
                (*it.get_mut()).flag = false;
            }
            // println!();
            // //println!("{:?}",it.get_mut().name);
            // println!("allocated:{:?}",it.get_mut().allocated);
            // println!("deallocated:{:?}",it.get_mut().deallocated);
            // for i in 0..it.get_mut().alloc_msg_point{
            //     print!("{:?};",it.get_mut().alloc_msg[i as usize]);
            // }
            // (*it.get_mut()).alloc_msg_point = 0;
            // println!();
        }); 
    }

}


unsafe impl<DefaultAllocator: 'static + GlobalAlloc> Sync for OOMGuard_Allocator<DefaultAllocator> {}

unsafe impl<DefaultAllocator: 'static + GlobalAlloc> GlobalAlloc for OOMGuard_Allocator<DefaultAllocator> {
    // alloc
    // parameter layout: The size of the space to be allocated
    // The returned pointer is the pointer to the page entry plus 1Boffset
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {

        if self.get_flag() == false{
            return self.default_allocator.alloc(layout);
        }
        
        let mut i = find_block(layout.size());
        let mut ret_ptr: *mut u8 = 0 as *mut u8;

        // Special Judgment Large File
        // FirstFit
        if i == 8 {
            // self.update_alloc(layout.size());
            // self.record_msg(layout.size(), 1);
            let mut current = MyPages[i].ptr;
            let mut past = current;
            loop{
                if current == null_mut(){
                    // This panic does not occur under normal circumstances
                    println!("NOT ENOUGH LARGE_PAGE!");
                    return self.default_allocator.alloc(layout);
                }
                // Allocate directly if the size is sufficient
                if (*(current as *mut MyPage)).size_class >= layout.size()  {
                    // double-linked list management
                    ret_ptr = (*(current as *mut MyPage)).bin_top as *mut u8;
                    if past == current {
                        (*(&MyPages[i] as *const PageListHead as *mut PageListHead)).ptr = (*current).next as *mut MyPage;
                    }
                    else {
                        (*past).next = (*current).next as *mut MyPage;
                    }
                    let a = Layout::from_size_align(mem::size_of::<MyPage>(), 16).unwrap();
                    self.default_allocator.dealloc(current as *mut u8, a);
                    break;
                }
                past = current;
                current = (*current).next as *mut MyPage;
            }
            return ret_ptr;
        }
        
        // Add processing for 1B block header when alloc
        let mut current = MyPages[i].ptr;
        MyblocksNum[i] -= 1;
        loop {
            while current == 0 as *mut MyPage {
                if i == 8{
                    // This panic does not occur under normal circumstances
                    println!("NOT EXIST PAGE{}", layout.size());
                    return self.default_allocator.alloc(layout);
                }
                i = i + 1;
                current = MyPages[i].ptr;

            }
            // Determine if fastbin is full
            if (*(current as *mut MyPage)).bin_top != 999 {                
                
                ret_ptr =  current as *mut u8;
                // Calculate offset in fastbin
                let offset = ((*(current as *mut MyPage)).fast_bin[(*(current as *mut MyPage)).bin_top] as usize)*MyPages[i].size_class;


                ret_ptr = (ret_ptr as * mut u8).add( offset + mem::size_of::<MyPage>() );
                
                // Calculate the page based on the offset in the page during dealloc
                //*(ret_ptr as *mut u8) = (offset/16 ) as u8;
                
                if (*(current as *mut MyPage)).bin_top == 0{
                    (*(current as *mut MyPage)).bin_top = 999;
                }else {
                    (*(current as *mut MyPage)).bin_top -= 1;
                }
                break;
            }
            else {
                // If the current page is full, current traverses down
                current = (*current).next as *mut MyPage;
            }
        }
    
        // add extra block header when returning
        return (ret_ptr as * mut u8);
    }
    
    
    
    // dealloc
    // parameter ptr: the address of the memory block want to be deallocated, it don't contain the one byte header
    // parameter layout: the size of the space to be deallocated
    // The function is to find a specific page item, but not really release it to the default allocator
    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {

        if layout.size() > 2048{ 
            self.default_allocator.dealloc(ptr,layout);
            return;
        }
        let temp = (ptr as usize - mem::size_of::<MyPage>());
        let head = (temp - temp % (4096)) as *mut usize;
        if *head != 123456789{
            return self.default_allocator.dealloc(ptr,layout);
        }

        // Judgment Large File
        
        // Get the current page by calculating offset
        let true_ptr = (ptr as *mut u8) as usize;
        let mut offset = true_ptr - mem::size_of::<MyPage>() - head as usize;
        let current = head as *mut MyPage;
        let size_class = (*(current as *mut MyPage)).size_class;
        let i = find_block(size_class);
        MyblocksNum[i] += 1;
        if (*(current as *mut MyPage)).bin_top == 999{
            (*(current as *mut MyPage)).bin_top = 0;
        }else {
            (*(current as *mut MyPage)).bin_top +=1;
        }
        (*(current as *mut MyPage)).fast_bin[(*(current as *mut MyPage)).bin_top] = (offset / size_class) as u8;
        
    //    self.update_dealloc(layout.size());
    //    self.record_msg(layout.size(), 2);
        
        return;
    }
    
}



unsafe impl Sync for Count {}
unsafe impl Sync for MyPage {}
unsafe impl Sync for PageListHead {}
unsafe impl Send for Count {}
unsafe impl Send for MyPage {}
unsafe impl Send for PageListHead {}

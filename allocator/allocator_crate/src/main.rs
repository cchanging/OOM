
extern crate simple_allocator;
extern crate rand;
use std::collections::HashMap;
use rand::Rng;

use std::alloc::{GlobalAlloc, Layout, System};
// use simple_allocator::print_cost;
use OOMGuardAllocator::OOMGuardAllocator;
// use simple_allocator::print_cost_origin;
//  use simple_allocator::breakpoint;

use std::time::{SystemTime, UNIX_EPOCH};
//use simple_allocator::checkoutfree_list;


extern crate time;


#[global_allocator]
pub static ALLOCATOR: OOMGuardAllocator<System> = OOMGuardAllocator::new(&System);


fn timestamp2() -> f64 {
    let timespec = time::get_time();
    (timespec.nsec as f64/1000.0) as f64 
}
 
fn timestamp1() -> i64 {
    let start = SystemTime::now();
    let since_the_epoch = start
        .duration_since(UNIX_EPOCH)
        .expect("Time went backwards");
    let ms = since_the_epoch.as_secs() as i64 * 1000i64 + (since_the_epoch.subsec_nanos() as f64 / 1_000_000.0) as i64;
    ms
}



fn test(mut address:Vec<*mut u8>, add_layout: Vec<Layout>,sorter: Vec<usize>,length: usize) {
    unsafe{
        let mut i =0;
        loop {
            if i== 2*length{break;}

            let x = sorter[i];
            // The first occurrence represents the need to assign
            if address[x] == 0 as *mut u8{
                let ptr = std::alloc::alloc(add_layout[x]);
                address[x] = ptr;
            }else{
                // The second occurrence represents release
                
                std::alloc::dealloc(address[x],add_layout[x]);
            }
            i = i+1;
        }


    }
}
    
static mut ts2: f64 = 0.0;



fn test_simple(mut address:Vec<*mut u8>, add_layout: Vec<Layout>,sorter: Vec<usize>,alloc_message:*const i32,length:usize) {
    
    let allocator_reservation = ALLOCATOR.reservation(alloc_message, length);
    //unsafe {ts2 = timestamp2();}
    unsafe{
        let mut i =0;
        loop {
            if i== 2*length{break;}
        
            let x = sorter[i];

            if address[x] == 0 as *mut u8{
                let ptr = ALLOCATOR.alloc(add_layout[x]);
                address[x] = ptr;
            }else{
                ALLOCATOR.dealloc(address[x],add_layout[x]);
            }
            i = i+1;
        }

    }
}
    





fn main() {


    let mut rng = rand::thread_rng();
        let mut tt1:f64 =0.0;
        let mut tt2:f64  = 0.0;
        // 
        for j in 0..10000{

        let y = rng.gen_range(1,100);
    let length = y;

    let mut address = Vec::<*mut u8>::with_capacity(length);
    //address.reserve(10000);
    let mut add_layout = Vec::<Layout>::with_capacity(length);
    //add_layout.reserve(10000);
    let mut sorter = Vec::<usize>::with_capacity(length*2);
    //sorter.reserve(20000);
    let layout = Layout::from_size_align((length*4 as usize),1).unwrap();

    let mut alloc_message2 = 0 as *mut u8;
    unsafe {alloc_message2 = std::alloc::alloc(layout);}


    

    for i in 0..length{
        address.push(0 as *mut u8);

        let x = rng.gen_range(1,100);
        if x > 96{
            let y =rng.gen_range(2048,10000);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>93 {
            let y =rng.gen_range(1024,2048);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>90 {
            let y =rng.gen_range(512,1024);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>86 {
            let y =rng.gen_range(256,512);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>77 {
            let y =rng.gen_range(128,256);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>60 {
            let y =rng.gen_range(64,128);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>40 {
            let y =rng.gen_range(32,64);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else if x>20{
            let y =rng.gen_range(16,32);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }else {
            let y =rng.gen_range(1,16);
            add_layout.push(Layout::from_size_align(y,1).unwrap());
        }
        
    }
    add_layout.push(Layout::from_size_align(3000,1).unwrap());
    address.push(0 as *mut u8);
    let alloc_message3 = alloc_message2 as *mut i32;
    unsafe {
        for i in 0..length{
            alloc_message3.add(i).write(add_layout[i].size() as i32);
        }
    }
    



    for i in 0..length*2{
        sorter.push(222222);
    }// sorter: The first occurrence of the number means alloc and the second occurrence of the number means dealloc
    for i in 0..length*2{

        let mut x = rng.gen_range(0,length*2);
        if sorter[x]==222222{
            sorter[x]=i%length;
        }else{
            loop{
                x = (x+1)%(length*2);
                if sorter[x] == 222222{
                    sorter[x]=i%length;
                    break;
                }
            }
        }
    }
    
    let mut address2 = Vec::<*mut u8>::with_capacity(length);
    //address.reserve(10000);
    let mut add_layout2 = Vec::<Layout>::with_capacity(length);
    //add_layout.reserve(10000);

    let mut sorter2 = Vec::<usize>::with_capacity(length*2);

    for i in 0..length{
        address2.push(0 as *mut u8);
        add_layout2.push(add_layout[i]);
    }
    for i in 0..length*2{
        sorter2.push(sorter[i]);
    }


    




    let ts0 = timestamp2();
    {
        test(address,add_layout,sorter,length);
        
    }

    let ts1 = timestamp2();
    
    
    //println!("{:?}",add_layout2);

    unsafe {ts2 = timestamp2();}

    {
        test_simple(address2,add_layout2,sorter2,alloc_message3 as *const i32,length);
        
    }
    
    let ts3 = timestamp2();
    unsafe{
        tt1 = tt1 + ts3-ts2;
        tt2 = tt2 + ts1-ts0;
    }


    //println!("blocknums:{}   simpleallocator:{}us Defaultallocator:{}us",length,(ts3-ts2) as usize, (ts1-ts0)as usize);
    }
    println!("  simpleallocator:{}us Defaultallocator:{}us",tt1 as usize, tt2 as usize);
}

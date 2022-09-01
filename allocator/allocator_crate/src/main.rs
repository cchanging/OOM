#![feature(as_array_of_cells)]
#![feature(try_reserve_kind)]

extern crate OOMGuardAllocator;
use OOMGuardAllocator::OOMGuard_Allocator;
use std::ffi::{CString, CStr};
use std::collections::TryReserveError;
use std::collections::TryReserveErrorKind::CapacityOverflow;
use std::alloc::{GlobalAlloc, Layout, System};
use std::fmt;
use std::fs;
use std::collections::VecDeque;

#[global_allocator]
pub static ALLOCATOR: OOMGuard_Allocator<System> = OOMGuard_Allocator::new(&System);



fn test2(){
    unsafe{
        println!("begin test2");
        let mut arr:[i32;10] = [33,400,400,400,400,400,400,400,400,400];
        let allocator_reservation = ALLOCATOR.reservation(&arr as *const i32, 10).unwrap();
        let mut vector_ = Vec::<i32>::with_capacity(8);
        let mut vector1_ = Vec::<i32>::with_capacity(100);
        let mut vector2_ = Vec::<i32>::with_capacity(100);
        let mut vector3_ = Vec::<i32>::with_capacity(100);
        let mut vector4_ = Vec::<i32>::with_capacity(100);
        let mut vector5_ = Vec::<i32>::with_capacity(100);
        let mut vector6_ = Vec::<i32>::with_capacity(100);
        let mut vector7_ = Vec::<i32>::with_capacity(100);
        let mut vector8_ = Vec::<i32>::with_capacity(100);
        let mut vector9_ = Vec::<i32>::with_capacity(100);
    }
}


fn test(){
    unsafe{
        println!("begin test");
        let mut arr:[i32;10] = [33,400,400,400,400,400,400,400,400,400];
        println!("begin test");
        let allocator_reservation = ALLOCATOR.reservation(&arr as *const i32, 10).unwrap();
        let mut vector_ = Vec::<i32>::with_capacity(8);
        test2();
        let mut vector1_ = Vec::<i32>::with_capacity(100);
        let mut vector2_ = Vec::<i32>::with_capacity(100);
        let mut vector3_ = Vec::<i32>::with_capacity(100);
        let mut vector4_ = Vec::<i32>::with_capacity(100);
        let mut vector5_ = Vec::<i32>::with_capacity(100);
        let mut vector6_ = Vec::<i32>::with_capacity(100);
        let mut vector7_ = Vec::<i32>::with_capacity(100);
        let mut vector8_ = Vec::<i32>::with_capacity(100);
        let mut vector9_ = Vec::<i32>::with_capacity(100);
    }
}
    



fn main() {
    
    unsafe{
    let mut vector5_ = Vec::<i32>::with_capacity(100);
    let mut vector6_ = Vec::<i32>::with_capacity(100);
    test();
    let mut vector5_ = Vec::<i32>::with_capacity(100);
    let mut vector6_ = Vec::<i32>::with_capacity(100);
    }
}

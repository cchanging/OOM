#![feature(as_array_of_cells)]
#![feature(try_reserve_kind)]
#![feature(allocator_api)]
extern crate OOMmacro;
extern crate OOMGuardAllocator;
use OOMGuardAllocator::OOMGuard_Allocator;
use OOMmacro::*;
use std::collections::TryReserveError;
use core::alloc::AllocError;
use std::alloc::{GlobalAlloc, Layout, System};

#[global_allocator]
pub static ALLOCATOR: OOMGuard_Allocator<System> = OOMGuard_Allocator::new(&System);

pub enum myError{
  allocation_fail(String),
  others
}

struct BB{
  pub b: i32,
  pub c: *const i32,
}

struct CC{
   pub a:i32,
   pub b:i32,
   pub c:i32,
}

struct AA{
  pub c:i32,
  pub a: BB,
  pub b: i32,
}


impl From<AllocError> for myError{
  fn from(t: AllocError) -> myError {
      myError::allocation_fail(String::from("TRY ALLOCATION FAIL, LOCATION: try_test_oom()"))    
  }
}

impl From<TryReserveError> for myError{
  fn from(t: TryReserveError) -> myError {
      myError::allocation_fail(String::from("TRY ALLOCATION FAIL, LOCATION: try_test_oom()"))    
  }
}

#[oom_safe]
fn test_oom(mut ass: &mut AA)->Result<(), myError>{
  let mut v4 = String::with_capacity(100);
  let mut v5 = String::with_capacity(50);
  let mut a = Vec::<i32>::new();
  a.reserve(ass.c as usize);
  return Ok(());
}

fn try_test_oom(mut ass: &mut AA)->Result<(), myError>{
  let mut v4 = String::with_capacity(100);
  let mut v5 = String::with_capacity(50);
  let mut a = Vec::<i32>::new();
  a.try_reserve(ass.c as usize)?;
  return Ok(());
}

fn main(){
  let mut v0 = Vec::<i32>::with_capacity(662500);
  let mut v1 = Vec::<i32>::with_capacity(30000);
  let mut v2 = Vec::<i32>::with_capacity(2800);
  let mut aa = AA{c:500, a:BB{b:12,c:&13}, b:14};

  let mut v3 = Vec::<i32>::with_capacity(300);
  let mut bb = AA{c:4, a:BB{b:12,c:&13}, b:14};
  
  //oom_safe_version
  let result_oom_safe = test_oom(&mut bb);
  if let Err(err) = result_oom_safe{
    if let myError::allocation_fail(log) = err{
      println!("{:?}", log);
    } 
  }


  //try_version
  let result_try = try_test_oom(&mut aa);
  if let Err(err) = result_try{
    if let myError::allocation_fail(log) = err{
      println!("{:?}", log);
    } 
  }
  println!("TEST OVER");
}
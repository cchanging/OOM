# OOM-Guard
## Introduction
OOM-Guard is a semi-automated mechanism that can help Rust programmers transfer infallible code snippets to fallible mode handily and safely. The infallible mode is the default mode used in stable Rust which will abort or panic the programs when encountering OOM. The fallible mode is introduced in nightly Rust by providing some try version APIs which will return a Result<> for handling. OOM-Guard can help programmers transfer a infallible allocation function to fallible mode without lots of API modifications via reservation mechanism. This toolchain includes 3 parts, including a cost analysis tool to extract the cost expressions, a proxy allocator to achieve reservation mechanism and a macro expansion library to generate statements for reservation. 

## Usage
The workflow of OOM-Guard is as follows:
- Mark the target function which need to be transfered to fallible mode with macro `#[oom_guard]`.
- Emit the llvm-ir of target functions.
- Use the cost analysis tool to analyze the generated llvm-ir and extract the cost expressions of target functions.
- (Option) Make some extra annotations according to the reported information.
- Compile the program to generate the final executable program.

We provide an usage case in usage directory. To compile the demo programs we should first specify the path of cost expression file in macro/macro_crate/lib.rs. We take it as an example and specify the usage.

```Rust
//modification in original programs

#[global_allocator]
pub static ALLOCATOR: OOMGuard_Allocator<System> = OOMGuard_Allocator::new(&System);
// declare the global allocator with the proxy allocator.

impl From<AllocError> for myError{
// implement the From<AllocError> trait for the Error type used in target functions.
  fn from(t: AllocError) -> myError {
      myError::allocation_fail(String::from("TRY ALLOCATION FAIL, LOCATION: try_test_oom()"))    
  }
}

#[oom_safe] //mark target function with procedure macro
fn test_oom(mut ass: &mut AA)->Result<(), myError>{
  let mut v4 = String::with_capacity(100);
  let mut v5 = String::with_capacity(50);
  let mut a = Vec::<i32>::new();
  a.reserve(ass.c as usize);
  return Ok(());
}
```
To emit the llvm-ir of target program, we can use the following commands:
```Shell
cargo rustc -- --emit=llvm-ir
```
or
```Shell
RUSTFLAGS="--emit=llvm-ir" cargo build
```
For the complicated crates, it may generate multiple llvm-ir files and we need to use `llvm-link` to link these llvm-ir into a file.

To perform the cost analysis, we need to switch to target directory and use the command:
```Shell
./bin/svf-ex the_path_to_llvm_ir > the_path_to_store_the_result
```

For the demo program, we already provide a memory cost expression file, $result$, in the cost_analysis directory. Then directly use `cargo run` command to run the demo program after specify the path of cost expression file.

The test.sh script is to simulate low memory situation.

# Dependency
Our toolchain is based on Rust version 1.43.0 and LLVM version 13.0.0. Hence make sure you have install the corresponding or later version of `LLVM`, `rustup` and `cargo`.

Our cost analysis tool is based on SVF (https://github.com/SVF-tools/SVF-example). To perform cost analysis, you also need to follow the setup toturial build the executable file.
# OOM
An OOM handling mechanism for Rust Programs. We provide an usage case in usage directory. To compile the demo programs we should first specify the path of cost expression file in macro/macro_crate/lib.rs.

For the demo program, we have a memory cost expression file, result, in cost_analysis directory. You can directly `cargo run` the demo program after specify the  cost expression path.

The test.sh script is to simulate low memory situation.

# Cost Analysis
The cost analysis tool is based on SVF (https://github.com/SVF-tools/SVF-example). To perform cost analysis, first you need to  follow the setup toturial build the executable file, and input the target llvm-ir to get the final results. Note that we can use `cargo rustc -- --emit=llvm-ir` to get the llvm-ir of Rust crates.

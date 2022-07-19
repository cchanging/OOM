; ModuleID = '4mk9b5m9yvz1yfay'
source_filename = "4mk9b5m9yvz1yfay"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>" = type { %"std::alloc::System"*, [511 x i64] }
%"std::alloc::System" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"OOMGuardAllocator::MyPage" = type { %"OOMGuardAllocator::MyPage"*, i64, i64, i8*, [256 x i8] }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::alloc::AllocError" = type {}
%"core::result::Result<(), myError>" = type { i64, [3 x i64] }
%myError = type { {}*, [2 x i64] }
%"core::result::Result<(), myError>::Err" = type { [1 x i64], %myError }
%"core::result::Result<(), alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<(), alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::alloc::layout::LayoutError" = type {}
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>" = type { i64, [2 x i64] }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err" = type { [1 x i64], { i64, i64 } }
%AA = type { { i32*, i32 }, i32, i32 }
%"OOMGuardAllocator::Count" = type { i64, i64, i64, i8, [7 x i8], %"alloc::string::String", [4096 x i64], i64 }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"core::cell::Cell<OOMGuardAllocator::Count>" = type { %"core::cell::UnsafeCell<OOMGuardAllocator::Count>" }
%"core::cell::UnsafeCell<OOMGuardAllocator::Count>" = type { %"OOMGuardAllocator::Count" }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::option::Option<usize>::Some" = type { [1 x i64], i64 }
%"myError::allocation_fail" = type { %"alloc::string::String" }
%"alloc::vec::Vec<i32>" = type { { i32*, i64 }, i64 }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[i32]>" = type { [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue" = type { [1 x i64], i64 }
%"core::result::Result<usize, core::alloc::layout::LayoutError>::Err" = type { [8 x i8], %"core::alloc::layout::LayoutError" }
%"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], i64 }
%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok" = type { [1 x i64], { i8*, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>" = type { i64, [2 x i64] }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok" = type { [8 x i8], {} }
%"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err" = type { [1 x i64], { i64, i64 } }
%"alloc::alloc::Global" = type {}
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { {}*, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break" = type { [1 x i64], { i64, i64 } }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>" = type { i64, [2 x i64] }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue" = type { [1 x i64], i64 }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break" = type { [1 x i64], { i64, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue" = type { [1 x i64], { i8*, i64 } }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { [1 x i64], { i64, i64 } }
%"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" = type { %"core::alloc::layout::LayoutError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Break" = type { [8 x i8], %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue" = type { [8 x i8], {} }
%"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" = type { %"core::alloc::AllocError" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break" = type { %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err" }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@alloc142 = private unnamed_addr constant <{ [49 x i8] }> <{ [49 x i8] c"/home/cj/OOM/allocator/allocator_crate/src/lib.rs" }>, align 1
@alloc72 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\A6\01\00\00 \00\00\00" }>, align 8
@str.0 = internal constant [28 x i8] c"attempt to add with overflow"
@_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E = external global [9 x { i64*, i64 }]
@alloc74 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\CA\01\00\00\1B\00\00\00" }>, align 8
@alloc76 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\D1\01\00\00\15\00\00\00" }>, align 8
@alloc78 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\D2\01\00\00\1B\00\00\00" }>, align 8
@alloc56 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"NOT EXIST PAGE" }>, align 1
@alloc57 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc56, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc4 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc80 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\CF\01\00\00\15\00\00\00" }>, align 8
@alloc82 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DA\01\00\00\1F\00\00\00" }>, align 8
@alloc84 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DA\01\00\00s\00\00\00" }>, align 8
@alloc86 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DA\01\00\00\1E\00\00\00" }>, align 8
@str.1 = internal constant [33 x i8] c"attempt to multiply with overflow"
@_ZN17OOMGuardAllocator11MyblocksNum17ha104d8890128a2f9E = external global [8 x i64]
@alloc88 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DC\01\00\00\22\00\00\00" }>, align 8
@str.2 = internal constant [33 x i8] c"attempt to subtract with overflow"
@alloc90 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DC\01\00\00\11\00\00\00" }>, align 8
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\DE\01\00\006\00\00\00" }>, align 8
@alloc94 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\E6\01\00\00\15\00\00\00" }>, align 8
@alloc96 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\AE\01\00\00\1F\00\00\00" }>, align 8
@alloc51 = private unnamed_addr constant <{ [22 x i8] }> <{ [22 x i8] c"NOT ENOUGH LARGE_PAGE!" }>, align 1
@alloc52 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [22 x i8] }>, <{ [22 x i8] }>* @alloc51, i32 0, i32 0, i32 0), [8 x i8] c"\16\00\00\00\00\00\00\00" }>, align 8
@alloc98 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\B3\01\00\00\15\00\00\00" }>, align 8
@alloc100 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\BA\01\00\00\1D\00\00\00" }>, align 8
@alloc102 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\BF\01\00\00S\00\00\00" }>, align 8
@alloc104 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\02\02\00\00\0C\00\00\00" }>, align 8
@alloc106 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\0A\02\00\00\1A\00\00\00" }>, align 8
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\0B\02\00\001\00\00\00" }>, align 8
@alloc110 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\0F\02\00\00\1A\00\00\00" }>, align 8
@alloc112 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\0F\02\00\00\09\00\00\00" }>, align 8
@alloc114 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\14\02\00\00\0D\00\00\00" }>, align 8
@alloc116 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\16\02\00\00U\00\00\00" }>, align 8
@str.3 = internal constant [25 x i8] c"attempt to divide by zero"
@alloc118 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\16\02\00\00\09\00\00\00" }>, align 8
@alloc137 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00v\01\00\00\11\00\00\00" }>, align 8
@alloc139 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00w\01\00\00\11\00\00\00" }>, align 8
@alloc141 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00~\01\00\00\0D\00\00\00" }>, align 8
@alloc143 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [49 x i8] }>, <{ [49 x i8] }>* @alloc142, i32 0, i32 0, i32 0), [16 x i8] c"1\00\00\00\00\00\00\00\84\01\00\00\0D\00\00\00" }>, align 8
@vtable.4 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3169881d36a0abf7E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h734a4646a20be0e3E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h66be39c909e5aad3E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h66be39c909e5aad3E" to i8*), [0 x i8] zeroinitializer }>, align 8
@alloc149 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc150 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/core/src/fmt/mod.rs" }>, align 1
@alloc151 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc150, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00k\01\00\00\0D\00\00\00" }>, align 8
@alloc152 = private unnamed_addr constant <{ [80 x i8] }> <{ [80 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/core/src/alloc/layout.rs" }>, align 1
@alloc153 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [80 x i8] }>, <{ [80 x i8] }>* @alloc152, i32 0, i32 0, i32 0), [16 x i8] c"P\00\00\00\00\00\00\00\98\01\00\00\1A\00\00\00" }>, align 8
@alloc154 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.5 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, [0 x i8] }> <{ i8* bitcast (void (%"core::alloc::layout::LayoutError"*)* @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h0de9862122333e31E" to i8*), [16 x i8] c"\00\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00", i8* bitcast (i1 (%"core::alloc::layout::LayoutError"*, %"core::fmt::Formatter"*)* @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h904faa326d3b1c4fE" to i8*), [0 x i8] zeroinitializer }>, align 8
@0 = private unnamed_addr constant <{ [16 x i8] }> <{ [16 x i8] c"\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@alloc162 = private unnamed_addr constant <{ [74 x i8] }> <{ [74 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/alloc/src/alloc.rs" }>, align 1
@alloc159 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\AA\00\00\00\1B\00\00\00" }>, align 8
@alloc161 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\CA\00\00\00\1B\00\00\00" }>, align 8
@alloc163 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [74 x i8] }>, <{ [74 x i8] }>* @alloc162, i32 0, i32 0, i32 0), [16 x i8] c"J\00\00\00\00\00\00\00\D7\00\00\00\1F\00\00\00" }>, align 8
@alloc172 = private unnamed_addr constant <{ [76 x i8] }> <{ [76 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/alloc/src/raw_vec.rs" }>, align 1
@alloc165 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\C8\01\00\00\16\00\00\00" }>, align 8
@alloc167 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\CA\01\00\00\05\00\00\00" }>, align 8
@alloc169 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\87\01\00\00\1C\00\00\00" }>, align 8
@alloc171 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00\91\01\00\00\13\00\00\00" }>, align 8
@alloc173 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [76 x i8] }>, <{ [76 x i8] }>* @alloc172, i32 0, i32 0, i32 0), [16 x i8] c"L\00\00\00\00\00\00\00m\01\00\00\09\00\00\00" }>, align 8
@alloc174 = private unnamed_addr constant <{ [45 x i8] }> <{ [45 x i8] c"TRY ALLOCATION FAIL, LOCATION: try_test_oom()" }>, align 1
@alloc175 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"src/bin/main.rs" }>, align 1
@alloc176 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc175, i32 0, i32 0, i32 0), [16 x i8] c"\0F\00\00\00\00\00\00\007\00\00\00\03\00\00\00" }>, align 8
@alloc13 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"\0D\00\00\00" }>, align 4
@alloc24 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc23 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc27 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"TEST OVER\0A" }>, align 1
@alloc28 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc27, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
@_ZN4main9ALLOCATOR17h56f8533d4994829eE = internal constant <{ i8*, [4088 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc4, i32 0, i32 0, i32 0), [4088 x i8] undef }>, align 4096

; <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::alloc
; Function Attrs: nonlazybind uwtable
define internal i8* @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hdfbdbbb7792b424aE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %_78 = alloca %"core::fmt::Arguments", align 8
  %current1 = alloca %"OOMGuardAllocator::MyPage"*, align 8
  %_32 = alloca %"core::fmt::Arguments", align 8
  %past = alloca %"OOMGuardAllocator::MyPage"*, align 8
  %current = alloca %"OOMGuardAllocator::MyPage"*, align 8
  %ret_ptr = alloca i8*, align 8
  %i = alloca i64, align 8
  %4 = alloca i8*, align 8
  %layout = alloca { i64, i64 }, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %6, align 8
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::get_flag
  %_4 = call zeroext i1 @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$8get_flag17h014aeefe6d791b7bE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = xor i1 %_4, true
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::alloc::layout::Layout::size
  %_10 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  %7 = bitcast %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* %self to %"std::alloc::System"**
  %_6 = load %"std::alloc::System"*, %"std::alloc::System"** %7, align 4096, !nonnull !3
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_7.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_7.1 = load i64, i64* %9, align 8, !range !4
; call std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::alloc
  %10 = call i8* @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$5alloc17h8c2d5bf582c5184aE"(%"std::alloc::System"* nonnull align 1 %_6, i64 %_7.0, i64 %_7.1)
  store i8* %10, i8** %4, align 8
  br label %bb54

bb54:                                             ; preds = %bb27, %bb53, %bb2
  %11 = load i8*, i8** %4, align 8
  ret i8* %11

bb4:                                              ; preds = %bb3
  %12 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_10, i64 1)
  %_12.0 = extractvalue { i64, i1 } %12, 0
  %_12.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_12.1, i1 false)
  br i1 %13, label %panic, label %bb5

bb5:                                              ; preds = %bb4
; call OOMGuardAllocator::cal_tools::find_block
  %14 = call i64 @_ZN17OOMGuardAllocator9cal_tools10find_block17h27b93b27ace7baf8E(i64 %_12.0)
  store i64 %14, i64* %i, align 8
  br label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc72 to %"core::panic::location::Location"*)) #14
  unreachable

bb6:                                              ; preds = %bb5
  store i8* null, i8** %ret_ptr, align 8
  %_14 = load i64, i64* %i, align 8
  %15 = icmp eq i64 %_14, 8
  br i1 %15, label %bb7, label %bb29

bb7:                                              ; preds = %bb6
; call core::alloc::layout::Layout::size
  %_17 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb8

bb29:                                             ; preds = %bb6
  %_71 = load i64, i64* %i, align 8
  %_73 = icmp ult i64 %_71, 9
  %16 = call i1 @llvm.expect.i1(i1 %_73, i1 true)
  br i1 %16, label %bb30, label %panic2

bb30:                                             ; preds = %bb29
  %17 = getelementptr inbounds [9 x { i64*, i64 }], [9 x { i64*, i64 }]* @_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E, i64 0, i64 %_71
  %18 = bitcast { i64*, i64 }* %17 to %"OOMGuardAllocator::MyPage"**
  %19 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %18, align 8
  store %"OOMGuardAllocator::MyPage"* %19, %"OOMGuardAllocator::MyPage"** %current1, align 8
  br label %bb31

panic2:                                           ; preds = %bb29
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_71, i64 9, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc74 to %"core::panic::location::Location"*)) #14
  unreachable

bb31:                                             ; preds = %bb40, %bb37, %bb30
  %_75 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %_74 = icmp eq %"OOMGuardAllocator::MyPage"* %_75, null
  br i1 %_74, label %bb32, label %bb38

bb38:                                             ; preds = %bb31
  %_94 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %20 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_94, i32 0, i32 2
  %_93 = load i64, i64* %20, align 8
  %21 = icmp eq i64 %_93, 999
  br i1 %21, label %bb40, label %bb39

bb32:                                             ; preds = %bb31
  %_77 = load i64, i64* %i, align 8
  %22 = icmp eq i64 %_77, 8
  br i1 %22, label %bb33, label %bb35

bb33:                                             ; preds = %bb32
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_78, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc57 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc4 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb34

bb35:                                             ; preds = %bb32
  %_86 = load i64, i64* %i, align 8
  %23 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_86, i64 1)
  %_87.0 = extractvalue { i64, i1 } %23, 0
  %_87.1 = extractvalue { i64, i1 } %23, 1
  %24 = call i1 @llvm.expect.i1(i1 %_87.1, i1 false)
  br i1 %24, label %panic3, label %bb36

bb36:                                             ; preds = %bb35
  store i64 %_87.0, i64* %i, align 8
  %_90 = load i64, i64* %i, align 8
  %_92 = icmp ult i64 %_90, 9
  %25 = call i1 @llvm.expect.i1(i1 %_92, i1 true)
  br i1 %25, label %bb37, label %panic4

panic3:                                           ; preds = %bb35
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc76 to %"core::panic::location::Location"*)) #14
  unreachable

bb37:                                             ; preds = %bb36
  %26 = getelementptr inbounds [9 x { i64*, i64 }], [9 x { i64*, i64 }]* @_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E, i64 0, i64 %_90
  %27 = bitcast { i64*, i64 }* %26 to %"OOMGuardAllocator::MyPage"**
  %_88 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %27, align 8
  store %"OOMGuardAllocator::MyPage"* %_88, %"OOMGuardAllocator::MyPage"** %current1, align 8
  br label %bb31

panic4:                                           ; preds = %bb36
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_90, i64 9, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc78 to %"core::panic::location::Location"*)) #14
  unreachable

bb34:                                             ; preds = %bb33
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h8bc989e1fc10c635E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_78, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc80 to %"core::panic::location::Location"*)) #14
  unreachable

bb40:                                             ; preds = %bb38
  %28 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %29 = bitcast %"OOMGuardAllocator::MyPage"* %28 to %"OOMGuardAllocator::MyPage"**
  %_134 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %29, align 8
  store %"OOMGuardAllocator::MyPage"* %_134, %"OOMGuardAllocator::MyPage"** %current1, align 8
  br label %bb31

bb39:                                             ; preds = %bb38
  %_95 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %30 = bitcast %"OOMGuardAllocator::MyPage"* %_95 to i8*
  store i8* %30, i8** %ret_ptr, align 8
  %_99 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %_101 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %31 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_101, i32 0, i32 2
  %_100 = load i64, i64* %31, align 8
  %_103 = icmp ult i64 %_100, 256
  %32 = call i1 @llvm.expect.i1(i1 %_103, i1 true)
  br i1 %32, label %bb41, label %panic5

bb41:                                             ; preds = %bb39
  %33 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_99, i32 0, i32 4
  %34 = getelementptr inbounds [256 x i8], [256 x i8]* %33, i64 0, i64 %_100
  %_98 = load i8, i8* %34, align 1
  %_97 = zext i8 %_98 to i64
  %_106 = load i64, i64* %i, align 8
  %_108 = icmp ult i64 %_106, 9
  %35 = call i1 @llvm.expect.i1(i1 %_108, i1 true)
  br i1 %35, label %bb42, label %panic6

panic5:                                           ; preds = %bb39
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_100, i64 256, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc82 to %"core::panic::location::Location"*)) #14
  unreachable

bb42:                                             ; preds = %bb41
  %36 = getelementptr inbounds [9 x { i64*, i64 }], [9 x { i64*, i64 }]* @_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E, i64 0, i64 %_106
  %37 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %36, i32 0, i32 1
  %_104 = load i64, i64* %37, align 8
  %38 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_97, i64 %_104)
  %_109.0 = extractvalue { i64, i1 } %38, 0
  %_109.1 = extractvalue { i64, i1 } %38, 1
  %39 = call i1 @llvm.expect.i1(i1 %_109.1, i1 false)
  br i1 %39, label %panic7, label %bb43

panic6:                                           ; preds = %bb41
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_106, i64 9, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc84 to %"core::panic::location::Location"*)) #14
  unreachable

bb43:                                             ; preds = %bb42
  %_112 = load i64, i64* %i, align 8
  %_114 = icmp ult i64 %_112, 8
  %40 = call i1 @llvm.expect.i1(i1 %_114, i1 true)
  br i1 %40, label %bb44, label %panic8

panic7:                                           ; preds = %bb42
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc86 to %"core::panic::location::Location"*)) #14
  unreachable

bb44:                                             ; preds = %bb43
  %41 = getelementptr inbounds [8 x i64], [8 x i64]* @_ZN17OOMGuardAllocator11MyblocksNum17ha104d8890128a2f9E, i64 0, i64 %_112
  %_110 = load i64, i64* %41, align 8
  %42 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %_110, i64 1)
  %_115.0 = extractvalue { i64, i1 } %42, 0
  %_115.1 = extractvalue { i64, i1 } %42, 1
  %43 = call i1 @llvm.expect.i1(i1 %_115.1, i1 false)
  br i1 %43, label %panic9, label %bb45

panic8:                                           ; preds = %bb43
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_112, i64 8, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc88 to %"core::panic::location::Location"*)) #14
  unreachable

bb45:                                             ; preds = %bb44
  %_117 = load i64, i64* %i, align 8
  %_119 = icmp ult i64 %_117, 8
  %44 = call i1 @llvm.expect.i1(i1 %_119, i1 true)
  br i1 %44, label %bb46, label %panic10

panic9:                                           ; preds = %bb44
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc88 to %"core::panic::location::Location"*)) #14
  unreachable

bb46:                                             ; preds = %bb45
  %45 = getelementptr inbounds [8 x i64], [8 x i64]* @_ZN17OOMGuardAllocator11MyblocksNum17ha104d8890128a2f9E, i64 0, i64 %_117
  store i64 %_115.0, i64* %45, align 8
  %_121 = load i8*, i8** %ret_ptr, align 8
  br label %bb47

panic10:                                          ; preds = %bb45
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_117, i64 8, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc90 to %"core::panic::location::Location"*)) #14
  unreachable

bb47:                                             ; preds = %bb46
  %46 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_109.0, i64 288)
  %_125.0 = extractvalue { i64, i1 } %46, 0
  %_125.1 = extractvalue { i64, i1 } %46, 1
  %47 = call i1 @llvm.expect.i1(i1 %_125.1, i1 false)
  br i1 %47, label %panic11, label %bb48

bb48:                                             ; preds = %bb47
  %48 = getelementptr inbounds i8, i8* %_121, i64 %_125.0
  store i8* %48, i8** %3, align 8
  %_3.i = load i8*, i8** %3, align 8
  br label %bb49

panic11:                                          ; preds = %bb47
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc92 to %"core::panic::location::Location"*)) #14
  unreachable

bb49:                                             ; preds = %bb48
  store i8* %_3.i, i8** %ret_ptr, align 8
  %_126 = udiv i64 %_109.0, 16
  %_128 = load i8*, i8** %ret_ptr, align 8
  %49 = trunc i64 %_126 to i8
  store i8 %49, i8* %_128, align 1
  %_130 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %50 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_130, i32 0, i32 2
  %_129 = load i64, i64* %50, align 8
  %51 = icmp eq i64 %_129, 0
  br i1 %51, label %bb50, label %bb51

bb50:                                             ; preds = %bb49
  %_131 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %52 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_131, i32 0, i32 2
  store i64 999, i64* %52, align 8
  br label %bb53

bb51:                                             ; preds = %bb49
  %_132 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current1, align 8
  %53 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_132, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = call { i64, i1 } @llvm.usub.with.overflow.i64(i64 %54, i64 1)
  %_133.0 = extractvalue { i64, i1 } %55, 0
  %_133.1 = extractvalue { i64, i1 } %55, 1
  %56 = call i1 @llvm.expect.i1(i1 %_133.1, i1 false)
  br i1 %56, label %panic12, label %bb52

bb52:                                             ; preds = %bb51
  %57 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_132, i32 0, i32 2
  store i64 %_133.0, i64* %57, align 8
  br label %bb53

panic12:                                          ; preds = %bb51
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([33 x i8]* @str.2 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc94 to %"core::panic::location::Location"*)) #14
  unreachable

bb53:                                             ; preds = %bb50, %bb52
  %_135 = load i8*, i8** %ret_ptr, align 8
  %58 = getelementptr inbounds i8, i8* %_135, i64 1
  store i8* %58, i8** %2, align 8
  %_3.i15 = load i8*, i8** %2, align 8
  store i8* %_3.i15, i8** %4, align 8
  br label %bb54

bb8:                                              ; preds = %bb7
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_alloc
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$12update_alloc17hf78fd44323c8cfb8E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_17)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::alloc::layout::Layout::size
  %_21 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb10

bb10:                                             ; preds = %bb9
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg17h2b68f1ec5def827dE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_21, i64 1)
  br label %bb11

bb11:                                             ; preds = %bb10
  %_25 = load i64, i64* %i, align 8
  %_27 = icmp ult i64 %_25, 9
  %59 = call i1 @llvm.expect.i1(i1 %_27, i1 true)
  br i1 %59, label %bb12, label %panic13

bb12:                                             ; preds = %bb11
  %60 = getelementptr inbounds [9 x { i64*, i64 }], [9 x { i64*, i64 }]* @_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E, i64 0, i64 %_25
  %61 = bitcast { i64*, i64 }* %60 to %"OOMGuardAllocator::MyPage"**
  %62 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %61, align 8
  store %"OOMGuardAllocator::MyPage"* %62, %"OOMGuardAllocator::MyPage"** %current, align 8
  %63 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  store %"OOMGuardAllocator::MyPage"* %63, %"OOMGuardAllocator::MyPage"** %past, align 8
  br label %bb13

panic13:                                          ; preds = %bb11
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_25, i64 9, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc96 to %"core::panic::location::Location"*)) #14
  unreachable

bb13:                                             ; preds = %bb28, %bb12
  %_30 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  br label %bb14

bb14:                                             ; preds = %bb13
  %_29 = icmp eq %"OOMGuardAllocator::MyPage"* %_30, null
  br i1 %_29, label %bb15, label %bb17

bb17:                                             ; preds = %bb14
  %_42 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %64 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_42, i32 0, i32 1
  %_41 = load i64, i64* %64, align 8
; call core::alloc::layout::Layout::size
  %_43 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb18

bb15:                                             ; preds = %bb14
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_32, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc52 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc4 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb16

bb16:                                             ; preds = %bb15
; call core::panicking::panic_fmt
  call void @_ZN4core9panicking9panic_fmt17h8bc989e1fc10c635E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_32, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc98 to %"core::panic::location::Location"*)) #14
  unreachable

bb18:                                             ; preds = %bb17
  %_40 = icmp uge i64 %_41, %_43
  br i1 %_40, label %bb19, label %bb28

bb28:                                             ; preds = %bb18
  %_67 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  store %"OOMGuardAllocator::MyPage"* %_67, %"OOMGuardAllocator::MyPage"** %past, align 8
  %65 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %66 = bitcast %"OOMGuardAllocator::MyPage"* %65 to %"OOMGuardAllocator::MyPage"**
  %_68 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %66, align 8
  store %"OOMGuardAllocator::MyPage"* %_68, %"OOMGuardAllocator::MyPage"** %current, align 8
  br label %bb13

bb19:                                             ; preds = %bb18
  %_46 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %67 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %_46, i32 0, i32 2
  %_45 = load i64, i64* %67, align 8
  %68 = inttoptr i64 %_45 to i8*
  store i8* %68, i8** %ret_ptr, align 8
  %_48 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %past, align 8
  %_49 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %_47 = icmp eq %"OOMGuardAllocator::MyPage"* %_48, %_49
  br i1 %_47, label %bb20, label %bb22

bb22:                                             ; preds = %bb19
  %69 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %70 = bitcast %"OOMGuardAllocator::MyPage"* %69 to %"OOMGuardAllocator::MyPage"**
  %_58 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %70, align 8
  %71 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %past, align 8
  %72 = bitcast %"OOMGuardAllocator::MyPage"* %71 to %"OOMGuardAllocator::MyPage"**
  store %"OOMGuardAllocator::MyPage"* %_58, %"OOMGuardAllocator::MyPage"** %72, align 8
  br label %bb23

bb20:                                             ; preds = %bb19
  %73 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %74 = bitcast %"OOMGuardAllocator::MyPage"* %73 to %"OOMGuardAllocator::MyPage"**
  %_50 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %74, align 8
  %_55 = load i64, i64* %i, align 8
  %_57 = icmp ult i64 %_55, 9
  %75 = call i1 @llvm.expect.i1(i1 %_57, i1 true)
  br i1 %75, label %bb21, label %panic14

bb21:                                             ; preds = %bb20
  %_53 = getelementptr inbounds [9 x { i64*, i64 }], [9 x { i64*, i64 }]* @_ZN17OOMGuardAllocator7MyPages17h88e9f62e421a8614E, i64 0, i64 %_55
  %76 = bitcast { i64*, i64 }* %_53 to %"OOMGuardAllocator::MyPage"**
  store %"OOMGuardAllocator::MyPage"* %_50, %"OOMGuardAllocator::MyPage"** %76, align 8
  br label %bb23

panic14:                                          ; preds = %bb20
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_55, i64 9, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc100 to %"core::panic::location::Location"*)) #14
  unreachable

bb23:                                             ; preds = %bb22, %bb21
  br label %bb24

bb24:                                             ; preds = %bb23
; call core::alloc::layout::Layout::from_size_align
  %77 = call { i64, i64 } @_ZN4core5alloc6layout6Layout15from_size_align17h7a85f533126cfbc4E(i64 288, i64 16)
  %_60.0 = extractvalue { i64, i64 } %77, 0
  %_60.1 = extractvalue { i64, i64 } %77, 1
  br label %bb25

bb25:                                             ; preds = %bb24
; call core::result::Result<T,E>::unwrap
  %78 = call { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9ee8ea14ba9ea516E"(i64 %_60.0, i64 %_60.1, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc102 to %"core::panic::location::Location"*))
  %a.0 = extractvalue { i64, i64 } %78, 0
  %a.1 = extractvalue { i64, i64 } %78, 1
  br label %bb26

bb26:                                             ; preds = %bb25
  %79 = bitcast %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* %self to %"std::alloc::System"**
  %_63 = load %"std::alloc::System"*, %"std::alloc::System"** %79, align 4096, !nonnull !3
  %_65 = load %"OOMGuardAllocator::MyPage"*, %"OOMGuardAllocator::MyPage"** %current, align 8
  %_64 = bitcast %"OOMGuardAllocator::MyPage"* %_65 to i8*
; call std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::dealloc
  call void @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$7dealloc17hda33867e6eaf4794E"(%"std::alloc::System"* nonnull align 1 %_63, i8* %_64, i64 %a.0, i64 %a.1)
  br label %bb27

bb27:                                             ; preds = %bb26
  %80 = load i8*, i8** %ret_ptr, align 8
  store i8* %80, i8** %4, align 8
  br label %bb54
}

; <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::dealloc
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h4d23b83042d59d83E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i8* %ptr, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::get_flag
  %_5 = call zeroext i1 @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$8get_flag17h014aeefe6d791b7bE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_4 = xor i1 %_5, true
  br i1 %_4, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
; call core::alloc::layout::Layout::size
  %_12 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* %self to %"std::alloc::System"**
  %_7 = load %"std::alloc::System"*, %"std::alloc::System"** %4, align 4096, !nonnull !3
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_9.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_9.1 = load i64, i64* %6, align 8, !range !4
; call std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::dealloc
  call void @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$7dealloc17hda33867e6eaf4794E"(%"std::alloc::System"* nonnull align 1 %_7, i8* %ptr, i64 %_9.0, i64 %_9.1)
  br label %bb30

bb30:                                             ; preds = %bb29, %bb10, %bb2
  ret void

bb4:                                              ; preds = %bb3
  %7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_12, i64 1)
  %_14.0 = extractvalue { i64, i1 } %7, 0
  %_14.1 = extractvalue { i64, i1 } %7, 1
  %8 = call i1 @llvm.expect.i1(i1 %_14.1, i1 false)
  br i1 %8, label %panic, label %bb5

bb5:                                              ; preds = %bb4
  %_10 = icmp ugt i64 %_14.0, 2048
  br i1 %_10, label %bb6, label %bb11

panic:                                            ; preds = %bb4
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc104 to %"core::panic::location::Location"*)) #14
  unreachable

bb11:                                             ; preds = %bb5
; call core::ptr::mut_ptr::<impl *mut T>::sub
  %true_ptr = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3sub17hb93871a1ed7145faE"(i8* %ptr, i64 1)
  br label %bb12

bb6:                                              ; preds = %bb5
  %9 = bitcast %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* %self to %"std::alloc::System"**
  %_16 = load %"std::alloc::System"*, %"std::alloc::System"** %9, align 4096, !nonnull !3
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_18.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_18.1 = load i64, i64* %11, align 8, !range !4
; call std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::dealloc
  call void @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$7dealloc17hda33867e6eaf4794E"(%"std::alloc::System"* nonnull align 1 %_16, i8* %ptr, i64 %_18.0, i64 %_18.1)
  br label %bb7

bb7:                                              ; preds = %bb6
; call core::alloc::layout::Layout::size
  %_21 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb8

bb8:                                              ; preds = %bb7
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_dealloc
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$14update_dealloc17h347f9497c315ff58E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_21)
  br label %bb9

bb9:                                              ; preds = %bb8
; call core::alloc::layout::Layout::size
  %_25 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb10

bb10:                                             ; preds = %bb9
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg17h2b68f1ec5def827dE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_25, i64 2)
  br label %bb30

bb12:                                             ; preds = %bb11
  %_31 = load i8, i8* %true_ptr, align 1
  %_30 = zext i8 %_31 to i64
  %12 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %_30, i64 16)
  %_33.0 = extractvalue { i64, i1 } %12, 0
  %_33.1 = extractvalue { i64, i1 } %12, 1
  %13 = call i1 @llvm.expect.i1(i1 %_33.1, i1 false)
  br i1 %13, label %panic1, label %bb13

bb13:                                             ; preds = %bb12
  br label %bb14

panic1:                                           ; preds = %bb12
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([33 x i8]* @str.1 to [0 x i8]*), i64 33, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc106 to %"core::panic::location::Location"*)) #14
  unreachable

bb14:                                             ; preds = %bb13
  %14 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 288, i64 %_33.0)
  %_40.0 = extractvalue { i64, i1 } %14, 0
  %_40.1 = extractvalue { i64, i1 } %14, 1
  %15 = call i1 @llvm.expect.i1(i1 %_40.1, i1 false)
  br i1 %15, label %panic2, label %bb15

bb15:                                             ; preds = %bb14
; call core::ptr::mut_ptr::<impl *mut T>::sub
  %_35 = call i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3sub17hb93871a1ed7145faE"(i8* %true_ptr, i64 %_40.0)
  br label %bb16

panic2:                                           ; preds = %bb14
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*)) #14
  unreachable

bb16:                                             ; preds = %bb15
  %current = bitcast i8* %_35 to %"OOMGuardAllocator::MyPage"*
  %16 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 1
  %size_class = load i64, i64* %16, align 8
; call OOMGuardAllocator::cal_tools::find_block
  %i = call i64 @_ZN17OOMGuardAllocator9cal_tools10find_block17h27b93b27ace7baf8E(i64 %size_class)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_49 = icmp ult i64 %i, 8
  %17 = call i1 @llvm.expect.i1(i1 %_49, i1 true)
  br i1 %17, label %bb18, label %panic3

bb18:                                             ; preds = %bb17
  %18 = getelementptr inbounds [8 x i64], [8 x i64]* @_ZN17OOMGuardAllocator11MyblocksNum17ha104d8890128a2f9E, i64 0, i64 %i
  %_45 = load i64, i64* %18, align 8
  %19 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %_45, i64 1)
  %_50.0 = extractvalue { i64, i1 } %19, 0
  %_50.1 = extractvalue { i64, i1 } %19, 1
  %20 = call i1 @llvm.expect.i1(i1 %_50.1, i1 false)
  br i1 %20, label %panic4, label %bb19

panic3:                                           ; preds = %bb17
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %i, i64 8, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #14
  unreachable

bb19:                                             ; preds = %bb18
  %_54 = icmp ult i64 %i, 8
  %21 = call i1 @llvm.expect.i1(i1 %_54, i1 true)
  br i1 %21, label %bb20, label %panic5

panic4:                                           ; preds = %bb18
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc110 to %"core::panic::location::Location"*)) #14
  unreachable

bb20:                                             ; preds = %bb19
  %22 = getelementptr inbounds [8 x i64], [8 x i64]* @_ZN17OOMGuardAllocator11MyblocksNum17ha104d8890128a2f9E, i64 0, i64 %i
  store i64 %_50.0, i64* %22, align 8
  %23 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 2
  %_55 = load i64, i64* %23, align 8
  %24 = icmp eq i64 %_55, 999
  br i1 %24, label %bb21, label %bb22

panic5:                                           ; preds = %bb19
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %i, i64 8, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc112 to %"core::panic::location::Location"*)) #14
  unreachable

bb21:                                             ; preds = %bb20
  %25 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 2
  store i64 0, i64* %25, align 8
  br label %bb24

bb22:                                             ; preds = %bb20
  %26 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %27, i64 1)
  %_59.0 = extractvalue { i64, i1 } %28, 0
  %_59.1 = extractvalue { i64, i1 } %28, 1
  %29 = call i1 @llvm.expect.i1(i1 %_59.1, i1 false)
  br i1 %29, label %panic6, label %bb23

bb23:                                             ; preds = %bb22
  %30 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 2
  store i64 %_59.0, i64* %30, align 8
  br label %bb24

panic6:                                           ; preds = %bb22
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc114 to %"core::panic::location::Location"*)) #14
  unreachable

bb24:                                             ; preds = %bb21, %bb23
  %_63 = icmp eq i64 %size_class, 0
  %31 = call i1 @llvm.expect.i1(i1 %_63, i1 false)
  br i1 %31, label %panic7, label %bb25

bb25:                                             ; preds = %bb24
  %_60 = udiv i64 %_33.0, %size_class
  %32 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 2
  %_65 = load i64, i64* %32, align 8
  %_68 = icmp ult i64 %_65, 256
  %33 = call i1 @llvm.expect.i1(i1 %_68, i1 true)
  br i1 %33, label %bb26, label %panic8

panic7:                                           ; preds = %bb24
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([25 x i8]* @str.3 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc116 to %"core::panic::location::Location"*)) #14
  unreachable

bb26:                                             ; preds = %bb25
  %34 = getelementptr inbounds %"OOMGuardAllocator::MyPage", %"OOMGuardAllocator::MyPage"* %current, i32 0, i32 4
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %34, i64 0, i64 %_65
  %36 = trunc i64 %_60 to i8
  store i8 %36, i8* %35, align 1
; call core::alloc::layout::Layout::size
  %_71 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb27

panic8:                                           ; preds = %bb25
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_65, i64 256, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc118 to %"core::panic::location::Location"*)) #14
  unreachable

bb27:                                             ; preds = %bb26
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_dealloc
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$14update_dealloc17h347f9497c315ff58E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_71)
  br label %bb28

bb28:                                             ; preds = %bb27
; call core::alloc::layout::Layout::size
  %_75 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb29

bb29:                                             ; preds = %bb28
; call OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg
  call void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg17h2b68f1ec5def827dE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_75, i64 2)
  br label %bb30
}

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf4f1b09c6389eedbE"(i8* nonnull %unique) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6ff67cc14f4bcfdE"(i8* nonnull %unique)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hc611ba2cc75f2d5dE"(i64 %kind.0, i64 %kind.1) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %kind.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %kind.1, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h151ee79a3a4d8753E"(%"core::panic::location::Location"* align 8 dereferenceable(24) %0) unnamed_addr #1 {
start:
  %1 = alloca { i8*, i64 }, align 8
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb0fce1286b6482f3E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"*
  %3 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, core::alloc::AllocError>::Err"* %2 to %"core::alloc::AllocError"*
  %4 = bitcast { i8*, i64 }* %1 to {}**
  store {}* null, {}** %4, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { i8*, i64 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1670b051f84546dcE"(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 dereferenceable(24) %3) unnamed_addr #1 {
start:
  %_3 = alloca %myError, align 8
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8
; call <main::myError as core::convert::From<alloc::collections::TryReserveError>>::from
  call void @"_ZN96_$LT$main..myError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveError$GT$$GT$4from17hda4eee8c92735da6E"(%myError* noalias nocapture sret(%myError) dereferenceable(24) %_3, i64 %e.0, i64 %e.1)
  br label %bb1

bb1:                                              ; preds = %start
  %8 = bitcast %"core::result::Result<(), myError>"* %0 to %"core::result::Result<(), myError>::Err"*
  %9 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %8, i32 0, i32 1
  %10 = bitcast %myError* %9 to i8*
  %11 = bitcast %myError* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  %12 = bitcast %"core::result::Result<(), myError>"* %0 to i64*
  store i64 1, i64* %12, align 8
  ret void
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1851a1c4c812dc87E"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 dereferenceable(24) %3) unnamed_addr #1 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8
; call <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hc611ba2cc75f2d5dE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h32ef10f93be18603E"(%"core::panic::location::Location"* align 8 dereferenceable(24) %0) unnamed_addr #1 {
start:
  %1 = alloca { i64, i64 }, align 8
; call <T as core::convert::From<T>>::from
  call void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hce57051ac29056b0E"()
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64 }* %1 to %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"*
  %3 = bitcast %"core::result::Result<core::alloc::layout::Layout, core::alloc::layout::LayoutError>::Err"* %2 to %"core::alloc::layout::LayoutError"*
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { i64, i64 } undef, i64 %6, 0
  %10 = insertvalue { i64, i64 } %9, i64 %8, 1
  ret { i64, i64 } %10
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4e02be61d6ad9010E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 dereferenceable(24) %3) unnamed_addr #1 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8
; call <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
  %8 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hc611ba2cc75f2d5dE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h86cef55cf43495fbE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 dereferenceable(24) %3) unnamed_addr #1 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8
; call <T as core::convert::From<T>>::from
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h095f4a623198a9daE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc86798ba63cd3843E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %1, i64 %2, %"core::panic::location::Location"* align 8 dereferenceable(24) %3) unnamed_addr #1 {
start:
  %residual = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  store i64 %1, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  store i64 %2, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 0
  %e.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %residual, i32 0, i32 1
  %e.1 = load i64, i64* %7, align 8
; call <T as core::convert::From<T>>::from
  %8 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h095f4a623198a9daE"(i64 %e.0, i64 %e.1)
  %_3.0 = extractvalue { i64, i64 } %8, 0
  %_3.1 = extractvalue { i64, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %10 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %9, i32 0, i32 1
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %10, i32 0, i32 1
  store i64 %_3.1, i64* %12, align 8
  %13 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %13, align 8
  ret void
}

; OOMGuardAllocator::my_wrap_end
; Function Attrs: nonlazybind uwtable
define internal void @_ZN17OOMGuardAllocator11my_wrap_end17he1c7b92d2013443fE(%AA** align 8 dereferenceable(8) %a) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; OOMGuardAllocator::with_counter
; Function Attrs: nonlazybind uwtable
define internal void @_ZN17OOMGuardAllocator12with_counter17h39045b077fadcb27E(i64* align 8 dereferenceable(8) %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %_5 = invoke %"OOMGuardAllocator::Count"* @get_thread_local()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_4 = bitcast %"OOMGuardAllocator::Count"* %_5 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
  store i8 0, i8* %_9, align 1
  %1 = bitcast i64** %_7 to %"core::cell::Cell<OOMGuardAllocator::Count>"**
  store %"core::cell::Cell<OOMGuardAllocator::Count>"* %_4, %"core::cell::Cell<OOMGuardAllocator::Count>"** %1, align 8
  %2 = load i64*, i64** %_7, align 8, !nonnull !3
  %3 = bitcast i64* %2 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
; invoke OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_dealloc::{{closure}}
  invoke void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$14update_dealloc28_$u7b$$u7b$closure$u7d$$u7d$17h443eb29da601ee0bE"(i64* align 8 dereferenceable(8) %f, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %3)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %4 = load i8, i8* %_9, align 1, !range !5
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; OOMGuardAllocator::with_counter
; Function Attrs: nonlazybind uwtable
define internal void @_ZN17OOMGuardAllocator12with_counter17h92bb8ef3f17a3b2dE(i64* align 8 dereferenceable(8) %f.0, i64* align 8 dereferenceable(8) %f.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %_5 = invoke %"OOMGuardAllocator::Count"* @get_thread_local()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_4 = bitcast %"OOMGuardAllocator::Count"* %_5 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
  store i8 0, i8* %_9, align 1
  %1 = bitcast i64** %_7 to %"core::cell::Cell<OOMGuardAllocator::Count>"**
  store %"core::cell::Cell<OOMGuardAllocator::Count>"* %_4, %"core::cell::Cell<OOMGuardAllocator::Count>"** %1, align 8
  %2 = load i64*, i64** %_7, align 8, !nonnull !3
  %3 = bitcast i64* %2 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
; invoke OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg::{{closure}}
  invoke void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg28_$u7b$$u7b$closure$u7d$$u7d$17h8bda33a68408d889E"(i64* align 8 dereferenceable(8) %f.0, i64* align 8 dereferenceable(8) %f.1, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %3)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %4 = load i8, i8* %_9, align 1, !range !5
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; OOMGuardAllocator::with_counter
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @_ZN17OOMGuardAllocator12with_counter17h9d1e95f3ae6bf9c4E() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %_5 = invoke %"OOMGuardAllocator::Count"* @get_thread_local()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_4 = bitcast %"OOMGuardAllocator::Count"* %_5 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
  store i8 0, i8* %_9, align 1
  %1 = bitcast i64** %_7 to %"core::cell::Cell<OOMGuardAllocator::Count>"**
  store %"core::cell::Cell<OOMGuardAllocator::Count>"* %_4, %"core::cell::Cell<OOMGuardAllocator::Count>"** %1, align 8
  %2 = load i64*, i64** %_7, align 8, !nonnull !3
  %3 = bitcast i64* %2 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
; invoke OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::get_flag::{{closure}}
  %4 = invoke zeroext i1 @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$8get_flag28_$u7b$$u7b$closure$u7d$$u7d$17ha4c259d4b06e8087E"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %3)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %5 = load i8, i8* %_9, align 1, !range !5
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  ret i1 %4

bb3:                                              ; preds = %bb4, %bb5
  %12 = bitcast { i8*, i32 }* %0 to i8**
  %13 = load i8*, i8** %12, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = insertvalue { i8*, i32 } undef, i8* %13, 0
  %17 = insertvalue { i8*, i32 } %16, i32 %15, 1
  resume { i8*, i32 } %17

bb4:                                              ; preds = %bb5
  br label %bb3
}

; OOMGuardAllocator::with_counter
; Function Attrs: nonlazybind uwtable
define internal void @_ZN17OOMGuardAllocator12with_counter17h9d541fd6bca86c55E(i64* align 8 dereferenceable(8) %f) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %_5 = invoke %"OOMGuardAllocator::Count"* @get_thread_local()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_4 = bitcast %"OOMGuardAllocator::Count"* %_5 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
  store i8 0, i8* %_9, align 1
  %1 = bitcast i64** %_7 to %"core::cell::Cell<OOMGuardAllocator::Count>"**
  store %"core::cell::Cell<OOMGuardAllocator::Count>"* %_4, %"core::cell::Cell<OOMGuardAllocator::Count>"** %1, align 8
  %2 = load i64*, i64** %_7, align 8, !nonnull !3
  %3 = bitcast i64* %2 to %"core::cell::Cell<OOMGuardAllocator::Count>"*
; invoke OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_alloc::{{closure}}
  invoke void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$12update_alloc28_$u7b$$u7b$closure$u7d$$u7d$17h066346adec956e86E"(i64* align 8 dereferenceable(8) %f, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %3)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  %4 = load i8, i8* %_9, align 1, !range !5
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb4, label %bb3

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb4, %bb5
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb4:                                              ; preds = %bb5
  br label %bb3
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg17h2b68f1ec5def827dE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %_5 = alloca { i64*, i64* }, align 8
  %flag = alloca i64, align 8
  %size = alloca i64, align 8
  store i64 %0, i64* %size, align 8
  store i64 %1, i64* %flag, align 8
  %2 = bitcast { i64*, i64* }* %_5 to i64**
  store i64* %flag, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 1
  store i64* %size, i64** %3, align 8
  %4 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8, !nonnull !3
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_5, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !3
; call OOMGuardAllocator::with_counter
  call void @_ZN17OOMGuardAllocator12with_counter17h92bb8ef3f17a3b2dE(i64* align 8 dereferenceable(8) %5, i64* align 8 dereferenceable(8) %7)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::record_msg::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$10record_msg28_$u7b$$u7b$closure$u7d$$u7d$17h8bda33a68408d889E"(i64* align 8 dereferenceable(8) %_1.0, i64* align 8 dereferenceable(8) %_1.1, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it) unnamed_addr #1 {
start:
; call core::cell::Cell<T>::get_mut
  %_5 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_5, i32 0, i32 7
  %_4 = load i64, i64* %0, align 8
  %_7 = icmp uge i64 %_4, 4096
  br i1 %_7, label %bb8, label %bb2

bb2:                                              ; preds = %bb1
  %_9 = load i64, i64* %_1.0, align 8
  %1 = icmp eq i64 %_9, 1
  br i1 %1, label %bb3, label %bb8

bb8:                                              ; preds = %bb7, %bb2, %bb1
  ret void

bb3:                                              ; preds = %bb2
  %_10 = load i64, i64* %_1.1, align 8
; call core::cell::Cell<T>::get_mut
  %_11 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_15 = icmp ult i64 %_4, 4096
  %2 = call i1 @llvm.expect.i1(i1 %_15, i1 true)
  br i1 %2, label %bb5, label %panic

bb5:                                              ; preds = %bb4
  %3 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_11, i32 0, i32 6
  %4 = getelementptr inbounds [4096 x i64], [4096 x i64]* %3, i64 0, i64 %_4
  store i64 %_10, i64* %4, align 8
; call core::cell::Cell<T>::get_mut
  %_16 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb6

panic:                                            ; preds = %bb4
; call core::panicking::panic_bounds_check
  call void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64 %_4, i64 4096, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc137 to %"core::panic::location::Location"*)) #14
  unreachable

bb6:                                              ; preds = %bb5
  %5 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_16, i32 0, i32 7
  %6 = load i64, i64* %5, align 8
  %7 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %6, i64 1)
  %_18.0 = extractvalue { i64, i1 } %7, 0
  %_18.1 = extractvalue { i64, i1 } %7, 1
  %8 = call i1 @llvm.expect.i1(i1 %_18.1, i1 false)
  br i1 %8, label %panic1, label %bb7

bb7:                                              ; preds = %bb6
  %9 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_16, i32 0, i32 7
  store i64 %_18.0, i64* %9, align 8
  br label %bb8

panic1:                                           ; preds = %bb6
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc139 to %"core::panic::location::Location"*)) #14
  unreachable
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_alloc
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$12update_alloc17hf78fd44323c8cfb8E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %0) unnamed_addr #0 {
start:
  %_4 = alloca i64*, align 8
  %size = alloca i64, align 8
  store i64 %0, i64* %size, align 8
  store i64* %size, i64** %_4, align 8
  %1 = load i64*, i64** %_4, align 8, !nonnull !3
; call OOMGuardAllocator::with_counter
  call void @_ZN17OOMGuardAllocator12with_counter17h9d541fd6bca86c55E(i64* align 8 dereferenceable(8) %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_alloc::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$12update_alloc28_$u7b$$u7b$closure$u7d$$u7d$17h066346adec956e86E"(i64* align 8 dereferenceable(8) %_1, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it) unnamed_addr #1 {
start:
  %_4 = load i64, i64* %_1, align 8
; call core::cell::Cell<T>::get_mut
  %_5 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"OOMGuardAllocator::Count"* %_5 to i64*
  %1 = load i64, i64* %0, align 8
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %_4)
  %_7.0 = extractvalue { i64, i1 } %2, 0
  %_7.1 = extractvalue { i64, i1 } %2, 1
  %3 = call i1 @llvm.expect.i1(i1 %_7.1, i1 false)
  br i1 %3, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast %"OOMGuardAllocator::Count"* %_5 to i64*
  store i64 %_7.0, i64* %4, align 8
  ret void

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc141 to %"core::panic::location::Location"*)) #14
  unreachable
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_dealloc
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$14update_dealloc17h347f9497c315ff58E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %0) unnamed_addr #0 {
start:
  %_4 = alloca i64*, align 8
  %size = alloca i64, align 8
  store i64 %0, i64* %size, align 8
  store i64* %size, i64** %_4, align 8
  %1 = load i64*, i64** %_4, align 8, !nonnull !3
; call OOMGuardAllocator::with_counter
  call void @_ZN17OOMGuardAllocator12with_counter17h39045b077fadcb27E(i64* align 8 dereferenceable(8) %1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::update_dealloc::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$14update_dealloc28_$u7b$$u7b$closure$u7d$$u7d$17h443eb29da601ee0bE"(i64* align 8 dereferenceable(8) %_1, %"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it) unnamed_addr #1 {
start:
  %_4 = load i64, i64* %_1, align 8
; call core::cell::Cell<T>::get_mut
  %_5 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_5, i32 0, i32 1
  %1 = load i64, i64* %0, align 8
  %2 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %1, i64 %_4)
  %_7.0 = extractvalue { i64, i1 } %2, 0
  %_7.1 = extractvalue { i64, i1 } %2, 1
  %3 = call i1 @llvm.expect.i1(i1 %_7.1, i1 false)
  br i1 %3, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %4 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_5, i32 0, i32 1
  store i64 %_7.0, i64* %4, align 8
  ret void

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([28 x i8]* @str.0 to [0 x i8]*), i64 28, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc143 to %"core::panic::location::Location"*)) #14
  unreachable
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::get_flag
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$8get_flag17h014aeefe6d791b7bE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self) unnamed_addr #0 {
start:
; call OOMGuardAllocator::with_counter
  %0 = call zeroext i1 @_ZN17OOMGuardAllocator12with_counter17h9d1e95f3ae6bf9c4E()
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %0
}

; OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator>::get_flag::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN17OOMGuardAllocator42OOMGuard_Allocator$LT$DefaultAllocator$GT$8get_flag28_$u7b$$u7b$closure$u7d$$u7d$17ha4c259d4b06e8087E"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it) unnamed_addr #1 {
start:
; call core::cell::Cell<T>::get_mut
  %_3 = call align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %it)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"OOMGuardAllocator::Count", %"OOMGuardAllocator::Count"* %_3, i32 0, i32 3
  %1 = load i8, i8* %0, align 8, !range !5
  %2 = trunc i8 %1 to i1
  ret i1 %2
}

; OOMGuardAllocator::my_wrap
; Function Attrs: nonlazybind uwtable
define internal void @_ZN17OOMGuardAllocator7my_wrap17he65d1f3e6b53ef98E(%AA** align 8 dereferenceable(8) %a) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2350e28cb938e5ecE(void ()* nonnull %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17h4daa75e788982b76E(void ()* nonnull %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17hcab1df2dc153b10bE()
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %6 = bitcast { i8*, i32 }* %0 to i8**
  %7 = load i8*, i8** %6, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = insertvalue { i8*, i32 } undef, i8* %7, 0
  %11 = insertvalue { i8*, i32 } %10, i32 %9, 1
  resume { i8*, i32 } %11
}

; std::rt::lang_start
; Function Attrs: nonlazybind uwtable
define hidden i64 @_ZN3std2rt10lang_start17hff041ea8181ce970E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #0 {
start:
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  %0 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_5.0 = bitcast i64** %_8 to {}*
; call std::rt::lang_start_internal
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h75965f95c98f11d8E({}* nonnull align 1 %_5.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.4 to [3 x i64]*), i64 %argc, i8** %argv)
  store i64 %1, i64* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %v = load i64, i64* %_4, align 8
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h66be39c909e5aad3E"(i64** align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_3 = load void ()*, void ()** %0, align 8, !nonnull !3
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h2350e28cb938e5ecE(void ()* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %1 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc54869d80f99c251E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::sys::unix::alloc::aligned_malloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN3std3sys4unix5alloc14aligned_malloc17habaa636d97561855E({ i64, i64 }* align 8 dereferenceable(16) %layout) unnamed_addr #1 {
start:
  %out = alloca i8*, align 8
  %0 = alloca i8*, align 8
  store i8* null, i8** %out, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::cmp::Ord::max
  %align = call i64 @_ZN4core3cmp3Ord3max17hbf9c6f206bd40596E(i64 %_4, i64 8)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::alloc::layout::Layout::size
  %_11 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb5

bb5:                                              ; preds = %bb4
  %ret = call i32 @posix_memalign(i8** %out, i64 %align, i64 %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %1 = icmp eq i32 %ret, 0
  br i1 %1, label %bb8, label %bb7

bb8:                                              ; preds = %bb6
  %_14 = load i8*, i8** %out, align 8
  store i8* %_14, i8** %0, align 8
  br label %bb9

bb7:                                              ; preds = %bb6
  store i8* null, i8** %0, align 8
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %2 = load i8*, i8** %0, align 8
  ret i8* %2
}

; std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::alloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$5alloc17h8c2d5bf582c5184aE"(%"std::alloc::System"* nonnull align 1 %self, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_3 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
; call core::alloc::layout::Layout::align
  %_5 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb4

bb4:                                              ; preds = %start
  %_4 = icmp ule i64 %_5, 16
  br i1 %_4, label %bb2, label %bb1

bb1:                                              ; preds = %bb4
  store i8 0, i8* %_3, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
; call core::alloc::layout::Layout::align
  %_8 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb5

bb5:                                              ; preds = %bb2
; call core::alloc::layout::Layout::size
  %_10 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_7 = icmp ule i64 %_8, %_10
  %5 = zext i1 %_7 to i8
  store i8 %5, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb6
  %6 = load i8, i8* %_3, align 1, !range !5
  %7 = trunc i8 %6 to i1
  br i1 %7, label %bb7, label %bb10

bb10:                                             ; preds = %bb3
; call std::sys::unix::alloc::aligned_malloc
  %8 = call i8* @_ZN3std3sys4unix5alloc14aligned_malloc17habaa636d97561855E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  store i8* %8, i8** %2, align 8
  br label %bb11

bb7:                                              ; preds = %bb3
; call core::alloc::layout::Layout::size
  %_13 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb8

bb8:                                              ; preds = %bb7
  %_12 = call i8* @malloc(i64 %_13)
  br label %bb9

bb9:                                              ; preds = %bb8
  store i8* %_12, i8** %2, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb9
  %9 = load i8*, i8** %2, align 8
  ret i8* %9

bb11:                                             ; preds = %bb10
  br label %bb12
}

; std::sys::unix::alloc::<impl core::alloc::global::GlobalAlloc for std::alloc::System>::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN3std3sys4unix5alloc81_$LT$impl$u20$core..alloc..global..GlobalAlloc$u20$for$u20$std..alloc..System$GT$7dealloc17hda33867e6eaf4794E"(%"std::alloc::System"* nonnull align 1 %self, i8* %ptr, i64 %_layout.0, i64 %_layout.1) unnamed_addr #1 {
start:
  call void @free(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h9a9aed8ac8b40000E(i8* align 1 dereferenceable(1) %self) unnamed_addr #1 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; core::intrinsics::write_bytes
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics11write_bytes17h1c6baee013c641dfE(i8* %dst, i8 %val, i64 %count) unnamed_addr #1 {
start:
  %0 = mul i64 1, %count
  call void @llvm.memset.p0i8.i64(i8* align 1 %dst, i8 %val, i64 %0, i1 false)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::intrinsics::copy_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core10intrinsics19copy_nonoverlapping17h32fa783b0a1e9b79E(i8* %src, i8* %dst, i64 %count) unnamed_addr #1 {
start:
  %0 = mul i64 %count, 1
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %dst, i8* align 1 %src, i64 %0, i1 false)
  ret void
}

; core::cmp::Ord::max
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3max17hbf9c6f206bd40596E(i64 %self, i64 %other) unnamed_addr #1 {
start:
; call core::cmp::max_by
  %0 = call i64 @_ZN4core3cmp6max_by17hd9d0aeae4ef81d87E(i64 %self, i64 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::Ord::min
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3Ord3min17hd242fbb573812cacE(i64 %self, i64 %other) unnamed_addr #1 {
start:
; call core::cmp::min_by
  %0 = call i64 @_ZN4core3cmp6min_by17h3a2c8f849938da03E(i64 %self, i64 %other)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::max
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3max17he2aa30427c1c7facE(i64 %v1, i64 %v2) unnamed_addr #1 {
start:
; call core::cmp::Ord::max
  %0 = call i64 @_ZN4core3cmp3Ord3max17hbf9c6f206bd40596E(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::min
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp3min17h45d7ce151d172c17E(i64 %v1, i64 %v2) unnamed_addr #1 {
start:
; call core::cmp::Ord::min
  %0 = call i64 @_ZN4core3cmp3Ord3min17hd242fbb573812cacE(i64 %v1, i64 %v2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %0
}

; core::cmp::impls::<impl core::cmp::Ord for usize>::cmp
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hc234949ee4de8746E"(i64* align 8 dereferenceable(8) %self, i64* align 8 dereferenceable(8) %other) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %_4 = load i64, i64* %self, align 8
  %_5 = load i64, i64* %other, align 8
  %_3 = icmp ult i64 %_4, %_5
  br i1 %_3, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_7 = load i64, i64* %self, align 8
  %_8 = load i64, i64* %other, align 8
  %_6 = icmp eq i64 %_7, %_8
  br i1 %_6, label %bb3, label %bb4

bb1:                                              ; preds = %start
  store i8 -1, i8* %0, align 1
  br label %bb6

bb6:                                              ; preds = %bb5, %bb1
  %1 = load i8, i8* %0, align 1, !range !6
  ret i8 %1

bb4:                                              ; preds = %bb2
  store i8 1, i8* %0, align 1
  br label %bb5

bb3:                                              ; preds = %bb2
  store i8 0, i8* %0, align 1
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  br label %bb6
}

; core::cmp::max_by
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6max_by17hd9d0aeae4ef81d87E(i64 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_6 = alloca { i64*, i64* }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %0, i64* %v1, align 8
  store i64 %1, i64* %v2, align 8
  store i8 0, i8* %_13, align 1
  store i8 0, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  store i8 1, i8* %_12, align 1
  %4 = bitcast { i64*, i64* }* %_6 to i64**
  store i64* %v1, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 1
  store i64* %v2, i64** %5, align 8
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8, !nonnull !3
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8, !nonnull !3
; invoke core::ops::function::FnOnce::call_once
  %10 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h236bc2c6f6549f04E(i64* align 8 dereferenceable(8) %7, i64* align 8 dereferenceable(8) %9)
          to label %bb1 unwind label %cleanup, !range !6

bb1:                                              ; preds = %start
  store i8 %10, i8* %_4, align 1
  %_11 = load i8, i8* %_4, align 1, !range !6
  switch i8 %_11, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb8

bb13:                                             ; preds = %bb8
  %16 = load i8, i8* %_13, align 1, !range !5
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_12, align 1
  %18 = load i64, i64* %v2, align 8
  store i64 %18, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_13, align 1
  %19 = load i64, i64* %v1, align 8
  store i64 %19, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %20 = load i8, i8* %_12, align 1, !range !5
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %22 = load i8, i8* %_13, align 1, !range !5
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %24 = bitcast { i8*, i32 }* %2 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %30 = load i64, i64* %3, align 8
  ret i64 %30

bb11:                                             ; preds = %bb6
  br label %bb7
}

; core::cmp::min_by
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3cmp6min_by17h3a2c8f849938da03E(i64 %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %_13 = alloca i8, align 1
  %_12 = alloca i8, align 1
  %_6 = alloca { i64*, i64* }, align 8
  %_4 = alloca i8, align 1
  %3 = alloca i64, align 8
  %v2 = alloca i64, align 8
  %v1 = alloca i64, align 8
  store i64 %0, i64* %v1, align 8
  store i64 %1, i64* %v2, align 8
  store i8 0, i8* %_13, align 1
  store i8 0, i8* %_12, align 1
  store i8 1, i8* %_13, align 1
  store i8 1, i8* %_12, align 1
  %4 = bitcast { i64*, i64* }* %_6 to i64**
  store i64* %v1, i64** %4, align 8
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 1
  store i64* %v2, i64** %5, align 8
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8, !nonnull !3
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_6, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8, !nonnull !3
; invoke core::ops::function::FnOnce::call_once
  %10 = invoke i8 @_ZN4core3ops8function6FnOnce9call_once17h236bc2c6f6549f04E(i64* align 8 dereferenceable(8) %7, i64* align 8 dereferenceable(8) %9)
          to label %bb1 unwind label %cleanup, !range !6

bb1:                                              ; preds = %start
  store i8 %10, i8* %_4, align 1
  %_11 = load i8, i8* %_4, align 1, !range !6
  switch i8 %_11, label %bb3 [
    i8 -1, label %bb4
    i8 0, label %bb4
    i8 1, label %bb2
  ]

bb8:                                              ; preds = %cleanup
  br label %bb13

cleanup:                                          ; preds = %start
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb8

bb13:                                             ; preds = %bb8
  %16 = load i8, i8* %_13, align 1, !range !5
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb12, label %bb9

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1, %bb1
  store i8 0, i8* %_13, align 1
  %18 = load i64, i64* %v1, align 8
  store i64 %18, i64* %3, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_12, align 1
  %19 = load i64, i64* %v2, align 8
  store i64 %19, i64* %3, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  %20 = load i8, i8* %_12, align 1, !range !5
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb10, label %bb6

bb6:                                              ; preds = %bb10, %bb5
  %22 = load i8, i8* %_13, align 1, !range !5
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb11, label %bb7

bb10:                                             ; preds = %bb5
  br label %bb6

bb9:                                              ; preds = %bb12, %bb13
  %24 = bitcast { i8*, i32 }* %2 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb12:                                             ; preds = %bb13
  br label %bb9

bb7:                                              ; preds = %bb11, %bb6
  %30 = load i64, i64* %3, align 8
  ret i64 %30

bb11:                                             ; preds = %bb6
  br label %bb7
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8b80e95f11d20994E(%"alloc::string::String"* align 8 dereferenceable(24) %x, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !3
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::string::String"* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !3
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !3
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !3
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %0, [0 x { [0 x i8]*, i64 }]* nonnull align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* nonnull align 8 %args.0, i64 %args.1) unnamed_addr #1 {
start:
  %_16 = alloca { i64*, i64 }, align 8
  %_3 = alloca i8, align 1
  %_4 = icmp ult i64 %pieces.1, %args.1
  br i1 %_4, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_12 = add i64 %args.1, 1
  %_9 = icmp ugt i64 %pieces.1, %_12
  %1 = zext i1 %_9 to i8
  store i8 %1, i8* %_3, align 1
  br label %bb3

bb1:                                              ; preds = %start
  store i8 1, i8* %_3, align 1
  br label %bb3

bb3:                                              ; preds = %bb2, %bb1
  %2 = load i8, i8* %_3, align 1, !range !5
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
  %4 = bitcast { i64*, i64 }* %_16 to {}**
  store {}* null, {}** %4, align 8
  %5 = bitcast %"core::fmt::Arguments"* %0 to { [0 x { [0 x i8]*, i64 }]*, i64 }*
  %6 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 0
  store [0 x { [0 x i8]*, i64 }]* %pieces.0, [0 x { [0 x i8]*, i64 }]** %6, align 8
  %7 = getelementptr inbounds { [0 x { [0 x i8]*, i64 }]*, i64 }, { [0 x { [0 x i8]*, i64 }]*, i64 }* %5, i32 0, i32 1
  store i64 %pieces.1, i64* %7, align 8
  %8 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 1
  %9 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_16, i32 0, i32 0
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %_16, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 0
  store i64* %10, i64** %13, align 8
  %14 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %8, i32 0, i32 1
  store i64 %12, i64* %14, align 8
  %15 = getelementptr inbounds %"core::fmt::Arguments", %"core::fmt::Arguments"* %0, i32 0, i32 2
  %16 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 0
  store [0 x { i8*, i64* }]* %args.0, [0 x { i8*, i64* }]** %16, align 8
  %17 = getelementptr inbounds { [0 x { i8*, i64* }]*, i64 }, { [0 x { i8*, i64* }]*, i64 }* %15, i32 0, i32 1
  store i64 %args.1, i64* %17, align 8
  ret void

bb4:                                              ; preds = %bb3
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [12 x i8] }>* @alloc149 to [0 x i8]*), i64 12, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc151 to %"core::panic::location::Location"*)) #14
  unreachable
}

; core::num::<impl usize>::checked_add
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h84ca15c99722b57fE"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.uadd.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !5
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !5
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !5
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = bitcast { i64, i64 }* %3 to %"core::option::Option<usize>::Some"*
  %29 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %28, i32 0, i32 1
  store i64 %_5.0, i64* %29, align 8
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %30, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %31 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %31, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !range !7
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = insertvalue { i64, i64 } undef, i64 %33, 0
  %37 = insertvalue { i64, i64 } %36, i64 %35, 1
  ret { i64, i64 } %37
}

; core::num::<impl usize>::checked_mul
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h0d58aa19c456216dE"(i64 %self, i64 %rhs) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8 }, align 8
  %1 = alloca { i64, i8 }, align 8
  %2 = alloca i8, align 1
  %3 = alloca { i64, i64 }, align 8
  %4 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %self, i64 %rhs)
  %5 = extractvalue { i64, i1 } %4, 0
  %6 = extractvalue { i64, i1 } %4, 1
  %7 = zext i1 %6 to i8
  %8 = bitcast { i64, i8 }* %0 to i64*
  store i64 %5, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  store i8 %7, i8* %9, align 8
  %10 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 0
  %_5.0.i = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %0, i32 0, i32 1
  %12 = load i8, i8* %11, align 8, !range !5
  %_5.1.i = trunc i8 %12 to i1
  %13 = bitcast { i64, i8 }* %1 to i64*
  store i64 %_5.0.i, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %15 = zext i1 %_5.1.i to i8
  store i8 %15, i8* %14, align 8
  %16 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %1, i32 0, i32 1
  %19 = load i8, i8* %18, align 8, !range !5
  %20 = trunc i8 %19 to i1
  %21 = zext i1 %20 to i8
  %22 = insertvalue { i64, i8 } undef, i64 %17, 0
  %23 = insertvalue { i64, i8 } %22, i8 %21, 1
  %_5.0 = extractvalue { i64, i8 } %23, 0
  %24 = extractvalue { i64, i8 } %23, 1
  %_5.1 = trunc i8 %24 to i1
  br label %bb1

bb1:                                              ; preds = %start
  %25 = call i1 @llvm.expect.i1(i1 %_5.1, i1 false)
  %26 = zext i1 %25 to i8
  store i8 %26, i8* %2, align 1
  %27 = load i8, i8* %2, align 1, !range !5
  %_8 = trunc i8 %27 to i1
  br label %bb2

bb2:                                              ; preds = %bb1
  br i1 %_8, label %bb3, label %bb4

bb4:                                              ; preds = %bb2
  %28 = bitcast { i64, i64 }* %3 to %"core::option::Option<usize>::Some"*
  %29 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %28, i32 0, i32 1
  store i64 %_5.0, i64* %29, align 8
  %30 = bitcast { i64, i64 }* %3 to i64*
  store i64 1, i64* %30, align 8
  br label %bb5

bb3:                                              ; preds = %bb2
  %31 = bitcast { i64, i64 }* %3 to i64*
  store i64 0, i64* %31, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %33 = load i64, i64* %32, align 8, !range !7
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = insertvalue { i64, i64 } undef, i64 %33, 0
  %37 = insertvalue { i64, i64 } %36, i64 %35, 1
  ret { i64, i64 } %37
}

; core::num::nonzero::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hd5b5af0f35244e15E(i64 %n) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !4
  ret i64 %1
}

; core::num::nonzero::NonZeroUsize::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h89ce571b06ded84bE(i64 %self) unnamed_addr #1 {
start:
  ret i64 %self
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h734a4646a20be0e3E"(i64** %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !3
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17hcc01a90a1a6a63a4E(i64* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8 @_ZN4core3ops8function6FnOnce9call_once17h236bc2c6f6549f04E(i64* align 8 dereferenceable(8) %0, i64* align 8 dereferenceable(8) %1) unnamed_addr #1 {
start:
  %_2 = alloca { i64*, i64* }, align 8
  %2 = bitcast { i64*, i64* }* %_2 to i64**
  store i64* %0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_2, i32 0, i32 1
  store i64* %1, i64** %3, align 8
  %4 = bitcast { i64*, i64* }* %_2 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !3
  %6 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_2, i32 0, i32 1
  %7 = load i64*, i64** %6, align 8, !nonnull !3
; call core::cmp::impls::<impl core::cmp::Ord for usize>::cmp
  %8 = call i8 @"_ZN4core3cmp5impls50_$LT$impl$u20$core..cmp..Ord$u20$for$u20$usize$GT$3cmp17hc234949ee4de8746E"(i64* align 8 dereferenceable(8) %5, i64* align 8 dereferenceable(8) %7), !range !6
  br label %bb1

bb1:                                              ; preds = %start
  ret i8 %8
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17h4daa75e788982b76E(void ()* nonnull %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17hcc01a90a1a6a63a4E(i64* nonnull %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h66be39c909e5aad3E"(i64** align 8 dereferenceable(8) %_1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  br label %bb2

bb3:                                              ; preds = %cleanup
  br label %bb4

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb4:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb1
  ret i32 %2
}

; core::ptr::slice_from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h52e899ca1daffb41E(i8* %data, i64 %len) unnamed_addr #1 {
start:
; call core::ptr::const_ptr::<impl *const T>::cast
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0cbadd3c6e6df7f0E"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h0d3e0685541a2e42E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h1d79aca7f8421263E(i32* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast i32* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i32]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h2543bf7f299b26a4E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i32]*, i64 } %1, 0
  %3 = extractvalue { [0 x i32]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %2, 0
  %5 = insertvalue { [0 x i32]*, i64 } %4, i64 %3, 1
  ret { [0 x i32]*, i64 } %5
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5e65ed8231a75449E(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc55140d4f48fb7cdE({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; core::ptr::drop_in_place<main::myError>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr34drop_in_place$LT$main..myError$GT$17hfc728a86235880d8E"(%myError* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %myError* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 1, i64 0
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb2, label %bb1

bb2:                                              ; preds = %start
  %4 = bitcast %myError* %_1 to %"myError::allocation_fail"*
  %5 = bitcast %"myError::allocation_fail"* %4 to %"alloc::string::String"*
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %5)
  br label %bb1

bb1:                                              ; preds = %bb2, %start
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa4d775fe5beaf7eE"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa4d775fe5beaf7eE"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h300309d0b040d84eE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8e8d6ce15898f992E"({ i8*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8e8d6ce15898f992E"({ i8*, i64 }* %2) #15
  br label %bb1

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb4
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<i32>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4f31a74e0933479E"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<i32>"* %_1 to { i32*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h750845f934a359efE"({ i32*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<i32>"* %_1 to { i32*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
  call void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h750845f934a359efE"({ i32*, i64 }* %2) #15
  br label %bb1

cleanup:                                          ; preds = %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb3

bb1:                                              ; preds = %bb3
  %8 = bitcast { i8*, i32 }* %0 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb2:                                              ; preds = %bb4
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h8e8d6ce15898f992E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1a0a446cef6749dE"({ i8*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<core::alloc::layout::LayoutError>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$core..alloc..layout..LayoutError$GT$17h0de9862122333e31E"(%"core::alloc::layout::LayoutError"* %_1) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<i32>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$i32$GT$$GT$17h750845f934a359efE"({ i32*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffec8c2f9e9e95eeE"({ i32*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::unique::Unique<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h24433ccaa3ed3624E"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3
  ret i8* %1
}

; core::ptr::unique::Unique<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h67603f3241ed063aE"(i32* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i32*, align 8
  store i32* %ptr, i32** %0, align 8
  %1 = load i32*, i32** %0, align 8, !nonnull !3
  ret i32* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h63e56ceddcef9d95E"(i8* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6ff67cc14f4bcfdE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h24433ccaa3ed3624E"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hade5f81d73a274b2E"(i32* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6d4c678d402edfa1E"(i32* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i32* %_3 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h24433ccaa3ed3624E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6d4c678d402edfa1E"(i32* nonnull %self) unnamed_addr #1 {
start:
  ret i32* %self
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6ff67cc14f4bcfdE"(i8* nonnull %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; core::ptr::unique::Unique<T>::dangling
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h1a88186ed05691d5E"() unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %_1 = inttoptr i64 1 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h24433ccaa3ed3624E"(i8* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::dangling
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h8f949ce8cf6d29f4E"() unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %_1 = inttoptr i64 4 to i32*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h67603f3241ed063aE"(i32* %_1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32* %0
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h455de4583c655770E"(i8* %self, i8* %other) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !5
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; core::ptr::mut_ptr::<impl *mut T>::sub
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$3sub17hb93871a1ed7145faE"(i8* %self, i64 %count) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = sub i64 0, %count
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, i8* %self, i64 %1
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6e6069a2b023fd12E"(i32* %self) unnamed_addr #1 {
start:
  %_2 = bitcast i32* %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h455de4583c655770E"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %self) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h455de4583c655770E"(i8* %self, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h3169881d36a0abf7E"(i64** %_1) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::metadata::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17h0d3e0685541a2e42E({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h2543bf7f299b26a4E({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[i32]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[i32]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[i32]>"* %_3 to { [0 x i32]*, i64 }*
  %10 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i32]*, [0 x i32]** %10, align 8
  %12 = getelementptr inbounds { [0 x i32]*, i64 }, { [0 x i32]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %11, 0
  %15 = insertvalue { [0 x i32]*, i64 } %14, i64 %13, 1
  ret { [0 x i32]*, i64 } %15
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hc55140d4f48fb7cdE({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_3 to { [0 x i8]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8]*, [0 x i8]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %11, 0
  %15 = insertvalue { [0 x i8]*, i64 } %14, i64 %13, 1
  ret { [0 x i8]*, i64 } %15
}

; core::ptr::metadata::metadata
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3ptr8metadata8metadata17h51f1bb5002f9348bE([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #1 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %ptr.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h52a4d3a2d948ce14E"([0 x i8]* %ptr.0, i64 %ptr.1) unnamed_addr #1 {
start:
  %0 = alloca { i8*, i64 }, align 8
  %1 = bitcast { i8*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %ptr.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %ptr.1, i64* %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 0
  %5 = load i8*, i8** %4, align 8, !nonnull !3
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { i8*, i64 } undef, i8* %5, 0
  %9 = insertvalue { i8*, i64 } %8, i64 %7, 1
  ret { i8*, i64 } %9
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb3d21e03bd1f7467E"(i32* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i32*, align 8
  store i32* %ptr, i32** %0, align 8
  %1 = load i32*, i32** %0, align 8, !nonnull !3
  ret i32* %1
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !3
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h5598e47b278e684dE"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_3 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %ptr)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = xor i1 %_3, true
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast i8** %0 to {}**
  store {}* null, {}** %1, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %_5 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  store i8* %_5, i8** %0, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  %2 = load i8*, i8** %0, align 8
  ret i8* %2
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h094fb7fd639e7b91E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1a2cdcc0b98d9041E"(i8* nonnull %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edf6b76ef5c2601E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1a2cdcc0b98d9041E"(i8* nonnull %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i32*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %1 = call nonnull i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hb3d21e03bd1f7467E"(i32* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32* %1
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0d271900e0220776E"(i32* nonnull %self) unnamed_addr #1 {
start:
  ret i32* %self
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1a2cdcc0b98d9041E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; core::ptr::non_null::NonNull<[T]>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h7ec00eb9a34fe688E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<[T]>::as_non_null_ptr
  %_2 = call nonnull i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb15f9b57296ec80eE"(i8* nonnull %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::non_null::NonNull<[T]>::as_non_null_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$15as_non_null_ptr17hb15f9b57296ec80eE"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1a2cdcc0b98d9041E"(i8* nonnull %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast [0 x i8]* %_3.0 to i8*
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %2 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %2
}

; core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h9d9737d06b6f41d4E"(i8* nonnull %data, i64 %len) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_4 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %data)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::slice_from_raw_parts_mut
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5e65ed8231a75449E(i8* %_4, i64 %len)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %1 = call { i8*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h52a4d3a2d948ce14E"([0 x i8]* %_3.0, i64 %_3.1)
  %2 = extractvalue { i8*, i64 } %1, 0
  %3 = extractvalue { i8*, i64 } %1, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %4 = insertvalue { i8*, i64 } undef, i8* %2, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; core::ptr::non_null::NonNull<[T]>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h47ca4375d1ccb646E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h1a2cdcc0b98d9041E"(i8* nonnull %self.0, i64 %self.1)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::metadata
  %1 = call i64 @_ZN4core3ptr8metadata8metadata17h51f1bb5002f9348bE([0 x i8]* %_2.0, i64 %_2.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; core::ptr::const_ptr::<impl *const T>::copy_to_nonoverlapping
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h0563b317c829b2c4E"(i8* %self, i8* %dest, i64 %count) unnamed_addr #1 {
start:
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h32fa783b0a1e9b79E(i8* %self, i8* %dest, i64 %count)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::const_ptr::<impl *const T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h0cbadd3c6e6df7f0E"(i8* %self) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; core::str::converts::from_utf8_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hcf64082f20328a92E([0 x i8]* nonnull align 1 %v.0, i64 %v.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !3
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; core::cell::Cell<T>::get_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(32832) %"OOMGuardAllocator::Count"* @"_ZN4core4cell13Cell$LT$T$GT$7get_mut17hbf894e9f8a8ce1faE"(%"core::cell::Cell<OOMGuardAllocator::Count>"* align 8 dereferenceable(32832) %self) unnamed_addr #1 {
start:
  %_4 = bitcast %"core::cell::Cell<OOMGuardAllocator::Count>"* %self to %"core::cell::UnsafeCell<OOMGuardAllocator::Count>"*
  %_3.i = bitcast %"core::cell::UnsafeCell<OOMGuardAllocator::Count>"* %_4 to %"OOMGuardAllocator::Count"*
  br label %bb1

bb1:                                              ; preds = %start
  ret %"OOMGuardAllocator::Count"* %_3.i
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17hcab1df2dc153b10bE() unnamed_addr #1 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !8
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::alloc::global::GlobalAlloc::alloc_zeroed
; Function Attrs: nonlazybind uwtable
define internal i8* @_ZN4core5alloc6global11GlobalAlloc12alloc_zeroed17hcd899288606b4e3dE(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %0, i64 %1) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %size = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_6.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_6.1 = load i64, i64* %5, align 8, !range !4
; call <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::alloc
  %ptr = call i8* @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hdfbdbbb7792b424aE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %_6.0, i64 %_6.1)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_8 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_7 = xor i1 %_8, true
  br i1 %_7, label %bb4, label %bb6

bb6:                                              ; preds = %bb5, %bb3
  ret i8* %ptr

bb4:                                              ; preds = %bb3
; call core::intrinsics::write_bytes
  call void @_ZN4core10intrinsics11write_bytes17h1c6baee013c641dfE(i8* %ptr, i8 0, i64 %size)
  br label %bb5

bb5:                                              ; preds = %bb4
  br label %bb6
}

; core::alloc::global::GlobalAlloc::realloc
; Function Attrs: nonlazybind uwtable
define internal i8* @_ZN4core5alloc6global11GlobalAlloc7realloc17h2cf5a2ea24647f51E(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #0 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::align
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::from_size_align_unchecked
  %4 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %new_size, i64 %_7)
  %new_layout.0 = extractvalue { i64, i64 } %4, 0
  %new_layout.1 = extractvalue { i64, i64 } %4, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::alloc
  %new_ptr = call i8* @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hdfbdbbb7792b424aE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb3

bb3:                                              ; preds = %bb2
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_12 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %new_ptr)
  br label %bb4

bb4:                                              ; preds = %bb3
  %_11 = xor i1 %_12, true
  br i1 %_11, label %bb5, label %bb10

bb10:                                             ; preds = %bb9, %bb4
  ret i8* %new_ptr

bb5:                                              ; preds = %bb4
; call core::alloc::layout::Layout::size
  %_19 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb6

bb6:                                              ; preds = %bb5
; call core::cmp::min
  %_18 = call i64 @_ZN4core3cmp3min17h45d7ce151d172c17E(i64 %_19, i64 %new_size)
  br label %bb7

bb7:                                              ; preds = %bb6
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h32fa783b0a1e9b79E(i8* %ptr, i8* %new_ptr, i64 %_18)
  br label %bb8

bb8:                                              ; preds = %bb7
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_25.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_25.1 = load i64, i64* %6, align 8, !range !4
; call <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::dealloc
  call void @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h4d23b83042d59d83E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) %self, i8* %ptr, i64 %_25.0, i64 %_25.1)
  br label %bb9

bb9:                                              ; preds = %bb8
  br label %bb10
}

; core::alloc::layout::Layout::from_size_align
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout15from_size_align17h7a85f533126cfbc4E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  %1 = alloca { i64, i64 }, align 8
  %2 = call i64 @llvm.ctpop.i64(i64 %align)
  store i64 %2, i64* %0, align 8
  %_2.i.i = load i64, i64* %0, align 8
  %3 = trunc i64 %_2.i.i to i32
  %4 = icmp eq i32 %3, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_3 = xor i1 %4, true
  br i1 %_3, label %bb2, label %bb3

bb3:                                              ; preds = %bb1
  %_9 = sub i64 %align, 1
  %_8 = sub i64 -1, %_9
  %_6 = icmp ugt i64 %size, %_8
  br i1 %_6, label %bb4, label %bb5

bb2:                                              ; preds = %bb1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %5, align 8
  br label %bb7

bb7:                                              ; preds = %bb6, %bb4, %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = insertvalue { i64, i64 } undef, i64 %7, 0
  %11 = insertvalue { i64, i64 } %10, i64 %9, 1
  ret { i64, i64 } %11

bb5:                                              ; preds = %bb3
; call core::alloc::layout::Layout::from_size_align_unchecked
  %12 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %size, i64 %align)
  %_11.0 = extractvalue { i64, i64 } %12, 0
  %_11.1 = extractvalue { i64, i64 } %12, 1
  br label %bb6

bb4:                                              ; preds = %bb3
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %13, align 8
  br label %bb7

bb6:                                              ; preds = %bb5
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  store i64 %_11.0, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  store i64 %_11.1, i64* %15, align 8
  br label %bb7
}

; core::alloc::layout::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
; call core::num::nonzero::NonZeroUsize::new_unchecked
  %_4 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17hd5b5af0f35244e15E(i64 %align), !range !4
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !4
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::layout::Layout::size
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::alloc::layout::Layout::align
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8, !range !4
; call core::num::nonzero::NonZeroUsize::get
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17h89ce571b06ded84bE(i64 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::alloc::layout::Layout::array
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h94607f93a494476bE(i64 %n) unnamed_addr #1 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::checked_mul
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h0d58aa19c456216dE"(i64 1, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h5daef6a97180754dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3a3b9f3819e2a841E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !7
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = bitcast { i64, i64 }* %_3 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"*
  %6 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"* %5, i32 0, i32 1
  %val = load i64, i64* %6, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %7 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h32ef10f93be18603E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc153 to %"core::panic::location::Location"*))
  store { i64, i64 } %7, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13

bb9:                                              ; preds = %bb5
; call core::alloc::layout::Layout::from_size_align_unchecked
  %14 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %val, i64 1)
  %_13.0 = extractvalue { i64, i64 } %14, 0
  %_13.1 = extractvalue { i64, i64 } %14, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %16, align 8
  br label %bb11
}

; core::alloc::layout::Layout::array
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h96efe58431c615f0E(i64 %n) unnamed_addr #1 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
; call core::num::<impl usize>::checked_mul
  %1 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_mul17h0d58aa19c456216dE"(i64 4, i64 %n)
  %_5.0 = extractvalue { i64, i64 } %1, 0
  %_5.1 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::option::Option<T>::ok_or
  %2 = call { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h5daef6a97180754dE"(i64 %_5.0, i64 %_5.1)
  %_4.0 = extractvalue { i64, i64 } %2, 0
  %_4.1 = extractvalue { i64, i64 } %2, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %3 = call { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3a3b9f3819e2a841E"(i64 %_4.0, i64 %_4.1)
  store { i64, i64 } %3, { i64, i64 }* %_3, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = bitcast { i64, i64 }* %_3 to i64*
  %_9 = load i64, i64* %4, align 8, !range !7
  switch i64 %_9, label %bb6 [
    i64 0, label %bb5
    i64 1, label %bb7
  ]

bb6:                                              ; preds = %bb4
  unreachable

bb5:                                              ; preds = %bb4
  %5 = bitcast { i64, i64 }* %_3 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"*
  %6 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"* %5, i32 0, i32 1
  %val = load i64, i64* %6, align 8
  br label %bb9

bb7:                                              ; preds = %bb4
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %7 = call { i64, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h32ef10f93be18603E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc153 to %"core::panic::location::Location"*))
  store { i64, i64 } %7, { i64, i64 }* %0, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb11

bb11:                                             ; preds = %bb10, %bb8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = insertvalue { i64, i64 } undef, i64 %9, 0
  %13 = insertvalue { i64, i64 } %12, i64 %11, 1
  ret { i64, i64 } %13

bb9:                                              ; preds = %bb5
; call core::alloc::layout::Layout::from_size_align_unchecked
  %14 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %val, i64 4)
  %_13.0 = extractvalue { i64, i64 } %14, 0
  %_13.1 = extractvalue { i64, i64 } %14, 1
  br label %bb10

bb10:                                             ; preds = %bb9
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_13.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_13.1, i64* %16, align 8
  br label %bb11
}

; core::alloc::layout::Layout::dangling
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @_ZN4core5alloc6layout6Layout8dangling17hf8c6db1e4a15beffE({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call core::alloc::layout::Layout::align
  %_3 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = inttoptr i64 %_3 to i8*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17hdba16abdc1f9a290E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::clone::Clone::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core5clone5Clone5clone17ha3f4b43dc8e9765dE({}* nonnull align 1 %_1) unnamed_addr #1 {
start:
  ret void
}

; core::slice::<impl [T]>::len
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hdfa5ed2a1242bfaeE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2 = alloca %"core::ptr::metadata::PtrRepr<[u8]>", align 8
  %0 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %self.1, i64* %2, align 8
  %3 = bitcast %"core::ptr::metadata::PtrRepr<[u8]>"* %_2 to { i8*, i64 }*
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; core::slice::<impl [T]>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h30b0252f39b14dfbE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x i8]* %self.0 to i8*
  ret i8* %0
}

; core::slice::raw::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hdd82848a7099ad59E(i8* %data, i64 %len) unnamed_addr #1 {
start:
; call core::slice::raw::debug_check_data_len
  call void @_ZN4core5slice3raw20debug_check_data_len17hdf229c9ebfe59827E(i8* %data, i64 %len)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::slice_from_raw_parts
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h52e899ca1daffb41E(i8* %data, i64 %len)
  %_6.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_6.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_6.0, 0
  %2 = insertvalue { [0 x i8]*, i64 } %1, i64 %_6.1, 1
  ret { [0 x i8]*, i64 } %2
}

; core::slice::raw::debug_check_data_len
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4core5slice3raw20debug_check_data_len17hdf229c9ebfe59827E(i8* %_data, i64 %_len) unnamed_addr #0 {
start:
  ret void
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6option15Option$LT$T$GT$5ok_or17h5daef6a97180754dE"(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_7 = alloca i8, align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !7
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = bitcast { i64, i64 }* %2 to %"core::result::Result<usize, core::alloc::layout::LayoutError>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<usize, core::alloc::layout::LayoutError>::Err", %"core::result::Result<usize, core::alloc::layout::LayoutError>::Err"* %6, i32 0, i32 1
  %8 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %10 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %9, i32 0, i32 1
  %v = load i64, i64* %10, align 8
  %11 = bitcast { i64, i64 }* %2 to %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok"*
  %12 = getelementptr inbounds %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok", %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok"* %11, i32 0, i32 1
  store i64 %v, i64* %12, align 8
  %13 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %13, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %14 = load i8, i8* %_7, align 1, !range !5
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %17 = load i64, i64* %16, align 8, !range !7
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { i64, i64 } undef, i64 %17, 0
  %21 = insertvalue { i64, i64 } %20, i64 %19, 1
  ret { i64, i64 } %21

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h891b174753d803b3E"(i8* %0) unnamed_addr #1 {
start:
  %_7 = alloca i8, align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_3 = select i1 %4, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %5 = bitcast i8** %1 to %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"*
  %6 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<u8>, core::alloc::AllocError>::Err"* %5 to %"core::alloc::AllocError"*
  %7 = bitcast i8** %1 to {}**
  store {}* null, {}** %7, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !3
  store i8* %v, i8** %1, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %8 = load i8, i8* %_7, align 1, !range !5
  %9 = trunc i8 %8 to i1
  br i1 %9, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  %10 = load i8*, i8** %1, align 8
  ret i8* %10

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$5ok_or17hd3706a5d4ad131c1E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") dereferenceable(24) %0, i64 %1, i64 %2, i64 %err.0, i64 %err.1) unnamed_addr #1 {
start:
  %_7 = alloca i8, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %5 = bitcast { i64, i64 }* %self to i64*
  %_3 = load i64, i64* %5, align 8, !range !7
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %6 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %err.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %err.1, i64* %9, align 8
  %10 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %10, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %11 = bitcast { i64, i64 }* %self to %"core::option::Option<usize>::Some"*
  %12 = getelementptr inbounds %"core::option::Option<usize>::Some", %"core::option::Option<usize>::Some"* %11, i32 0, i32 1
  %v = load i64, i64* %12, align 8
  %13 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %14 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %13, i32 0, i32 1
  store i64 %v, i64* %14, align 8
  %15 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %15, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %16 = load i8, i8* %_7, align 1, !range !5
  %17 = trunc i8 %16 to i1
  br i1 %17, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::result::Result<T,E>::unwrap
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h9ee8ea14ba9ea516E"(i64 %0, i64 %1, %"core::panic::location::Location"* align 8 dereferenceable(24) %2) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %e = alloca %"core::alloc::layout::LayoutError", align 1
  %self = alloca { i64, i64 }, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  %_2 = select i1 %8, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %10, align 8, !range !4
  %11 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %12 = insertvalue { i64, i64 } %11, i64 %t.1, 1
  ret { i64, i64 } %12

bb1:                                              ; preds = %start
  %_6.0 = bitcast %"core::alloc::layout::LayoutError"* %e to {}*
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hddb26cddfa4f23d4E([0 x i8]* nonnull align 1 bitcast (<{ [43 x i8] }>* @alloc154 to [0 x i8]*), i64 43, {}* nonnull align 1 %_6.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, [0 x i8] }>* @vtable.5 to [3 x i64]*), %"core::panic::location::Location"* align 8 dereferenceable(24) %2) #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb4

bb5:                                              ; preds = %bb4
  %18 = bitcast { i8*, i32 }* %3 to i8**
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = insertvalue { i8*, i32 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i32 } %22, i32 %21, 1
  resume { i8*, i32 } %23
}

; core::result::Result<T,E>::map_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hb129425c221309a0E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i8* %1, i64 %2, i64* align 8 dereferenceable(16) %op) unnamed_addr #1 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::AllocError" }, align 1
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %1, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %t.0 = load i8*, i8** %8, align 8, !nonnull !3
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8
  %10 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 0
  store i8* %t.0, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::AllocError" }* %_9 to %"core::alloc::AllocError"*
; call alloc::raw_vec::finish_grow::{{closure}}
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17ha8a7605e48163074E"(i64* align 8 dereferenceable(16) %op)
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb4
  %22 = load i8, i8* %_11, align 1, !range !5
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; core::result::Result<T,E>::map_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hbc6d8d6517c33747E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") dereferenceable(24) %0, i64 %1, i64 %2) unnamed_addr #1 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { %"core::alloc::layout::LayoutError" }, align 1
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %2, i64* %4, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %_3 = select i1 %7, i64 1, i64 0
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %t.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %t.1 = load i64, i64* %9, align 8, !range !4
  %10 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %11 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %t.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %t.1, i64* %13, align 8
  %14 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %14, align 8
  br label %bb7

bb1:                                              ; preds = %start
  store i8 0, i8* %_11, align 1
  %15 = bitcast { %"core::alloc::layout::LayoutError" }* %_9 to %"core::alloc::layout::LayoutError"*
; call alloc::raw_vec::finish_grow::{{closure}}
  %16 = call { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h3caf0de71457bde7E"()
  %_7.0 = extractvalue { i64, i64 } %16, 0
  %_7.1 = extractvalue { i64, i64 } %16, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %17 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %18 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %_7.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %_7.1, i64* %20, align 8
  %21 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb4
  %22 = load i8, i8* %_11, align 1, !range !5
  %23 = trunc i8 %22 to i1
  br i1 %23, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; core::result::Result<T,E>::map_err
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hf16921f44cf9a8cfE"(%"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveErrorKind>") dereferenceable(24) %0, %"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_11 = alloca i8, align 1
  %_9 = alloca { i64, i64 }, align 8
  store i8 0, i8* %_11, align 1
  store i8 1, i8* %_11, align 1
  %1 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %self to i64*
  %_3 = load i64, i64* %1, align 8, !range !7
  switch i64 %_3, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %4 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb7

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %self to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %5, i32 0, i32 1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %e.0 = load i64, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %e.1 = load i64, i64* %8, align 8
  store i8 0, i8* %_11, align 1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  store i64 %e.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  store i64 %e.1, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_9, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
; call alloc::raw_vec::handle_reserve::{{closure}}
  %15 = call { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hcddd93b9640c6676E"(i64 %12, i64 %14)
  %_7.0 = extractvalue { i64, i64 } %15, 0
  %_7.1 = extractvalue { i64, i64 } %15, 1
  br label %bb4

bb4:                                              ; preds = %bb1
  %16 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"*
  %17 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"* %16, i32 0, i32 1
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 0
  store i64 %_7.0, i64* %18, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %17, i32 0, i32 1
  store i64 %_7.1, i64* %19, align 8
  %20 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %0 to i64*
  store i64 1, i64* %20, align 8
  br label %bb7

bb7:                                              ; preds = %bb3, %bb4
  %21 = load i8, i8* %_11, align 1, !range !5
  %22 = trunc i8 %21 to i1
  br i1 %22, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17h095f4a623198a9daE"(i64 %t.0, i64 %t.1) unnamed_addr #0 {
start:
  %0 = insertvalue { i64, i64 } undef, i64 %t.0, 0
  %1 = insertvalue { i64, i64 } %0, i64 %t.1, 1
  ret { i64, i64 } %1
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hb0fce1286b6482f3E"() unnamed_addr #0 {
start:
  ret void
}

; <T as core::convert::From<T>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN50_$LT$T$u20$as$u20$core..convert..From$LT$T$GT$$GT$4from17hce57051ac29056b0E"() unnamed_addr #0 {
start:
  ret void
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h29f0522f68ecbb38E"(i64 %self.0, i64 %self.1) unnamed_addr #0 {
start:
; call <alloc::collections::TryReserveError as core::convert::From<alloc::collections::TryReserveErrorKind>>::from
  %0 = call { i64, i64 } @"_ZN122_$LT$alloc..collections..TryReserveError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveErrorKind$GT$$GT$4from17hc611ba2cc75f2d5dE"(i64 %self.0, i64 %self.1)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7b60192b0b0ec656E"(i8* nonnull %self) unnamed_addr #0 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17hf4f1b09c6389eedbE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <T as alloc::slice::hack::ConvertVec>::to_vec
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h067f79017e400681E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %v, [0 x i8]* nonnull align 1 %s.0, i64 %s.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_17 = alloca i8, align 1
  store i8 0, i8* %_17, align 1
  store i8 1, i8* %_17, align 1
; invoke core::slice::<impl [T]>::len
  %_3 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hdfa5ed2a1242bfaeE"([0 x i8]* nonnull align 1 %s.0, i64 %s.1)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, i8* %_17, align 1
; invoke alloc::vec::Vec<T,A>::with_capacity_in
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h516d86dfbc5af8c6E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %v, i64 %_3)
          to label %bb2 unwind label %cleanup

bb12:                                             ; preds = %bb9, %cleanup
  %1 = load i8, i8* %_17, align 1, !range !5
  %2 = trunc i8 %1 to i1
  br i1 %2, label %bb11, label %bb10

cleanup:                                          ; preds = %bb1, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb12

bb2:                                              ; preds = %bb1
; invoke core::slice::<impl [T]>::as_ptr
  %_7 = invoke i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17h30b0252f39b14dfbE"([0 x i8]* nonnull align 1 %s.0, i64 %s.1)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
; invoke alloc::vec::Vec<T,A>::as_mut_ptr
  %_9 = invoke i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hfebc8c4f60ede518E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %v)
          to label %bb4 unwind label %cleanup1

bb9:                                              ; preds = %cleanup1
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17hfa4d775fe5beaf7eE"(%"alloc::vec::Vec<u8>"* %v) #15
  br label %bb12

cleanup1:                                         ; preds = %bb7, %bb6, %bb5, %bb4, %bb3, %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb9

bb4:                                              ; preds = %bb3
; invoke core::slice::<impl [T]>::len
  %_11 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hdfa5ed2a1242bfaeE"([0 x i8]* nonnull align 1 %s.0, i64 %s.1)
          to label %bb5 unwind label %cleanup1

bb5:                                              ; preds = %bb4
; invoke core::ptr::const_ptr::<impl *const T>::copy_to_nonoverlapping
  invoke void @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$22copy_to_nonoverlapping17h0563b317c829b2c4E"(i8* %_7, i8* %_9, i64 %_11)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
; invoke core::slice::<impl [T]>::len
  %_15 = invoke i64 @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3len17hdfa5ed2a1242bfaeE"([0 x i8]* nonnull align 1 %s.0, i64 %s.1)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb6
; invoke alloc::vec::Vec<T,A>::set_len
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7fc51b5e67e0e705E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %v, i64 %_15)
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
  ret void

bb10:                                             ; preds = %bb11, %bb12
  %13 = bitcast { i8*, i32 }* %0 to i8**
  %14 = load i8*, i8** %13, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = insertvalue { i8*, i32 } undef, i8* %14, 0
  %18 = insertvalue { i8*, i32 } %17, i32 %16, 1
  resume { i8*, i32 } %18

bb11:                                             ; preds = %bb12
  br label %bb10
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17hc54869d80f99c251E"() unnamed_addr #1 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h56e91504513e52caE"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <alloc::string::String as core::fmt::Debug>::fmt
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h3668e1dd8c330ba8E"(%"alloc::string::String"* align 8 dereferenceable(24) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f) unnamed_addr #1 {
start:
; call <alloc::string::String as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h89e4c5cd77eb814bE"(%"alloc::string::String"* align 8 dereferenceable(24) %self)
  %_5.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <str as core::fmt::Debug>::fmt
  %1 = call zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hec7dec34a2bb4d4fE"([0 x i8]* nonnull align 1 %_5.0, i64 %_5.1, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %1
}

; alloc::collections::TryReserveError::kind
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h3d8b721d0ab5f50eE({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
; call <alloc::collections::TryReserveErrorKind as core::clone::Clone>::clone
  %0 = call { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hd92f4caa583b5dedE"({ i64, i64 }* align 8 dereferenceable(16) %self)
  %1 = extractvalue { i64, i64 } %0, 0
  %2 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64, i64 } undef, i64 %1, 0
  %4 = insertvalue { i64, i64 } %3, i64 %2, 1
  ret { i64, i64 } %4
}

; alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc3f484f7909909c1E"(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %1 = alloca { [0 x i8]*, i64 }, align 8
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %self.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %self.1, i64* %3, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  %5 = load [0 x i8]*, [0 x i8]** %4, align 8, !nonnull !3
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %5, 0
  %9 = insertvalue { [0 x i8]*, i64 } %8, i64 %7, 1
  %_4.0 = extractvalue { [0 x i8]*, i64 } %9, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %9, 1
  br label %bb1

bb1:                                              ; preds = %start
; call alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
  call void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h92b73bafcfca4792E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %_2, [0 x i8]* nonnull align 1 %_4.0, i64 %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::string::String::from_utf8_unchecked
  call void @_ZN5alloc6string6String19from_utf8_unchecked17h829ac0bba985ab24E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, %"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::vec::Vec<T>::with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h264b7efdf9ad74e9E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, i64 %capacity) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T,A>::with_capacity_in
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h516d86dfbc5af8c6E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T>::with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha9af155fff12e34aE"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %0, i64 %capacity) unnamed_addr #1 {
start:
; call alloc::vec::Vec<T,A>::with_capacity_in
  call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hb7e18d34faff1173E"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %0, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h1628d65a2d6d9671E"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %0) unnamed_addr #1 {
start:
  %1 = bitcast %"alloc::vec::Vec<i32>"* %0 to { i32*, i64 }*
  %2 = load i32*, i32** getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (<{ [16 x i8] }>* @0 to { i32*, i64 }*), i32 0, i32 0), align 8, !nonnull !3
  %3 = load i64, i64* getelementptr inbounds ({ i32*, i64 }, { i32*, i64 }* bitcast (<{ [16 x i8] }>* @0 to { i32*, i64 }*), i32 0, i32 1), align 8
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 0
  store i32* %2, i32** %4, align 8
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 1
  store i64 %3, i64* %5, align 8
  %6 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %0, i32 0, i32 1
  store i64 0, i64* %6, align 8
  ret void
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9d2e1ac6db627a2cE"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<i32>"* %self to { i32*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i32* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h308a0c43bee55412E"({ i32*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h6e6069a2b023fd12E"(i32* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i32* %ptr
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hfebc8c4f60ede518E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6717912e53934c73E"({ i8*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::vec::Vec<T,A>::try_reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hd8e40c6cbd1c1e4bE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, %"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #0 {
start:
  %_3 = bitcast %"alloc::vec::Vec<i32>"* %self to { i32*, i64 }*
  %1 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %1, align 8
; call alloc::raw_vec::RawVec<T,A>::try_reserve
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11try_reserve17h1ec6e3749b2acd74E"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, { i32*, i64 }* align 8 dereferenceable(16) %_3, i64 %_4, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T,A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17h516d86dfbc5af8c6E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, i64 %capacity) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::with_capacity_in
  %1 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h703d60a84757f07cE"(i64 %capacity)
  %_3.0 = extractvalue { i8*, i64 } %1, 0
  %_3.1 = extractvalue { i8*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<u8>"* %0 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_3.0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; alloc::vec::Vec<T,A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$16with_capacity_in17hb7e18d34faff1173E"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %0, i64 %capacity) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::with_capacity_in
  %1 = call { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7ee747ba621e1710E"(i64 %capacity)
  %_3.0 = extractvalue { i32*, i64 } %1, 0
  %_3.1 = extractvalue { i32*, i64 } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"alloc::vec::Vec<i32>"* %0 to { i32*, i64 }*
  %3 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 0
  store i32* %_3.0, i32** %3, align 8
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 1
  store i64 %_3.1, i64* %4, align 8
  %5 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %0, i32 0, i32 1
  store i64 0, i64* %5, align 8
  ret void
}

; alloc::vec::Vec<T,A>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h1e5124c3802c9cf3E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6717912e53934c73E"({ i8*, i64 }* align 8 dereferenceable(16) %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17haee31660d73607aaE"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::vec::Vec<T,A>::reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h12292eb3f785da59E"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %self, i64 %additional) unnamed_addr #0 {
start:
  %_4 = bitcast %"alloc::vec::Vec<i32>"* %self to { i32*, i64 }*
  %0 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call alloc::raw_vec::RawVec<T,A>::reserve
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h56483b440afe8d96E"({ i32*, i64 }* align 8 dereferenceable(16) %_4, i64 %_5, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::vec::Vec<T,A>::set_len
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7set_len17h7fc51b5e67e0e705E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self, i64 %new_len) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  store i64 %new_len, i64* %0, align 8
  ret void
}

; alloc::alloc::alloc_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc12alloc_zeroed17h3c4e52b28af006eaE(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc_zeroed(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; alloc::alloc::alloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc5alloc17h826f258486373fa2E(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_2 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_4 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_alloc(i64 %_2, i64 %_4) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; alloc::alloc::Global::alloc_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5344c59acf754eccE(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %0, i64 %1, i1 zeroext %zeroed) unnamed_addr #1 {
start:
  %_15 = alloca i8*, align 8
  %raw_ptr = alloca i8*, align 8
  %2 = alloca { i8*, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %4, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %5 = icmp eq i64 %_4, 0
  br i1 %5, label %bb3, label %bb2

bb3:                                              ; preds = %bb1
; call core::alloc::layout::Layout::dangling
  %_7 = call nonnull i8* @_ZN4core5alloc6layout6Layout8dangling17hf8c6db1e4a15beffE({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb4

bb2:                                              ; preds = %bb1
  br i1 %zeroed, label %bb6, label %bb8

bb8:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_13.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_13.1 = load i64, i64* %7, align 8, !range !4
; call alloc::alloc::alloc
  %8 = call i8* @_ZN5alloc5alloc5alloc17h826f258486373fa2E(i64 %_13.0, i64 %_13.1)
  store i8* %8, i8** %raw_ptr, align 8
  br label %bb9

bb6:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_12.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_12.1 = load i64, i64* %10, align 8, !range !4
; call alloc::alloc::alloc_zeroed
  %11 = call i8* @_ZN5alloc5alloc12alloc_zeroed17h3c4e52b28af006eaE(i64 %_12.0, i64 %_12.1)
  store i8* %11, i8** %raw_ptr, align 8
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb10

bb10:                                             ; preds = %bb9, %bb7
  %_18 = load i8*, i8** %raw_ptr, align 8
; call core::ptr::non_null::NonNull<T>::new
  %_17 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h5598e47b278e684dE"(i8* %_18)
  br label %bb11

bb9:                                              ; preds = %bb8
  br label %bb10

bb11:                                             ; preds = %bb10
; call core::option::Option<T>::ok_or
  %_16 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h891b174753d803b3E"(i8* %_17)
  br label %bb12

bb12:                                             ; preds = %bb11
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %12 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h514aeef8c7f87485E"(i8* %_16)
  store i8* %12, i8** %_15, align 8
  br label %bb13

bb13:                                             ; preds = %bb12
  %13 = bitcast i8** %_15 to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_20 = select i1 %15, i64 1, i64 0
  switch i64 %_20, label %bb15 [
    i64 0, label %bb14
    i64 1, label %bb16
  ]

bb15:                                             ; preds = %bb13
  unreachable

bb14:                                             ; preds = %bb13
  %val = load i8*, i8** %_15, align 8, !nonnull !3
; call core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
  %16 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h9d9737d06b6f41d4E"(i8* nonnull %val, i64 %_4)
  %_24.0 = extractvalue { i8*, i64 } %16, 0
  %_24.1 = extractvalue { i8*, i64 } %16, 1
  br label %bb18

bb16:                                             ; preds = %bb13
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %17 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h151ee79a3a4d8753E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc159 to %"core::panic::location::Location"*))
  store { i8*, i64 } %17, { i8*, i64 }* %2, align 8
  br label %bb17

bb17:                                             ; preds = %bb16
  br label %bb20

bb20:                                             ; preds = %bb19, %bb17
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = insertvalue { i8*, i64 } undef, i8* %19, 0
  %23 = insertvalue { i8*, i64 } %22, i64 %21, 1
  ret { i8*, i64 } %23

bb18:                                             ; preds = %bb14
  %24 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_24.0, i8** %24, align 8
  %25 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_24.1, i64* %25, align 8
  br label %bb19

bb19:                                             ; preds = %bb5, %bb18
  br label %bb20

bb4:                                              ; preds = %bb3
; call core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h9d9737d06b6f41d4E"(i8* nonnull %_7, i64 0)
  %_6.0 = extractvalue { i8*, i64 } %26, 0
  %_6.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %_6.0, i8** %27, align 8
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_6.1, i64* %28, align 8
  br label %bb19
}

; alloc::alloc::Global::grow_impl
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h695a0b337db104a7E(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %0, i64 %1, i64 %2, i64 %3, i1 zeroext %zeroed) unnamed_addr #1 {
start:
  %4 = alloca i8*, align 8
  %_53 = alloca { i8*, i64 }, align 8
  %_31 = alloca i8*, align 8
  %_6 = alloca i64, align 8
  %5 = alloca { i8*, i64 }, align 8
  %new_layout = alloca { i64, i64 }, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %1, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %2, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %3, i64* %9, align 8
; call core::alloc::layout::Layout::size
  %10 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %old_layout)
  store i64 %10, i64* %_6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %11 = load i64, i64* %_6, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_9.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_9.1 = load i64, i64* %14, align 8, !range !4
; call alloc::alloc::Global::alloc_impl
  %15 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5344c59acf754eccE(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %_9.0, i64 %_9.1, i1 zeroext %zeroed)
  store { i8*, i64 } %15, { i8*, i64 }* %5, align 8
  br label %bb3

bb4:                                              ; preds = %bb1
; call core::alloc::layout::Layout::align
  %_14 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %old_layout)
  br label %bb5

bb5:                                              ; preds = %bb4
; call core::alloc::layout::Layout::align
  %_16 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %new_layout)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_13 = icmp eq i64 %_14, %_16
  br i1 %_13, label %bb7, label %bb8

bb8:                                              ; preds = %bb6
  %old_size1 = load i64, i64* %_6, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_56.0 = load i64, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_56.1 = load i64, i64* %17, align 8, !range !4
; call alloc::alloc::Global::alloc_impl
  %18 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5344c59acf754eccE(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %_56.0, i64 %_56.1, i1 zeroext %zeroed)
  %_54.0 = extractvalue { i8*, i64 } %18, 0
  %_54.1 = extractvalue { i8*, i64 } %18, 1
  br label %bb26

bb7:                                              ; preds = %bb6
  %old_size = load i64, i64* %_6, align 8
; call core::alloc::layout::Layout::size
  %new_size = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %new_layout)
  br label %bb9

bb9:                                              ; preds = %bb7
; call core::alloc::layout::Layout::size
  %_23 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %old_layout)
  br label %bb10

bb10:                                             ; preds = %bb9
  %_21 = icmp uge i64 %new_size, %_23
  call void @llvm.assume(i1 %_21)
  br label %bb11

bb11:                                             ; preds = %bb10
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_26 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %ptr)
  br label %bb12

bb12:                                             ; preds = %bb11
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_28.0 = load i64, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_28.1 = load i64, i64* %20, align 8, !range !4
; call alloc::alloc::realloc
  %raw_ptr = call i8* @_ZN5alloc5alloc7realloc17hf9372202b7e7392fE(i8* %_26, i64 %_28.0, i64 %_28.1, i64 %new_size)
  br label %bb13

bb13:                                             ; preds = %bb12
; call core::ptr::non_null::NonNull<T>::new
  %_33 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$3new17h5598e47b278e684dE"(i8* %raw_ptr)
  br label %bb14

bb14:                                             ; preds = %bb13
; call core::option::Option<T>::ok_or
  %_32 = call i8* @"_ZN4core6option15Option$LT$T$GT$5ok_or17h891b174753d803b3E"(i8* %_33)
  br label %bb15

bb15:                                             ; preds = %bb14
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %21 = call i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h514aeef8c7f87485E"(i8* %_32)
  store i8* %21, i8** %_31, align 8
  br label %bb16

bb16:                                             ; preds = %bb15
  %22 = bitcast i8** %_31 to {}**
  %23 = load {}*, {}** %22, align 8
  %24 = icmp eq {}* %23, null
  %_36 = select i1 %24, i64 1, i64 0
  switch i64 %_36, label %bb18 [
    i64 0, label %bb17
    i64 1, label %bb19
  ]

bb18:                                             ; preds = %bb16
  unreachable

bb17:                                             ; preds = %bb16
  %val = load i8*, i8** %_31, align 8, !nonnull !3
  br i1 %zeroed, label %bb21, label %bb24

bb19:                                             ; preds = %bb16
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %25 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h151ee79a3a4d8753E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc161 to %"core::panic::location::Location"*))
  store { i8*, i64 } %25, { i8*, i64 }* %5, align 8
  br label %bb20

bb20:                                             ; preds = %bb19
  br label %bb37

bb37:                                             ; preds = %bb31, %bb20
  br label %bb38

bb24:                                             ; preds = %bb23, %bb17
; call core::ptr::non_null::NonNull<[T]>::slice_from_raw_parts
  %26 = call { i8*, i64 } @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$20slice_from_raw_parts17h9d9737d06b6f41d4E"(i8* nonnull %val, i64 %new_size)
  %_48.0 = extractvalue { i8*, i64 } %26, 0
  %_48.1 = extractvalue { i8*, i64 } %26, 1
  br label %bb25

bb21:                                             ; preds = %bb17
  %27 = getelementptr inbounds i8, i8* %raw_ptr, i64 %old_size
  store i8* %27, i8** %4, align 8
  %_3.i = load i8*, i8** %4, align 8
  br label %bb22

bb22:                                             ; preds = %bb21
  %_45 = sub i64 %new_size, %old_size
; call core::intrinsics::write_bytes
  call void @_ZN4core10intrinsics11write_bytes17h1c6baee013c641dfE(i8* %_3.i, i8 0, i64 %_45)
  br label %bb23

bb23:                                             ; preds = %bb22
  br label %bb24

bb25:                                             ; preds = %bb24
  %28 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %_48.0, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %_48.1, i64* %29, align 8
  br label %bb36

bb36:                                             ; preds = %bb3, %bb35, %bb25
  br label %bb38

bb26:                                             ; preds = %bb8
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  %30 = call { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbe57e42edb4ffbe4E"(i8* %_54.0, i64 %_54.1)
  store { i8*, i64 } %30, { i8*, i64 }* %_53, align 8
  br label %bb27

bb27:                                             ; preds = %bb26
  %31 = bitcast { i8*, i64 }* %_53 to {}**
  %32 = load {}*, {}** %31, align 8
  %33 = icmp eq {}* %32, null
  %_58 = select i1 %33, i64 1, i64 0
  switch i64 %_58, label %bb29 [
    i64 0, label %bb28
    i64 1, label %bb30
  ]

bb29:                                             ; preds = %bb27
  unreachable

bb28:                                             ; preds = %bb27
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 0
  %val.0 = load i8*, i8** %34, align 8, !nonnull !3
  %35 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_53, i32 0, i32 1
  %val.1 = load i64, i64* %35, align 8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_64 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %ptr)
  br label %bb32

bb30:                                             ; preds = %bb27
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  %36 = call { i8*, i64 } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h151ee79a3a4d8753E"(%"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc163 to %"core::panic::location::Location"*))
  store { i8*, i64 } %36, { i8*, i64 }* %5, align 8
  br label %bb31

bb31:                                             ; preds = %bb30
  br label %bb37

bb38:                                             ; preds = %bb36, %bb37
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = insertvalue { i8*, i64 } undef, i8* %38, 0
  %42 = insertvalue { i8*, i64 } %41, i64 %40, 1
  ret { i8*, i64 } %42

bb32:                                             ; preds = %bb28
; call core::ptr::non_null::NonNull<[T]>::as_mut_ptr
  %_66 = call i8* @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$10as_mut_ptr17h7ec00eb9a34fe688E"(i8* nonnull %val.0, i64 %val.1)
  br label %bb33

bb33:                                             ; preds = %bb32
; call core::intrinsics::copy_nonoverlapping
  call void @_ZN4core10intrinsics19copy_nonoverlapping17h32fa783b0a1e9b79E(i8* %_64, i8* %_66, i64 %old_size1)
  br label %bb34

bb34:                                             ; preds = %bb33
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_72.0 = load i64, i64* %43, align 8
  %44 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_72.1 = load i64, i64* %44, align 8, !range !4
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3a9759519f72ee46E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %_72.0, i64 %_72.1)
  br label %bb35

bb35:                                             ; preds = %bb34
  %45 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 0
  store i8* %val.0, i8** %45, align 8
  %46 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %5, i32 0, i32 1
  store i64 %val.1, i64* %46, align 8
  br label %bb36

bb3:                                              ; preds = %bb2
  br label %bb36
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17h24c40ee37b86191bE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::alloc::realloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @_ZN5alloc5alloc7realloc17hf9372202b7e7392fE(i8* %ptr, i64 %0, i64 %1, i64 %new_size) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_5 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_7 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = call i8* @__rust_realloc(i8* %ptr, i64 %_5, i64 %_7, i64 %new_size) #16
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %4
}

; alloc::slice::<impl [T]>::to_vec
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h5b33d87bcc5c9369E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call alloc::slice::<impl [T]>::to_vec_in
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h2540b38b99f6d81bE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::<impl [T]>::to_vec_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9to_vec_in17h2540b38b99f6d81bE"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call alloc::slice::hack::to_vec
  call void @_ZN5alloc5slice4hack6to_vec17h80793e3185ab0ad2E(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::hack::to_vec
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5slice4hack6to_vec17h80793e3185ab0ad2E(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
; call <T as alloc::slice::hack::ConvertVec>::to_vec
  call void @"_ZN52_$LT$T$u20$as$u20$alloc..slice..hack..ConvertVec$GT$6to_vec17h067f79017e400681E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::slice::<impl alloc::borrow::ToOwned for [T]>::to_owned
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc5slice64_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$$u5b$T$u5d$$GT$8to_owned17h92b73bafcfca4792E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #0 {
start:
; call alloc::slice::<impl [T]>::to_vec
  call void @"_ZN5alloc5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6to_vec17h5b33d87bcc5c9369E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::string::String::with_capacity
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String13with_capacity17h98f923d21043fb33E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, i64 %capacity) unnamed_addr #1 {
start:
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17h264b7efdf9ad74e9E"(%"alloc::vec::Vec<u8>"* noalias nocapture sret(%"alloc::vec::Vec<u8>") dereferenceable(24) %_2, i64 %capacity)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %1 to i8*
  %3 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  ret void
}

; alloc::string::String::from_utf8_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc6string6String19from_utf8_unchecked17h829ac0bba985ab24E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, %"alloc::vec::Vec<u8>"* noalias nocapture dereferenceable(24) %bytes) unnamed_addr #1 {
start:
  %_2 = alloca %"alloc::vec::Vec<u8>", align 8
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  %2 = bitcast %"alloc::vec::Vec<u8>"* %bytes to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast %"alloc::string::String"* %0 to %"alloc::vec::Vec<u8>"*
  %4 = bitcast %"alloc::vec::Vec<u8>"* %3 to i8*
  %5 = bitcast %"alloc::vec::Vec<u8>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  ret void
}

; alloc::raw_vec::alloc_guard
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc7raw_vec11alloc_guard17hf7a589d4c171e91eE(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %alloc_size) unnamed_addr #1 {
start:
  %_4 = alloca { i64, i64 }, align 8
  br i1 false, label %bb1, label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
; call <T as core::convert::Into<U>>::into
  %7 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h29f0522f68ecbb38E"(i64 %4, i64 %6)
  %_3.0 = extractvalue { i64, i64 } %7, 0
  %_3.1 = extractvalue { i64, i64 } %7, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %8 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %9 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  store i64 %_3.0, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  store i64 %_3.1, i64* %11, align 8
  %12 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %12, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb2
  ret void
}

; alloc::raw_vec::finish_grow
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN5alloc7raw_vec11finish_grow17hd91eacef6c9cebbdE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture dereferenceable(24) %current_memory, %"alloc::alloc::Global"* nonnull align 1 %alloc) unnamed_addr #2 {
start:
  %_41 = alloca i64*, align 8
  %old_layout = alloca { i64, i64 }, align 8
  %memory = alloca { i8*, i64 }, align 8
  %_14 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
  %_13 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>", align 8
  %_6 = alloca %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>", align 8
  %new_layout = alloca { i64, i64 }, align 8
; call core::result::Result<T,E>::map_err
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hbc6d8d6517c33747E"(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>") dereferenceable(24) %_6, i64 %new_layout.0, i64 %new_layout.1)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h88ed557fdc2bbe70E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") dereferenceable(24) %_5, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* noalias nocapture dereferenceable(24) %_6)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to i64*
  %_9 = load i64, i64* %1, align 8, !range !7
  switch i64 %_9, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %2 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %3 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %val.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %val.1 = load i64, i64* %5, align 8, !range !4
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  store i64 %val.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  store i64 %val.1, i64* %7, align 8
; call core::alloc::layout::Layout::size
  %_15 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %new_layout)
  br label %bb7

bb5:                                              ; preds = %bb2
  %8 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %residual.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %residual.1 = load i64, i64* %11, align 8
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h4e02be61d6ad9010E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc165 to %"core::panic::location::Location"*))
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb23

bb23:                                             ; preds = %bb13, %bb6
  br label %bb24

bb7:                                              ; preds = %bb3
; call alloc::raw_vec::alloc_guard
  call void @_ZN5alloc7raw_vec11alloc_guard17hf7a589d4c171e91eE(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %_14, i64 %_15)
  br label %bb8

bb8:                                              ; preds = %bb7
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4aae810808676ed2E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>") dereferenceable(24) %_13, %"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %_14)
  br label %bb9

bb9:                                              ; preds = %bb8
  %12 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %_13 to i64*
  %_17 = load i64, i64* %12, align 8, !range !7
  switch i64 %_17, label %bb11 [
    i64 0, label %bb10
    i64 1, label %bb12
  ]

bb11:                                             ; preds = %bb9
  unreachable

bb10:                                             ; preds = %bb9
  %13 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to {}**
  %14 = load {}*, {}** %13, align 8
  %15 = icmp eq {}* %14, null
  %_22 = select i1 %15, i64 0, i64 1
  %16 = icmp eq i64 %_22, 1
  br i1 %16, label %bb15, label %bb14

bb12:                                             ; preds = %bb9
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %_13 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  %residual.01 = load i64, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  %residual.12 = load i64, i64* %20, align 8
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc86798ba63cd3843E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %residual.01, i64 %residual.12, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc167 to %"core::panic::location::Location"*))
  br label %bb13

bb13:                                             ; preds = %bb12
  br label %bb23

bb24:                                             ; preds = %bb22, %bb23
  ret void

bb15:                                             ; preds = %bb10
  %21 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %22 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %21 to { i8*, { i64, i64 } }*
  %23 = bitcast { i8*, { i64, i64 } }* %22 to i8**
  %ptr = load i8*, i8** %23, align 8, !nonnull !3
  %24 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %current_memory to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %25 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %24 to { i8*, { i64, i64 } }*
  %26 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %25, i32 0, i32 1
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %26, i32 0, i32 1
  %30 = load i64, i64* %29, align 8, !range !4
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  store i64 %28, i64* %31, align 8
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  store i64 %30, i64* %32, align 8
; call core::alloc::layout::Layout::align
  %_30 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %old_layout)
  br label %bb16

bb14:                                             ; preds = %bb10
  %33 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_39.0 = load i64, i64* %33, align 8
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_39.1 = load i64, i64* %34, align 8, !range !4
; call <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %35 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8d383c1ab15fd314E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i64 %_39.0, i64 %_39.1)
  store { i8*, i64 } %35, { i8*, i64 }* %memory, align 8
  br label %bb20

bb20:                                             ; preds = %bb14
  br label %bb21

bb21:                                             ; preds = %bb19, %bb20
  %36 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 0
  %_40.0 = load i8*, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %memory, i32 0, i32 1
  %_40.1 = load i64, i64* %37, align 8
  %38 = bitcast i64** %_41 to { i64, i64 }**
  store { i64, i64 }* %new_layout, { i64, i64 }** %38, align 8
  %39 = load i64*, i64** %_41, align 8, !nonnull !3
; call core::result::Result<T,E>::map_err
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hb129425c221309a0E"(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %0, i8* %_40.0, i64 %_40.1, i64* align 8 dereferenceable(16) %39)
  br label %bb22

bb16:                                             ; preds = %bb15
; call core::alloc::layout::Layout::align
  %_32 = call i64 @_ZN4core5alloc6layout6Layout5align17h9fea0f506f933225E({ i64, i64 }* align 8 dereferenceable(16) %new_layout)
  br label %bb17

bb17:                                             ; preds = %bb16
  %_29 = icmp eq i64 %_30, %_32
  call void @llvm.assume(i1 %_29)
  br label %bb18

bb18:                                             ; preds = %bb17
  %40 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 0
  %_36.0 = load i64, i64* %40, align 8
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %old_layout, i32 0, i32 1
  %_36.1 = load i64, i64* %41, align 8, !range !4
  %42 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 0
  %_37.0 = load i64, i64* %42, align 8
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %new_layout, i32 0, i32 1
  %_37.1 = load i64, i64* %43, align 8, !range !4
; call <alloc::alloc::Global as core::alloc::Allocator>::grow
  %44 = call { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3ca4328409e67b41E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %ptr, i64 %_36.0, i64 %_36.1, i64 %_37.0, i64 %_37.1)
  store { i8*, i64 } %44, { i8*, i64 }* %memory, align 8
  br label %bb19

bb19:                                             ; preds = %bb18
  br label %bb21

bb22:                                             ; preds = %bb21
  br label %bb24
}

; alloc::raw_vec::finish_grow::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17h3caf0de71457bde7E"() unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
  %1 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = insertvalue { i64, i64 } undef, i64 %3, 0
  %7 = insertvalue { i64, i64 } %6, i64 %5, 1
  ret { i64, i64 } %7
}

; alloc::raw_vec::finish_grow::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN5alloc7raw_vec11finish_grow28_$u7b$$u7b$closure$u7d$$u7d$17ha8a7605e48163074E"(i64* align 8 dereferenceable(16) %_1) unnamed_addr #1 {
start:
  %_3 = alloca { i64, i64 }, align 8
  %0 = bitcast i64* %_1 to { i64, i64 }*
  %1 = bitcast i64* %_1 to { i64, i64 }*
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 0
  %_4.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %1, i32 0, i32 1
  %_4.1 = load i64, i64* %3, align 8, !range !4
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  store i64 %_4.0, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  store i64 %_4.1, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_3, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
; call <T as core::convert::Into<U>>::into
  %10 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h29f0522f68ecbb38E"(i64 %7, i64 %9)
  %11 = extractvalue { i64, i64 } %10, 0
  %12 = extractvalue { i64, i64 } %10, 1
  br label %bb1

bb1:                                              ; preds = %start
  %13 = insertvalue { i64, i64 } undef, i64 %11, 0
  %14 = insertvalue { i64, i64 } %13, i64 %12, 1
  ret { i64, i64 } %14
}

; alloc::raw_vec::handle_reserve
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc7raw_vec14handle_reserve17h7b0001c69f7109f0E(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %result) unnamed_addr #1 {
start:
  %_3 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
  %_2 = alloca %"core::result::Result<(), alloc::collections::TryReserveErrorKind>", align 8
  %0 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %_3 to i8*
  %1 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %result to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
; call core::result::Result<T,E>::map_err
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$7map_err17hf16921f44cf9a8cfE"(%"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveErrorKind>") dereferenceable(24) %_2, %"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %_2 to i64*
  %_6 = load i64, i64* %2, align 8, !range !7
  switch i64 %_6, label %bb4 [
    i64 0, label %bb2
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb3, %bb1
  unreachable

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %bb1
  %3 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %_2 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"*
  %4 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"* %3, i32 0, i32 1
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = icmp eq i64 %6, 0
  %_5 = select i1 %7, i64 0, i64 1
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb6
  ]

bb5:                                              ; preds = %bb3
; call alloc::raw_vec::capacity_overflow
  call void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() #14
  unreachable

bb6:                                              ; preds = %bb3
  %8 = bitcast %"core::result::Result<(), alloc::collections::TryReserveErrorKind>"* %_2 to %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"*
  %9 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<(), alloc::collections::TryReserveErrorKind>::Err"* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !4
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h2740986bd2451aa0E(i64 %layout.0, i64 %layout.1) #17
  unreachable
}

; alloc::raw_vec::handle_reserve::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN5alloc7raw_vec14handle_reserve28_$u7b$$u7b$closure$u7d$$u7d$17hcddd93b9640c6676E"(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %e = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %e, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call alloc::collections::TryReserveError::kind
  %4 = call { i64, i64 } @_ZN5alloc11collections15TryReserveError4kind17h3d8b721d0ab5f50eE({ i64, i64 }* align 8 dereferenceable(16) %e)
  %5 = extractvalue { i64, i64 } %4, 0
  %6 = extractvalue { i64, i64 } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { i64, i64 } undef, i64 %5, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h01764974e492a5e6E"(i64 %capacity, i1 zeroext %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_33 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_11 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
  %_7 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %2 = alloca { i8*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 0, i8* %_33, align 1
  store i8 1, i8* %_33, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 1, 0
  br i1 %4, label %bb2, label %bb4

bb31:                                             ; preds = %cleanup
  %5 = load i8, i8* %_33, align 1, !range !5
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb30, label %bb29

cleanup:                                          ; preds = %bb2, %bb26, %bb25, %bb24, %bb23, %bb22, %bb16, %bb14, %bb11, %bb9, %bb8, %bb6, %bb4
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb31

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_33, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %12 = invoke { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb4eecfe077b77c62E"()
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb1
; invoke core::alloc::layout::Layout::array
  %13 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h94607f93a494476bE(i64 %capacity)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store { i64, i64 } %13, { i64, i64 }* %_7, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %_9 = select i1 %16, i64 1, i64 0
  switch i64 %_9, label %bb7 [
    i64 0, label %bb8
    i64 1, label %bb6
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  %layout.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %layout.1 = load i64, i64* %18, align 8, !range !4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %20, align 8
; invoke core::alloc::layout::Layout::size
  %_12 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
          to label %bb9 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb11, %bb6
  unreachable

bb9:                                              ; preds = %bb8
; invoke alloc::raw_vec::alloc_guard
  invoke void @_ZN5alloc7raw_vec11alloc_guard17hf7a589d4c171e91eE(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %_11, i64 %_12)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %21 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %_11 to i64*
  %_14 = load i64, i64* %21, align 8, !range !7
  switch i64 %_14, label %bb12 [
    i64 0, label %bb13
    i64 1, label %bb11
  ]

bb12:                                             ; preds = %bb10
  unreachable

bb13:                                             ; preds = %bb10
  %22 = load i8, i8* %init, align 1, !range !5
  %23 = trunc i8 %22 to i1
  %_16 = zext i1 %23 to i64
  switch i64 %_16, label %bb15 [
    i64 0, label %bb16
    i64 1, label %bb14
  ]

bb11:                                             ; preds = %bb10
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() #14
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_18.0 = load i64, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_18.1 = load i64, i64* %25, align 8, !range !4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %26 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8d383c1ab15fd314E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i64 %_18.0, i64 %_18.1)
          to label %bb17 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_20.0 = load i64, i64* %27, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_20.1 = load i64, i64* %28, align 8, !range !4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %29 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5430462da63e53aeE"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i64 %_20.0, i64 %_20.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb14
  store { i8*, i64 } %29, { i8*, i64 }* %result, align 8
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %30 = bitcast { i8*, i64 }* %result to {}**
  %31 = load {}*, {}** %30, align 8
  %32 = icmp eq {}* %31, null
  %_22 = select i1 %32, i64 1, i64 0
  switch i64 %_22, label %bb21 [
    i64 0, label %bb22
    i64 1, label %bb20
  ]

bb17:                                             ; preds = %bb16
  store { i8*, i64 } %26, { i8*, i64 }* %result, align 8
  br label %bb19

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %33, align 8, !nonnull !3
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %34, align 8
; invoke core::ptr::non_null::NonNull<T>::cast
  %_27 = invoke nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h094fb7fd639e7b91E"(i8* nonnull %ptr.0, i64 %ptr.1)
          to label %bb23 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_24.0 = load i64, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_24.1 = load i64, i64* %36, align 8, !range !4
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h2740986bd2451aa0E(i64 %_24.0, i64 %_24.1) #17
  unreachable

bb23:                                             ; preds = %bb22
; invoke core::ptr::non_null::NonNull<T>::as_ptr
  %_26 = invoke i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %_27)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
; invoke core::ptr::unique::Unique<T>::new_unchecked
  %_25 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h24433ccaa3ed3624E"(i8* %_26)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
; invoke core::ptr::non_null::NonNull<[T]>::len
  %_30 = invoke i64 @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h47ca4375d1ccb646E"(i8* nonnull %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke alloc::raw_vec::RawVec<T,A>::capacity_from_bytes
  %_29 = invoke i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17hddc1d29968f255f3E"(i64 %_30)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i8 0, i8* %_33, align 1
  %37 = bitcast { i8*, i64 }* %2 to i8**
  store i8* %_25, i8** %37, align 8
  %38 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %_29, i64* %38, align 8
  %39 = bitcast { i8*, i64 }* %2 to %"alloc::alloc::Global"*
  br label %bb28

bb28:                                             ; preds = %bb3, %bb27
  %40 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8, !nonnull !3
  %42 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = insertvalue { i8*, i64 } undef, i8* %41, 0
  %45 = insertvalue { i8*, i64 } %44, i64 %43, 1
  ret { i8*, i64 } %45

bb3:                                              ; preds = %bb2
  store { i8*, i64 } %12, { i8*, i64 }* %2, align 8
  br label %bb28

bb29:                                             ; preds = %bb30, %bb31
  %46 = bitcast { i8*, i32 }* %1 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %51 = insertvalue { i8*, i32 } %50, i32 %49, 1
  resume { i8*, i32 } %51

bb30:                                             ; preds = %bb31
  br label %bb29
}

; alloc::raw_vec::RawVec<T,A>::allocate_in
; Function Attrs: nonlazybind uwtable
define internal { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17he60c8f421bff72beE"(i64 %capacity, i1 zeroext %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_33 = alloca i8, align 1
  %result = alloca { i8*, i64 }, align 8
  %_11 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
  %_7 = alloca { i64, i64 }, align 8
  %layout = alloca { i64, i64 }, align 8
  %2 = alloca { i32*, i64 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %init = alloca i8, align 1
  %3 = zext i1 %0 to i8
  store i8 %3, i8* %init, align 1
  store i8 0, i8* %_33, align 1
  store i8 1, i8* %_33, align 1
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 4, 0
  br i1 %4, label %bb2, label %bb4

bb31:                                             ; preds = %cleanup
  %5 = load i8, i8* %_33, align 1, !range !5
  %6 = trunc i8 %5 to i1
  br i1 %6, label %bb30, label %bb29

cleanup:                                          ; preds = %bb2, %bb26, %bb25, %bb24, %bb23, %bb22, %bb16, %bb14, %bb11, %bb9, %bb8, %bb6, %bb4
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb31

bb2:                                              ; preds = %bb1
  store i8 0, i8* %_33, align 1
; invoke alloc::raw_vec::RawVec<T,A>::new_in
  %12 = invoke { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h8cab90f009419f4cE"()
          to label %bb3 unwind label %cleanup

bb4:                                              ; preds = %bb1
; invoke core::alloc::layout::Layout::array
  %13 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h96efe58431c615f0E(i64 %capacity)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  store { i64, i64 } %13, { i64, i64 }* %_7, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  %_9 = select i1 %16, i64 1, i64 0
  switch i64 %_9, label %bb7 [
    i64 0, label %bb8
    i64 1, label %bb6
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb8:                                              ; preds = %bb5
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 0
  %layout.0 = load i64, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_7, i32 0, i32 1
  %layout.1 = load i64, i64* %18, align 8, !range !4
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %layout.0, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %layout.1, i64* %20, align 8
; invoke core::alloc::layout::Layout::size
  %_12 = invoke i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
          to label %bb9 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() #14
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb11, %bb6
  unreachable

bb9:                                              ; preds = %bb8
; invoke alloc::raw_vec::alloc_guard
  invoke void @_ZN5alloc7raw_vec11alloc_guard17hf7a589d4c171e91eE(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %_11, i64 %_12)
          to label %bb10 unwind label %cleanup

bb10:                                             ; preds = %bb9
  %21 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %_11 to i64*
  %_14 = load i64, i64* %21, align 8, !range !7
  switch i64 %_14, label %bb12 [
    i64 0, label %bb13
    i64 1, label %bb11
  ]

bb12:                                             ; preds = %bb10
  unreachable

bb13:                                             ; preds = %bb10
  %22 = load i8, i8* %init, align 1, !range !5
  %23 = trunc i8 %22 to i1
  %_16 = zext i1 %23 to i64
  switch i64 %_16, label %bb15 [
    i64 0, label %bb16
    i64 1, label %bb14
  ]

bb11:                                             ; preds = %bb10
; invoke alloc::raw_vec::capacity_overflow
  invoke void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() #14
          to label %unreachable unwind label %cleanup

bb15:                                             ; preds = %bb13
  unreachable

bb16:                                             ; preds = %bb13
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_18.0 = load i64, i64* %24, align 8
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_18.1 = load i64, i64* %25, align 8, !range !4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate
  %26 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8d383c1ab15fd314E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i64 %_18.0, i64 %_18.1)
          to label %bb17 unwind label %cleanup

bb14:                                             ; preds = %bb13
  %27 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_20.0 = load i64, i64* %27, align 8
  %28 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_20.1 = load i64, i64* %28, align 8, !range !4
; invoke <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
  %29 = invoke { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5430462da63e53aeE"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i64 %_20.0, i64 %_20.1)
          to label %bb18 unwind label %cleanup

bb18:                                             ; preds = %bb14
  store { i8*, i64 } %29, { i8*, i64 }* %result, align 8
  br label %bb19

bb19:                                             ; preds = %bb17, %bb18
  %30 = bitcast { i8*, i64 }* %result to {}**
  %31 = load {}*, {}** %30, align 8
  %32 = icmp eq {}* %31, null
  %_22 = select i1 %32, i64 1, i64 0
  switch i64 %_22, label %bb21 [
    i64 0, label %bb22
    i64 1, label %bb20
  ]

bb17:                                             ; preds = %bb16
  store { i8*, i64 } %26, { i8*, i64 }* %result, align 8
  br label %bb19

bb21:                                             ; preds = %bb19
  unreachable

bb22:                                             ; preds = %bb19
  %33 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 0
  %ptr.0 = load i8*, i8** %33, align 8, !nonnull !3
  %34 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %result, i32 0, i32 1
  %ptr.1 = load i64, i64* %34, align 8
; invoke core::ptr::non_null::NonNull<T>::cast
  %_27 = invoke nonnull i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edf6b76ef5c2601E"(i8* nonnull %ptr.0, i64 %ptr.1)
          to label %bb23 unwind label %cleanup

bb20:                                             ; preds = %bb19
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_24.0 = load i64, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_24.1 = load i64, i64* %36, align 8, !range !4
; call alloc::alloc::handle_alloc_error
  call void @_ZN5alloc5alloc18handle_alloc_error17h2740986bd2451aa0E(i64 %_24.0, i64 %_24.1) #17
  unreachable

bb23:                                             ; preds = %bb22
; invoke core::ptr::non_null::NonNull<T>::as_ptr
  %_26 = invoke i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0d271900e0220776E"(i32* nonnull %_27)
          to label %bb24 unwind label %cleanup

bb24:                                             ; preds = %bb23
; invoke core::ptr::unique::Unique<T>::new_unchecked
  %_25 = invoke nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h67603f3241ed063aE"(i32* %_26)
          to label %bb25 unwind label %cleanup

bb25:                                             ; preds = %bb24
; invoke core::ptr::non_null::NonNull<[T]>::len
  %_30 = invoke i64 @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h47ca4375d1ccb646E"(i8* nonnull %ptr.0, i64 %ptr.1)
          to label %bb26 unwind label %cleanup

bb26:                                             ; preds = %bb25
; invoke alloc::raw_vec::RawVec<T,A>::capacity_from_bytes
  %_29 = invoke i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17h0966277975b1c325E"(i64 %_30)
          to label %bb27 unwind label %cleanup

bb27:                                             ; preds = %bb26
  store i8 0, i8* %_33, align 1
  %37 = bitcast { i32*, i64 }* %2 to i32**
  store i32* %_25, i32** %37, align 8
  %38 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 1
  store i64 %_29, i64* %38, align 8
  %39 = bitcast { i32*, i64 }* %2 to %"alloc::alloc::Global"*
  br label %bb28

bb28:                                             ; preds = %bb3, %bb27
  %40 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8, !nonnull !3
  %42 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %2, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = insertvalue { i32*, i64 } undef, i32* %41, 0
  %45 = insertvalue { i32*, i64 } %44, i64 %43, 1
  ret { i32*, i64 } %45

bb3:                                              ; preds = %bb2
  store { i32*, i64 } %12, { i32*, i64 }* %2, align 8
  br label %bb28

bb29:                                             ; preds = %bb30, %bb31
  %46 = bitcast { i8*, i32 }* %1 to i8**
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = insertvalue { i8*, i32 } undef, i8* %47, 0
  %51 = insertvalue { i8*, i32 } %50, i32 %49, 1
  resume { i8*, i32 } %51

bb30:                                             ; preds = %bb31
  br label %bb29
}

; alloc::raw_vec::RawVec<T,A>::try_reserve
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11try_reserve17h1ec6e3749b2acd74E"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, { i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
; call alloc::raw_vec::RawVec<T,A>::needs_to_grow
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17haec67ce49e1ad744E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %1 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %1, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
; call alloc::raw_vec::RawVec<T,A>::grow_amortized
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h9d22a8b4da0e497eE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, { i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  ret void
}

; alloc::raw_vec::RawVec<T,A>::needs_to_grow
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17haec67ce49e1ad744E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %0 = alloca i64, align 8
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %2 = load i64, i64* %1, align 8
  store i64 %2, i64* %0, align 8
  %3 = load i64, i64* %0, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = sub i64 %3, %len
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = icmp ugt i64 %additional, %4
  ret i1 %5
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5474730dd8f6b3a6E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_13 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 4, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !5
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  br label %bb7

bb5:                                              ; preds = %bb3
  %6 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to {}**
  store {}* null, {}** %6, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb5
  ret void

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  %7 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %_9 = load i64, i64* %7, align 8
  %size = mul i64 4, %_9
; call core::alloc::layout::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %size, i64 4)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i32*, i64 }* %self to i32**
  %_16 = load i32*, i32** %9, align 8, !nonnull !3
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hade5f81d73a274b2E"(i32* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7b60192b0b0ec656E"(i8* nonnull %_15)
  br label %bb11

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, { i64, i64 } }* %_13 to i8**
  store i8* %_14, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_13, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %layout.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %layout.1, i64* %13, align 8
  %14 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %15 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %14 to { i8*, { i64, i64 } }*
  %16 = bitcast { i8*, { i64, i64 } }* %15 to i8*
  %17 = bitcast { i8*, { i64, i64 } }* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  br label %bb12
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h6348476987d32bf8E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_13 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 1, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !5
  %5 = trunc i8 %4 to i1
  br i1 %5, label %bb5, label %bb6

bb6:                                              ; preds = %bb3
  br label %bb7

bb5:                                              ; preds = %bb3
  %6 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to {}**
  store {}* null, {}** %6, align 8
  br label %bb12

bb12:                                             ; preds = %bb11, %bb5
  ret void

bb7:                                              ; preds = %bb6
  br label %bb8

bb8:                                              ; preds = %bb7
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_9 = load i64, i64* %7, align 8
  %size = mul i64 1, %_9
; call core::alloc::layout::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %size, i64 1)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i8*, i64 }* %self to i8**
  %_16 = load i8*, i8** %9, align 8, !nonnull !3
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h63e56ceddcef9d95E"(i8* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h7b60192b0b0ec656E"(i8* nonnull %_15)
  br label %bb11

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, { i64, i64 } }* %_13 to i8**
  store i8* %_14, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %_13, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 0
  store i64 %layout.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %11, i32 0, i32 1
  store i64 %layout.1, i64* %13, align 8
  %14 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %0 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %15 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %14 to { i8*, { i64, i64 } }*
  %16 = bitcast { i8*, { i64, i64 } }* %15 to i8*
  %17 = bitcast { i8*, { i64, i64 } }* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  br label %bb12
}

; alloc::raw_vec::RawVec<T,A>::grow_amortized
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h9d22a8b4da0e497eE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, { i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional) unnamed_addr #0 {
start:
  %_30 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
  %_28 = alloca %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>", align 8
  %_27 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>", align 8
  %_13 = alloca { i64, i64 }, align 8
  %_9 = alloca %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>", align 8
  %_8 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>", align 8
  %_6 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %1 = icmp eq i64 4, 0
  br i1 %1, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
; call <T as core::convert::Into<U>>::into
  %7 = call { i64, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h29f0522f68ecbb38E"(i64 %4, i64 %6)
  %_5.0 = extractvalue { i64, i64 } %7, 0
  %_5.1 = extractvalue { i64, i64 } %7, 1
  br label %bb3

bb4:                                              ; preds = %bb1
; call core::num::<impl usize>::checked_add
  %8 = call { i64, i64 } @"_ZN4core3num23_$LT$impl$u20$usize$GT$11checked_add17h84ca15c99722b57fE"(i64 %len, i64 %additional)
  %_10.0 = extractvalue { i64, i64 } %8, 0
  %_10.1 = extractvalue { i64, i64 } %8, 1
  br label %bb5

bb5:                                              ; preds = %bb4
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  store i64 0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_13, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17hd3706a5d4ad131c1E"(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* noalias nocapture sret(%"core::result::Result<usize, alloc::collections::TryReserveErrorKind>") dereferenceable(24) %_9, i64 %_10.0, i64 %_10.1, i64 %11, i64 %13)
  br label %bb6

bb6:                                              ; preds = %bb5
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h512ef28b260f3ad5E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") dereferenceable(24) %_8, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* noalias nocapture dereferenceable(24) %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to i64*
  %_14 = load i64, i64* %14, align 8, !range !7
  switch i64 %_14, label %bb9 [
    i64 0, label %bb8
    i64 1, label %bb10
  ]

bb9:                                              ; preds = %bb7
  unreachable

bb8:                                              ; preds = %bb7
  %15 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %16 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %15, i32 0, i32 1
  %val = load i64, i64* %16, align 8
  %17 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %_20 = load i64, i64* %17, align 8
  %_19 = mul i64 %_20, 2
; call core::cmp::max
  %cap = call i64 @_ZN4core3cmp3max17he2aa30427c1c7facE(i64 %_19, i64 %val)
  br label %bb12

bb10:                                             ; preds = %bb7
  %18 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %_8 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %19 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %18, i32 0, i32 1
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 0
  %residual.0 = load i64, i64* %20, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %19, i32 0, i32 1
  %residual.1 = load i64, i64* %21, align 8
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1851a1c4c812dc87E"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc169 to %"core::panic::location::Location"*))
  br label %bb11

bb11:                                             ; preds = %bb10
  br label %bb23

bb23:                                             ; preds = %bb21, %bb11
  br label %bb24

bb12:                                             ; preds = %bb8
; call core::cmp::max
  %cap1 = call i64 @_ZN4core3cmp3max17he2aa30427c1c7facE(i64 4, i64 %cap)
  br label %bb13

bb13:                                             ; preds = %bb12
; call core::alloc::layout::Layout::array
  %22 = call { i64, i64 } @_ZN4core5alloc6layout6Layout5array17h96efe58431c615f0E(i64 %cap1)
  %new_layout.0 = extractvalue { i64, i64 } %22, 0
  %new_layout.1 = extractvalue { i64, i64 } %22, 1
  br label %bb14

bb14:                                             ; preds = %bb13
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5474730dd8f6b3a6E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_30, { i32*, i64 }* align 8 dereferenceable(16) %self)
  br label %bb15

bb15:                                             ; preds = %bb14
  %_33 = bitcast { i32*, i64 }* %self to %"alloc::alloc::Global"*
; call alloc::raw_vec::finish_grow
  call void @_ZN5alloc7raw_vec11finish_grow17hd91eacef6c9cebbdE(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>") dereferenceable(24) %_28, i64 %new_layout.0, i64 %new_layout.1, %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture dereferenceable(24) %_30, %"alloc::alloc::Global"* nonnull align 1 %_33)
  br label %bb16

bb16:                                             ; preds = %bb15
; call <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h8d65381b63c35c26E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") dereferenceable(24) %_27, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %_28)
  br label %bb17

bb17:                                             ; preds = %bb16
  %23 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to i64*
  %_34 = load i64, i64* %23, align 8, !range !7
  switch i64 %_34, label %bb19 [
    i64 0, label %bb18
    i64 1, label %bb20
  ]

bb19:                                             ; preds = %bb17
  unreachable

bb18:                                             ; preds = %bb17
  %24 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %25 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %24, i32 0, i32 1
  %26 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %25, i32 0, i32 0
  %val.0 = load i8*, i8** %26, align 8, !nonnull !3
  %27 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %25, i32 0, i32 1
  %val.1 = load i64, i64* %27, align 8
; call alloc::raw_vec::RawVec<T,A>::set_ptr
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7set_ptr17h69fc76c8c8333331E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i8* nonnull %val.0, i64 %val.1)
  br label %bb22

bb20:                                             ; preds = %bb17
  %28 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %_27 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %29 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %28, i32 0, i32 1
  %30 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 0
  %residual.02 = load i64, i64* %30, align 8
  %31 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %29, i32 0, i32 1
  %residual.13 = load i64, i64* %31, align 8
; call <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h86cef55cf43495fbE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %0, i64 %residual.02, i64 %residual.13, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc171 to %"core::panic::location::Location"*))
  br label %bb21

bb21:                                             ; preds = %bb20
  br label %bb23

bb24:                                             ; preds = %bb3, %bb22, %bb23
  ret void

bb22:                                             ; preds = %bb18
  %32 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 0, i64* %32, align 8
  br label %bb24

bb3:                                              ; preds = %bb2
  %33 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %34 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %33, i32 0, i32 1
  %35 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 0
  store i64 %_5.0, i64* %35, align 8
  %36 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %34, i32 0, i32 1
  store i64 %_5.1, i64* %36, align 8
  %37 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %0 to i64*
  store i64 1, i64* %37, align 8
  br label %bb24
}

; alloc::raw_vec::RawVec<T,A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h703d60a84757f07cE"(i64 %capacity) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !5
  %1 = trunc i8 %0 to i1
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %2 = call { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17h01764974e492a5e6E"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i8*, i64 } %2, 0
  %4 = extractvalue { i8*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i8*, i64 } undef, i8* %3, 0
  %6 = insertvalue { i8*, i64 } %5, i64 %4, 1
  ret { i8*, i64 } %6
}

; alloc::raw_vec::RawVec<T,A>::with_capacity_in
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$16with_capacity_in17h7ee747ba621e1710E"(i64 %capacity) unnamed_addr #1 {
start:
  %_4 = alloca i8, align 1
  store i8 0, i8* %_4, align 1
  %0 = load i8, i8* %_4, align 1, !range !5
  %1 = trunc i8 %0 to i1
; call alloc::raw_vec::RawVec<T,A>::allocate_in
  %2 = call { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$11allocate_in17he60c8f421bff72beE"(i64 %capacity, i1 zeroext %1)
  %3 = extractvalue { i32*, i64 } %2, 0
  %4 = extractvalue { i32*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { i32*, i64 } undef, i32* %3, 0
  %6 = insertvalue { i32*, i64 } %5, i64 %4, 1
  ret { i32*, i64 } %6
}

; alloc::raw_vec::RawVec<T,A>::capacity_from_bytes
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17h0966277975b1c325E"(i64 %excess) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i64 4, 0
  %0 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %0, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %1 = udiv i64 %excess, 4
  ret i64 %1

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([25 x i8]* @str.3 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*)) #14
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::capacity_from_bytes
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17hddc1d29968f255f3E"(i64 %excess) unnamed_addr #0 {
start:
  br label %bb1

bb1:                                              ; preds = %start
  %_7 = icmp eq i64 1, 0
  %0 = call i1 @llvm.expect.i1(i1 %_7, i1 false)
  br i1 %0, label %panic, label %bb2

bb2:                                              ; preds = %bb1
  %1 = udiv i64 %excess, 1
  ret i64 %1

panic:                                            ; preds = %bb1
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast ([25 x i8]* @str.3 to [0 x i8]*), i64 25, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc173 to %"core::panic::location::Location"*)) #14
  unreachable
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h308a0c43bee55412E"({ i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i32*, i64 }* %self to i32**
  %_2 = load i32*, i32** %0, align 8, !nonnull !3
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h6d4c678d402edfa1E"(i32* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32* %1
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h6717912e53934c73E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !3
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6ff67cc14f4bcfdE"(i8* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nonlazybind uwtable
define internal { i32*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17h8cab90f009419f4cE"() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i32*, i64 }, align 8
; invoke core::ptr::unique::Unique<T>::dangling
  %_2 = invoke nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h8f949ce8cf6d29f4E"()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %2 = bitcast { i32*, i64 }* %1 to i32**
  store i32* %_2, i32** %2, align 8
  %3 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = bitcast { i32*, i64 }* %1 to %"alloc::alloc::Global"*
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8, !nonnull !3
  %7 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { i32*, i64 } undef, i32* %6, 0
  %10 = insertvalue { i32*, i64 } %9, i64 %8, 1
  ret { i32*, i64 } %10

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb2

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; alloc::raw_vec::RawVec<T,A>::new_in
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64 } @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$6new_in17hb4eecfe077b77c62E"() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = alloca { i8*, i64 }, align 8
; invoke core::ptr::unique::Unique<T>::dangling
  %_2 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$8dangling17h1a88186ed05691d5E"()
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %2 = bitcast { i8*, i64 }* %1 to i8**
  store i8* %_2, i8** %2, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  store i64 0, i64* %3, align 8
  %4 = bitcast { i8*, i64 }* %1 to %"alloc::alloc::Global"*
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8, !nonnull !3
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = insertvalue { i8*, i64 } undef, i8* %6, 0
  %10 = insertvalue { i8*, i64 } %9, i64 %8, 1
  ret { i8*, i64 } %10

bb2:                                              ; preds = %cleanup
  br label %bb3

cleanup:                                          ; preds = %start
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb2

bb3:                                              ; preds = %bb2
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21
}

; alloc::raw_vec::RawVec<T,A>::reserve
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve17h56483b440afe8d96E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional) unnamed_addr #1 {
start:
; call alloc::raw_vec::RawVec<T,A>::needs_to_grow
  %_4 = call zeroext i1 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$13needs_to_grow17haec67ce49e1ad744E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
  br i1 %_4, label %bb2, label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb2:                                              ; preds = %bb1
; call alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h20e1f70d353f6cb1E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i64 %len, i64 %additional)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4
}

; alloc::raw_vec::RawVec<T,A>::reserve::do_reserve_and_handle
; Function Attrs: cold nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7reserve21do_reserve_and_handle17h20e1f70d353f6cb1E"({ i32*, i64 }* align 8 dereferenceable(16) %slf, i64 %len, i64 %additional) unnamed_addr #3 {
start:
  %_5 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
; call alloc::raw_vec::RawVec<T,A>::grow_amortized
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14grow_amortized17h9d22a8b4da0e497eE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %_5, { i32*, i64 }* align 8 dereferenceable(16) %slf, i64 %len, i64 %additional)
  br label %bb1

bb1:                                              ; preds = %start
; call alloc::raw_vec::handle_reserve
  call void @_ZN5alloc7raw_vec14handle_reserve17h7b0001c69f7109f0E(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::raw_vec::RawVec<T,A>::set_ptr
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$7set_ptr17h69fc76c8c8333331E"({ i32*, i64 }* align 8 dereferenceable(16) %self, i8* nonnull %ptr.0, i64 %ptr.1) unnamed_addr #0 {
start:
; call core::ptr::non_null::NonNull<T>::cast
  %_5 = call nonnull i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h5edf6b76ef5c2601E"(i8* nonnull %ptr.0, i64 %ptr.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_4 = call i32* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h0d271900e0220776E"(i32* nonnull %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::unique::Unique<T>::new_unchecked
  %_3 = call nonnull i32* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h67603f3241ed063aE"(i32* %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  %0 = bitcast { i32*, i64 }* %self to i32**
  store i32* %_3, i32** %0, align 8
; call core::ptr::non_null::NonNull<[T]>::len
  %_8 = call i64 @"_ZN4core3ptr8non_null26NonNull$LT$$u5b$T$u5d$$GT$3len17h47ca4375d1ccb646E"(i8* nonnull %ptr.0, i64 %ptr.1)
  br label %bb4

bb4:                                              ; preds = %bb3
; call alloc::raw_vec::RawVec<T,A>::capacity_from_bytes
  %_7 = call i64 @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$19capacity_from_bytes17h0966277975b1c325E"(i64 %_8)
  br label %bb5

bb5:                                              ; preds = %bb4
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  store i64 %_7, i64* %1, align 8
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3a9759519f72ee46E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h6d37de34838ca823E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hdbe86964a21a990eE"(i8* nonnull %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !4
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17h24c40ee37b86191bE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  ret void
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate_zeroed
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$15allocate_zeroed17h5430462da63e53aeE"(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5344c59acf754eccE(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext true)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::grow
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h3ca4328409e67b41E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::grow_impl
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global9grow_impl17h695a0b337db104a7E(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %old_layout.0, i64 %old_layout.1, i64 %new_layout.0, i64 %new_layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <alloc::alloc::Global as core::alloc::Allocator>::allocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h8d383c1ab15fd314E"(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1) unnamed_addr #1 {
start:
; call alloc::alloc::Global::alloc_impl
  %0 = call { i8*, i64 } @_ZN5alloc5alloc6Global10alloc_impl17h5344c59acf754eccE(%"alloc::alloc::Global"* nonnull align 1 %self, i64 %layout.0, i64 %layout.1, i1 zeroext false)
  %1 = extractvalue { i8*, i64 } %0, 0
  %2 = extractvalue { i8*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %4 = insertvalue { i8*, i64 } %3, i64 %2, 1
  ret { i8*, i64 } %4
}

; <alloc::string::String as core::ops::deref::Deref>::deref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h89e4c5cd77eb814bE"(%"alloc::string::String"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
; call <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7272a32861d96e65E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::str::converts::from_utf8_unchecked
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17hcf64082f20328a92E([0 x i8]* nonnull align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; <core::alloc::layout::Layout as core::clone::Clone>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h921237c6daf7c4d5E"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8, !range !4
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h56e91504513e52caE"(i8 %0) unnamed_addr #1 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h9a9aed8ac8b40000E(i8* align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h300309d0b040d84eE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17hfebc8c4f60ede518E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5e65ed8231a75449E(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he4f31a74e0933479E"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i32* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h9d2e1ac6db627a2cE"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<i32>", %"alloc::vec::Vec<i32>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i32]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h1d79aca7f8421263E(i32* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i32]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i32]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h7272a32861d96e65E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_ptr
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h1e5124c3802c9cf3E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
; call core::slice::raw::from_raw_parts
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17hdd82848a7099ad59E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; <alloc::string::String as core::convert::From<&str>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hd8bf6e5f24f818a4E"(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
; call alloc::str::<impl alloc::borrow::ToOwned for str>::to_owned
  call void @"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17hc3f484f7909909c1E"(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %0, [0 x i8]* nonnull align 1 %s.0, i64 %s.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc1a0a446cef6749dE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h6348476987d32bf8E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i8*, i64 }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !3
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !4
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3a9759519f72ee46E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hffec8c2f9e9e95eeE"({ i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h5474730dd8f6b3a6E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i32*, i64 }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %5 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %4 to { i8*, { i64, i64 } }*
  %6 = bitcast { i8*, { i64, i64 } }* %5 to i8**
  %ptr = load i8*, i8** %6, align 8, !nonnull !3
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !4
  %_7 = bitcast { i32*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h3a9759519f72ee46E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <alloc::collections::TryReserveErrorKind as core::clone::Clone>::clone
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN78_$LT$alloc..collections..TryReserveErrorKind$u20$as$u20$core..clone..Clone$GT$5clone17hd92f4caa583b5dedE"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_2 = alloca i64*, align 8
  %0 = alloca { i64, i64 }, align 8
  %1 = bitcast i64** %_2 to { i64, i64 }**
  store { i64, i64 }* %self, { i64, i64 }** %1, align 8
  %2 = bitcast i64** %_2 to { i64, i64 }**
  %3 = load { i64, i64 }*, { i64, i64 }** %2, align 8, !nonnull !3
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  %_4 = select i1 %6, i64 0, i64 1
  switch i64 %_4, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 0, i64* %7, align 8
  br label %bb6

bb1:                                              ; preds = %start
  %8 = bitcast i64** %_2 to { i64, i64 }**
  %__self_0 = load { i64, i64 }*, { i64, i64 }** %8, align 8, !nonnull !3
  %9 = bitcast i64** %_2 to { i64, i64 }**
  %10 = load { i64, i64 }*, { i64, i64 }** %9, align 8, !nonnull !3
  %__self_1 = bitcast { i64, i64 }* %10 to {}*
; call <core::alloc::layout::Layout as core::clone::Clone>::clone
  %11 = call { i64, i64 } @"_ZN66_$LT$core..alloc..layout..Layout$u20$as$u20$core..clone..Clone$GT$5clone17h921237c6daf7c4d5E"({ i64, i64 }* align 8 dereferenceable(16) %__self_0)
  %_7.0 = extractvalue { i64, i64 } %11, 0
  %_7.1 = extractvalue { i64, i64 } %11, 1
  br label %bb4

bb4:                                              ; preds = %bb1
; call core::clone::Clone::clone
  call void @_ZN4core5clone5Clone5clone17ha3f4b43dc8e9765dE({}* nonnull align 1 %__self_1)
  br label %bb5

bb5:                                              ; preds = %bb4
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  store i64 %_7.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_7.1, i64* %13, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb5
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = insertvalue { i64, i64 } undef, i64 %15, 0
  %19 = insertvalue { i64, i64 } %18, i64 %17, 1
  ret { i64, i64 } %19
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h3a3b9f3819e2a841E"(i64 %0, i64 %1) unnamed_addr #1 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err", align 1
  %2 = alloca { i64, i64 }, align 8
  %self = alloca { i64, i64 }, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  store i64 %0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i64, i64 }* %self to i64*
  %_2 = load i64, i64* %5, align 8, !range !7
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %6 = bitcast { i64, i64 }* %self to %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok"*
  %7 = getelementptr inbounds %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok", %"core::result::Result<usize, core::alloc::layout::LayoutError>::Ok"* %6, i32 0, i32 1
  %v = load i64, i64* %7, align 8
  %8 = bitcast { i64, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"*
  %9 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Continue"* %8, i32 0, i32 1
  store i64 %v, i64* %9, align 8
  %10 = bitcast { i64, i64 }* %2 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>::Err"* %_6 to %"core::alloc::layout::LayoutError"*
  %12 = bitcast { i64, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Break"*
  %13 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::layout::LayoutError>, usize>::Break"* %12, i32 0, i32 1
  %14 = bitcast { i64, i64 }* %2 to i64*
  store i64 1, i64* %14, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 0
  %16 = load i64, i64* %15, align 8, !range !7
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %2, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = insertvalue { i64, i64 } undef, i64 %16, 0
  %20 = insertvalue { i64, i64 } %19, i64 %18, 1
  ret { i64, i64 } %20
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4aae810808676ed2E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>") dereferenceable(24) %0, %"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !7
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"*
  %3 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Continue"* %2, i32 0, i32 1
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %0 to i64*
  store i64 0, i64* %4, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<(), alloc::collections::TryReserveError>"* %self to %"core::result::Result<(), alloc::collections::TryReserveError>::Err"*
  %6 = getelementptr inbounds %"core::result::Result<(), alloc::collections::TryReserveError>::Err", %"core::result::Result<(), alloc::collections::TryReserveError>::Err"* %5, i32 0, i32 1
  %7 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 0
  %e.0 = load i64, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %6, i32 0, i32 1
  %e.1 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %10, align 8
  %11 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"*
  %12 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  store i64 %14, i64* %17, align 8
  %18 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %0 to i64*
  store i64 1, i64* %19, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h512ef28b260f3ad5E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>") dereferenceable(24) %0, %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !7
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %v = load i64, i64* %3, align 8
  %4 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"*
  %5 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Continue"* %4, i32 0, i32 1
  store i64 %v, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 0, i64* %6, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %7 = bitcast %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"*
  %8 = getelementptr inbounds %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<usize, alloc::collections::TryReserveErrorKind>::Err"* %7, i32 0, i32 1
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 0
  %e.0 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %8, i32 0, i32 1
  %e.1 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %12, align 8
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"*
  %14 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>::Break"* %13, i32 0, i32 1
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 0
  store i64 %16, i64* %19, align 8
  %20 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %14, i32 0, i32 1
  store i64 %18, i64* %20, align 8
  %21 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, usize>"* %0 to i64*
  store i64 1, i64* %21, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h514aeef8c7f87485E"(i8* %0) unnamed_addr #1 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %1 = alloca i8*, align 8
  %self = alloca i8*, align 8
  store i8* %0, i8** %self, align 8
  %2 = bitcast i8** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %v = load i8*, i8** %self, align 8, !nonnull !3
  store i8* %v, i8** %1, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %5 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %6 = bitcast i8** %1 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"*
  %7 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<u8>>::Break"* %6 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %8 = bitcast i8** %1 to {}**
  store {}* null, {}** %8, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %9 = load i8*, i8** %1, align 8
  ret i8* %9
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h88ed557fdc2bbe70E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>") dereferenceable(24) %0, %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !7
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 0
  %v.0 = load i64, i64* %4, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8, !range !4
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 0
  store i64 %v.0, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>"* %self to %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err", %"core::result::Result<core::alloc::layout::Layout, alloc::collections::TryReserveErrorKind>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveErrorKind>, core::alloc::layout::Layout>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h8d65381b63c35c26E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>") dereferenceable(24) %0, %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_6 = alloca { i64, i64 }, align 8
  %1 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !7
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Ok"* %2, i32 0, i32 1
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 0
  %v.0 = load i8*, i8** %4, align 8, !nonnull !3
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %3, i32 0, i32 1
  %v.1 = load i64, i64* %5, align 8
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"*
  %7 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Continue"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 0
  store i8* %v.0, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %7, i32 0, i32 1
  store i64 %v.1, i64* %9, align 8
  %10 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 0, i64* %10, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %11 = bitcast %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>"* %self to %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"*
  %12 = getelementptr inbounds %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err", %"core::result::Result<core::ptr::non_null::NonNull<[u8]>, alloc::collections::TryReserveError>::Err"* %11, i32 0, i32 1
  %13 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 0
  %e.0 = load i64, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %12, i32 0, i32 1
  %e.1 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  store i64 %e.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  store i64 %e.1, i64* %16, align 8
  %17 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %18 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %17, i32 0, i32 1
  %19 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_6, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 0
  store i64 %20, i64* %23, align 8
  %24 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %18, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>, core::ptr::non_null::NonNull<[u8]>>"* %0 to i64*
  store i64 1, i64* %25, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  ret void
}

; <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 } @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17hbe57e42edb4ffbe4E"(i8* %0, i64 %1) unnamed_addr #1 {
start:
  %_6 = alloca %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err", align 1
  %2 = alloca { i8*, i64 }, align 8
  %self = alloca { i8*, i64 }, align 8
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  store i8* %0, i8** %3, align 8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %5 = bitcast { i8*, i64 }* %self to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_2 = select i1 %7, i64 1, i64 0
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %v.0 = load i8*, i8** %8, align 8, !nonnull !3
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %v.1 = load i64, i64* %9, align 8
  %10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %v.0, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %v.1, i64* %11, align 8
  br label %bb4

bb1:                                              ; preds = %start
  %12 = bitcast %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"* %_6 to %"core::alloc::AllocError"*
  %13 = bitcast { i8*, i64 }* %2 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"*
  %14 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, core::alloc::AllocError>, core::ptr::non_null::NonNull<[u8]>>::Break"* %13 to %"core::result::Result<core::convert::Infallible, core::alloc::AllocError>::Err"*
  %15 = bitcast { i8*, i64 }* %2 to {}**
  store {}* null, {}** %15, align 8
  br label %bb4

bb4:                                              ; preds = %bb3, %bb1
  %16 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = insertvalue { i8*, i64 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i64 } %20, i64 %19, 1
  ret { i8*, i64 } %21
}

; <main::myError as core::convert::From<alloc::collections::TryReserveError>>::from
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN96_$LT$main..myError$u20$as$u20$core..convert..From$LT$alloc..collections..TryReserveError$GT$$GT$4from17hda4eee8c92735da6E"(%myError* noalias nocapture sret(%myError) dereferenceable(24) %0, i64 %t.0, i64 %t.1) unnamed_addr #0 {
start:
  %_2 = alloca %"alloc::string::String", align 8
; call <alloc::string::String as core::convert::From<&str>>::from
  call void @"_ZN76_$LT$alloc..string..String$u20$as$u20$core..convert..From$LT$$RF$str$GT$$GT$4from17hd8bf6e5f24f818a4E"(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %_2, [0 x i8]* nonnull align 1 bitcast (<{ [45 x i8] }>* @alloc174 to [0 x i8]*), i64 45)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %myError* %0 to %"myError::allocation_fail"*
  %2 = bitcast %"myError::allocation_fail"* %1 to %"alloc::string::String"*
  %3 = bitcast %"alloc::string::String"* %2 to i8*
  %4 = bitcast %"alloc::string::String"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  ret void
}

; main::try_test_oom
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main12try_test_oom17ha9b15b348bfbdee5E(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %0, %AA* align 8 dereferenceable(24) %ass) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_6 = alloca %"core::result::Result<(), alloc::collections::TryReserveError>", align 8
  %_5 = alloca %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>", align 8
  %a = alloca %"alloc::vec::Vec<i32>", align 8
  %v5 = alloca %"alloc::string::String", align 8
  %v4 = alloca %"alloc::string::String", align 8
; call alloc::string::String::with_capacity
  call void @_ZN5alloc6string6String13with_capacity17h98f923d21043fb33E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %v4, i64 100)
  br label %bb1

bb1:                                              ; preds = %start
; invoke alloc::string::String::with_capacity
  invoke void @_ZN5alloc6string6String13with_capacity17h98f923d21043fb33E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %v5, i64 50)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke alloc::vec::Vec<T>::new
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h1628d65a2d6d9671E"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %a)
          to label %bb3 unwind label %cleanup1

bb15:                                             ; preds = %bb14, %cleanup
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v4) #15
  br label %bb16

cleanup:                                          ; preds = %bb10, %bb1
  %2 = landingpad { i8*, i32 }
          cleanup
  %3 = extractvalue { i8*, i32 } %2, 0
  %4 = extractvalue { i8*, i32 } %2, 1
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %3, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %4, i32* %6, align 8
  br label %bb15

bb3:                                              ; preds = %bb2
  %7 = getelementptr inbounds %AA, %AA* %ass, i32 0, i32 1
  %_9 = load i32, i32* %7, align 8
  %_8 = sext i32 %_9 to i64
; invoke alloc::vec::Vec<T,A>::try_reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$11try_reserve17hd8e40c6cbd1c1e4bE"(%"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture sret(%"core::result::Result<(), alloc::collections::TryReserveError>") dereferenceable(24) %_6, %"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %a, i64 %_8)
          to label %bb4 unwind label %cleanup2

bb14:                                             ; preds = %bb13, %cleanup1
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v5) #15
  br label %bb15

cleanup1:                                         ; preds = %bb9, %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb14

bb4:                                              ; preds = %bb3
; invoke <core::result::Result<T,E> as core::ops::try_trait::Try>::branch
  invoke void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h4aae810808676ed2E"(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>") dereferenceable(24) %_5, %"core::result::Result<(), alloc::collections::TryReserveError>"* noalias nocapture dereferenceable(24) %_6)
          to label %bb5 unwind label %cleanup2

bb13:                                             ; preds = %cleanup2
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %a) #15
  br label %bb14

cleanup2:                                         ; preds = %bb8, %bb4, %bb3
  %13 = landingpad { i8*, i32 }
          cleanup
  %14 = extractvalue { i8*, i32 } %13, 0
  %15 = extractvalue { i8*, i32 } %13, 1
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %14, i8** %16, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %15, i32* %17, align 8
  br label %bb13

bb5:                                              ; preds = %bb4
  %18 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %_5 to i64*
  %_10 = load i64, i64* %18, align 8, !range !7
  switch i64 %_10, label %bb7 [
    i64 0, label %bb6
    i64 1, label %bb8
  ]

bb7:                                              ; preds = %bb5
  unreachable

bb6:                                              ; preds = %bb5
  %19 = bitcast %"core::result::Result<(), myError>"* %0 to i64*
  store i64 0, i64* %19, align 8
  br label %bb9

bb8:                                              ; preds = %bb5
  %20 = bitcast %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>"* %_5 to %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"*
  %21 = getelementptr inbounds %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break", %"core::ops::control_flow::ControlFlow<core::result::Result<core::convert::Infallible, alloc::collections::TryReserveError>>::Break"* %20, i32 0, i32 1
  %22 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 0
  %residual.0 = load i64, i64* %22, align 8
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %21, i32 0, i32 1
  %residual.1 = load i64, i64* %23, align 8
; invoke <core::result::Result<T,F> as core::ops::try_trait::FromResidual<core::result::Result<core::convert::Infallible,E>>>::from_residual
  invoke void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h1670b051f84546dcE"(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %0, i64 %residual.0, i64 %residual.1, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc176 to %"core::panic::location::Location"*))
          to label %bb17 unwind label %cleanup2

bb17:                                             ; preds = %bb8
  br label %bb9

bb9:                                              ; preds = %bb6, %bb17
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %a)
          to label %bb10 unwind label %cleanup1

bb10:                                             ; preds = %bb9
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v5)
          to label %bb11 unwind label %cleanup

bb11:                                             ; preds = %bb10
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v4)
  br label %bb12

bb16:                                             ; preds = %bb15
  %24 = bitcast { i8*, i32 }* %1 to i8**
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = insertvalue { i8*, i32 } undef, i8* %25, 0
  %29 = insertvalue { i8*, i32 } %28, i32 %27, 1
  resume { i8*, i32 } %29

bb12:                                             ; preds = %bb11
  ret void
}

; main::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main4main17h4deaa0808ba0c029E() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_75 = alloca i8, align 1
  %_74 = alloca i8, align 1
  %_73 = alloca i8, align 1
  %_72 = alloca i8, align 1
  %_58 = alloca %"core::fmt::Arguments", align 8
  %_51 = alloca i64*, align 8
  %_50 = alloca [1 x { i8*, i64* }], align 8
  %_43 = alloca %"core::fmt::Arguments", align 8
  %log2 = alloca %"alloc::string::String", align 8
  %err1 = alloca %myError, align 8
  %result_try = alloca %"core::result::Result<(), myError>", align 8
  %_29 = alloca i64*, align 8
  %_28 = alloca [1 x { i8*, i64* }], align 8
  %_21 = alloca %"core::fmt::Arguments", align 8
  %log = alloca %"alloc::string::String", align 8
  %err = alloca %myError, align 8
  %result_oom_safe = alloca %"core::result::Result<(), myError>", align 8
  %_10 = alloca { i32*, i32 }, align 8
  %bb = alloca %AA, align 8
  %v3 = alloca %"alloc::vec::Vec<i32>", align 8
  %_5 = alloca { i32*, i32 }, align 8
  %aa = alloca %AA, align 8
  %v2 = alloca %"alloc::vec::Vec<i32>", align 8
  %v1 = alloca %"alloc::vec::Vec<i32>", align 8
  %v0 = alloca %"alloc::vec::Vec<i32>", align 8
  store i8 0, i8* %_75, align 1
  store i8 0, i8* %_72, align 1
  store i8 0, i8* %_74, align 1
  store i8 0, i8* %_73, align 1
; call alloc::vec::Vec<T>::with_capacity
  call void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha9af155fff12e34aE"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %v0, i64 662500)
  br label %bb1

bb1:                                              ; preds = %start
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha9af155fff12e34aE"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %v1, i64 30000)
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha9af155fff12e34aE"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %v2, i64 2800)
          to label %bb3 unwind label %cleanup3

bb30:                                             ; preds = %bb29, %cleanup
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v0) #15
  br label %bb31

cleanup:                                          ; preds = %bb22, %bb1
  %1 = landingpad { i8*, i32 }
          cleanup
  %2 = extractvalue { i8*, i32 } %1, 0
  %3 = extractvalue { i8*, i32 } %1, 1
  %4 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %2, i8** %4, align 8
  %5 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  br label %bb30

bb3:                                              ; preds = %bb2
  %6 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_5, i32 0, i32 1
  store i32 12, i32* %6, align 8
  %7 = bitcast { i32*, i32 }* %_5 to i32**
  store i32* bitcast (<{ [4 x i8] }>* @alloc13 to i32*), i32** %7, align 8
  %8 = getelementptr inbounds %AA, %AA* %aa, i32 0, i32 1
  store i32 500, i32* %8, align 8
  %9 = bitcast %AA* %aa to { i32*, i32 }*
  %10 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_5, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_5, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %9, i32 0, i32 0
  store i32* %11, i32** %14, align 8
  %15 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %9, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = getelementptr inbounds %AA, %AA* %aa, i32 0, i32 2
  store i32 14, i32* %16, align 4
; invoke alloc::vec::Vec<T>::with_capacity
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$13with_capacity17ha9af155fff12e34aE"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %v3, i64 300)
          to label %bb4 unwind label %cleanup4

bb29:                                             ; preds = %bb28, %cleanup3
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v1) #15
  br label %bb30

cleanup3:                                         ; preds = %bb21, %bb2
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = extractvalue { i8*, i32 } %17, 0
  %19 = extractvalue { i8*, i32 } %17, 1
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %18, i8** %20, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %19, i32* %21, align 8
  br label %bb29

bb4:                                              ; preds = %bb3
  %22 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_10, i32 0, i32 1
  store i32 12, i32* %22, align 8
  %23 = bitcast { i32*, i32 }* %_10 to i32**
  store i32* bitcast (<{ [4 x i8] }>* @alloc13 to i32*), i32** %23, align 8
  %24 = getelementptr inbounds %AA, %AA* %bb, i32 0, i32 1
  store i32 4, i32* %24, align 8
  %25 = bitcast %AA* %bb to { i32*, i32 }*
  %26 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_10, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %_10, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %25, i32 0, i32 0
  store i32* %27, i32** %30, align 8
  %31 = getelementptr inbounds { i32*, i32 }, { i32*, i32 }* %25, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  %32 = getelementptr inbounds %AA, %AA* %bb, i32 0, i32 2
  store i32 14, i32* %32, align 4
; invoke main::test_oom
  invoke void @_ZN4main8test_oom17h710cf4841fff3bacE(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %result_oom_safe, %AA* align 8 dereferenceable(24) %bb)
          to label %bb5 unwind label %cleanup5

bb28:                                             ; preds = %bb27, %cleanup4
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v2) #15
  br label %bb29

cleanup4:                                         ; preds = %bb43, %bb3
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = extractvalue { i8*, i32 } %33, 0
  %35 = extractvalue { i8*, i32 } %33, 1
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  %37 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  br label %bb28

bb5:                                              ; preds = %bb4
  store i8 1, i8* %_75, align 1
  %38 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to i64*
  %_16 = load i64, i64* %38, align 8, !range !7
  %39 = icmp eq i64 %_16, 1
  br i1 %39, label %bb6, label %bb11

bb27:                                             ; preds = %bb52, %bb51, %bb53, %cleanup5
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v3) #15
  br label %bb28

cleanup5:                                         ; preds = %bb45, %bb4
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = extractvalue { i8*, i32 } %40, 0
  %42 = extractvalue { i8*, i32 } %40, 1
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %42, i32* %44, align 8
  br label %bb27

bb6:                                              ; preds = %bb5
  store i8 0, i8* %_75, align 1
  store i8 1, i8* %_72, align 1
  %45 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to %"core::result::Result<(), myError>::Err"*
  %46 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %45, i32 0, i32 1
  %47 = bitcast %myError* %err to i8*
  %48 = bitcast %myError* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %47, i8* align 8 %48, i64 24, i1 false)
  %49 = bitcast %myError* %err to {}**
  %50 = load {}*, {}** %49, align 8
  %51 = icmp eq {}* %50, null
  %_18 = select i1 %51, i64 1, i64 0
  %52 = icmp eq i64 %_18, 0
  br i1 %52, label %bb7, label %bb35

bb11:                                             ; preds = %bb32, %bb5
; invoke main::try_test_oom
  invoke void @_ZN4main12try_test_oom17ha9b15b348bfbdee5E(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %result_try, %AA* align 8 dereferenceable(24) %aa)
          to label %bb12 unwind label %cleanup8

bb7:                                              ; preds = %bb6
  store i8 0, i8* %_72, align 1
  %53 = bitcast %myError* %err to %"myError::allocation_fail"*
  %54 = bitcast %"myError::allocation_fail"* %53 to %"alloc::string::String"*
  %55 = bitcast %"alloc::string::String"* %log to i8*
  %56 = bitcast %"alloc::string::String"* %54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %55, i8* align 8 %56, i64 24, i1 false)
  %57 = bitcast i64** %_29 to %"alloc::string::String"**
  store %"alloc::string::String"* %log, %"alloc::string::String"** %57, align 8
  %_args = load i64*, i64** %_29, align 8, !nonnull !3
  %_33 = bitcast i64* %_args to %"alloc::string::String"*
; invoke core::fmt::ArgumentV1::new
  %58 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8b80e95f11d20994E(%"alloc::string::String"* align 8 dereferenceable(24) %_33, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* nonnull @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h3668e1dd8c330ba8E")
          to label %bb8 unwind label %cleanup6

bb35:                                             ; preds = %bb10, %bb6
  %59 = bitcast %myError* %err to {}**
  %60 = load {}*, {}** %59, align 8
  %61 = icmp eq {}* %60, null
  %_76 = select i1 %61, i64 1, i64 0
  %62 = icmp eq i64 %_76, 0
  br i1 %62, label %bb33, label %bb32

bb8:                                              ; preds = %bb7
  %_32.0 = extractvalue { i8*, i64* } %58, 0
  %_32.1 = extractvalue { i8*, i64* } %58, 1
  %63 = bitcast [1 x { i8*, i64* }]* %_28 to { i8*, i64* }*
  %64 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %63, i32 0, i32 0
  store i8* %_32.0, i8** %64, align 8
  %65 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %63, i32 0, i32 1
  store i64* %_32.1, i64** %65, align 8
  %_25.0 = bitcast [1 x { i8*, i64* }]* %_28 to [0 x { i8*, i64* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_21, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_25.0, i64 1)
          to label %bb9 unwind label %cleanup6

bb26:                                             ; preds = %cleanup6
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %log) #15
  br label %bb50

cleanup6:                                         ; preds = %bb9, %bb8, %bb7
  %66 = landingpad { i8*, i32 }
          cleanup
  %67 = extractvalue { i8*, i32 } %66, 0
  %68 = extractvalue { i8*, i32 } %66, 1
  %69 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  br label %bb26

bb9:                                              ; preds = %bb8
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_21)
          to label %bb10 unwind label %cleanup6

bb10:                                             ; preds = %bb9
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %log)
          to label %bb35 unwind label %cleanup7

bb50:                                             ; preds = %cleanup7, %bb26
  br label %bb53

cleanup7:                                         ; preds = %bb10
  %71 = landingpad { i8*, i32 }
          cleanup
  %72 = extractvalue { i8*, i32 } %71, 0
  %73 = extractvalue { i8*, i32 } %71, 1
  %74 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %72, i8** %74, align 8
  %75 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  br label %bb50

bb53:                                             ; preds = %bb48, %bb47, %bb49, %cleanup8, %bb50
  %76 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to i64*
  %_81 = load i64, i64* %76, align 8, !range !7
  %77 = icmp eq i64 %_81, 1
  br i1 %77, label %bb51, label %bb27

bb33:                                             ; preds = %bb35
  %78 = load i8, i8* %_72, align 1, !range !5
  %79 = trunc i8 %78 to i1
  br i1 %79, label %bb34, label %bb32

bb32:                                             ; preds = %bb34, %bb33, %bb35
  store i8 0, i8* %_72, align 1
  br label %bb11

bb34:                                             ; preds = %bb33
  %80 = bitcast %myError* %err to %"myError::allocation_fail"*
  %81 = bitcast %"myError::allocation_fail"* %80 to %"alloc::string::String"*
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %81)
          to label %bb32 unwind label %cleanup8

cleanup8:                                         ; preds = %bb42, %bb11, %bb34
  %82 = landingpad { i8*, i32 }
          cleanup
  %83 = extractvalue { i8*, i32 } %82, 0
  %84 = extractvalue { i8*, i32 } %82, 1
  %85 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  %86 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  br label %bb53

bb12:                                             ; preds = %bb11
  store i8 1, i8* %_74, align 1
  %87 = bitcast %"core::result::Result<(), myError>"* %result_try to i64*
  %_38 = load i64, i64* %87, align 8, !range !7
  %88 = icmp eq i64 %_38, 1
  br i1 %88, label %bb13, label %bb18

bb13:                                             ; preds = %bb12
  store i8 0, i8* %_74, align 1
  store i8 1, i8* %_73, align 1
  %89 = bitcast %"core::result::Result<(), myError>"* %result_try to %"core::result::Result<(), myError>::Err"*
  %90 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %89, i32 0, i32 1
  %91 = bitcast %myError* %err1 to i8*
  %92 = bitcast %myError* %90 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %91, i8* align 8 %92, i64 24, i1 false)
  %93 = bitcast %myError* %err1 to {}**
  %94 = load {}*, {}** %93, align 8
  %95 = icmp eq {}* %94, null
  %_40 = select i1 %95, i64 1, i64 0
  %96 = icmp eq i64 %_40, 0
  br i1 %96, label %bb14, label %bb39

bb18:                                             ; preds = %bb36, %bb12
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_58, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc28 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc4 to [0 x { i8*, i64* }]*), i64 0)
          to label %bb19 unwind label %cleanup12

bb14:                                             ; preds = %bb13
  store i8 0, i8* %_73, align 1
  %97 = bitcast %myError* %err1 to %"myError::allocation_fail"*
  %98 = bitcast %"myError::allocation_fail"* %97 to %"alloc::string::String"*
  %99 = bitcast %"alloc::string::String"* %log2 to i8*
  %100 = bitcast %"alloc::string::String"* %98 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %99, i8* align 8 %100, i64 24, i1 false)
  %101 = bitcast i64** %_51 to %"alloc::string::String"**
  store %"alloc::string::String"* %log2, %"alloc::string::String"** %101, align 8
  %_args9 = load i64*, i64** %_51, align 8, !nonnull !3
  %_55 = bitcast i64* %_args9 to %"alloc::string::String"*
; invoke core::fmt::ArgumentV1::new
  %102 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h8b80e95f11d20994E(%"alloc::string::String"* align 8 dereferenceable(24) %_55, i1 (%"alloc::string::String"*, %"core::fmt::Formatter"*)* nonnull @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17h3668e1dd8c330ba8E")
          to label %bb15 unwind label %cleanup10

bb39:                                             ; preds = %bb17, %bb13
  %103 = bitcast %myError* %err1 to {}**
  %104 = load {}*, {}** %103, align 8
  %105 = icmp eq {}* %104, null
  %_77 = select i1 %105, i64 1, i64 0
  %106 = icmp eq i64 %_77, 0
  br i1 %106, label %bb37, label %bb36

bb15:                                             ; preds = %bb14
  %_54.0 = extractvalue { i8*, i64* } %102, 0
  %_54.1 = extractvalue { i8*, i64* } %102, 1
  %107 = bitcast [1 x { i8*, i64* }]* %_50 to { i8*, i64* }*
  %108 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %107, i32 0, i32 0
  store i8* %_54.0, i8** %108, align 8
  %109 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %107, i32 0, i32 1
  store i64* %_54.1, i64** %109, align 8
  %_47.0 = bitcast [1 x { i8*, i64* }]* %_50 to [0 x { i8*, i64* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117h7f23f9f3c278f407E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_43, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc23 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_47.0, i64 1)
          to label %bb16 unwind label %cleanup10

bb25:                                             ; preds = %cleanup10
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %log2) #15
  br label %bb46

cleanup10:                                        ; preds = %bb16, %bb15, %bb14
  %110 = landingpad { i8*, i32 }
          cleanup
  %111 = extractvalue { i8*, i32 } %110, 0
  %112 = extractvalue { i8*, i32 } %110, 1
  %113 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  %114 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %112, i32* %114, align 8
  br label %bb25

bb16:                                             ; preds = %bb15
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_43)
          to label %bb17 unwind label %cleanup10

bb17:                                             ; preds = %bb16
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %log2)
          to label %bb39 unwind label %cleanup11

bb46:                                             ; preds = %cleanup11, %bb25
  br label %bb49

cleanup11:                                        ; preds = %bb17
  %115 = landingpad { i8*, i32 }
          cleanup
  %116 = extractvalue { i8*, i32 } %115, 0
  %117 = extractvalue { i8*, i32 } %115, 1
  %118 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %116, i8** %118, align 8
  %119 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %117, i32* %119, align 8
  br label %bb46

bb49:                                             ; preds = %cleanup12, %bb46
  %120 = bitcast %"core::result::Result<(), myError>"* %result_try to i64*
  %_80 = load i64, i64* %120, align 8, !range !7
  %121 = icmp eq i64 %_80, 1
  br i1 %121, label %bb47, label %bb53

bb37:                                             ; preds = %bb39
  %122 = load i8, i8* %_73, align 1, !range !5
  %123 = trunc i8 %122 to i1
  br i1 %123, label %bb38, label %bb36

bb36:                                             ; preds = %bb38, %bb37, %bb39
  store i8 0, i8* %_73, align 1
  br label %bb18

bb38:                                             ; preds = %bb37
  %124 = bitcast %myError* %err1 to %"myError::allocation_fail"*
  %125 = bitcast %"myError::allocation_fail"* %124 to %"alloc::string::String"*
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %125)
          to label %bb36 unwind label %cleanup12

cleanup12:                                        ; preds = %bb19, %bb18, %bb38
  %126 = landingpad { i8*, i32 }
          cleanup
  %127 = extractvalue { i8*, i32 } %126, 0
  %128 = extractvalue { i8*, i32 } %126, 1
  %129 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %127, i8** %129, align 8
  %130 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  br label %bb49

bb19:                                             ; preds = %bb18
; invoke std::io::stdio::_print
  invoke void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_58)
          to label %bb20 unwind label %cleanup12

bb20:                                             ; preds = %bb19
  %131 = bitcast %"core::result::Result<(), myError>"* %result_try to i64*
  %_78 = load i64, i64* %131, align 8, !range !7
  %132 = icmp eq i64 %_78, 1
  br i1 %132, label %bb41, label %bb40

bb47:                                             ; preds = %bb49
  %133 = load i8, i8* %_74, align 1, !range !5
  %134 = trunc i8 %133 to i1
  br i1 %134, label %bb48, label %bb53

bb48:                                             ; preds = %bb47
  %135 = bitcast %"core::result::Result<(), myError>"* %result_try to %"core::result::Result<(), myError>::Err"*
  %136 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %135, i32 0, i32 1
; call core::ptr::drop_in_place<main::myError>
  call void @"_ZN4core3ptr34drop_in_place$LT$main..myError$GT$17hfc728a86235880d8E"(%myError* %136) #15
  br label %bb53

bb41:                                             ; preds = %bb20
  %137 = load i8, i8* %_74, align 1, !range !5
  %138 = trunc i8 %137 to i1
  br i1 %138, label %bb42, label %bb40

bb40:                                             ; preds = %bb42, %bb41, %bb20
  store i8 0, i8* %_74, align 1
  %139 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to i64*
  %_79 = load i64, i64* %139, align 8, !range !7
  %140 = icmp eq i64 %_79, 1
  br i1 %140, label %bb44, label %bb43

bb42:                                             ; preds = %bb41
  %141 = bitcast %"core::result::Result<(), myError>"* %result_try to %"core::result::Result<(), myError>::Err"*
  %142 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %141, i32 0, i32 1
; invoke core::ptr::drop_in_place<main::myError>
  invoke void @"_ZN4core3ptr34drop_in_place$LT$main..myError$GT$17hfc728a86235880d8E"(%myError* %142)
          to label %bb40 unwind label %cleanup8

bb51:                                             ; preds = %bb53
  %143 = load i8, i8* %_75, align 1, !range !5
  %144 = trunc i8 %143 to i1
  br i1 %144, label %bb52, label %bb27

bb52:                                             ; preds = %bb51
  %145 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to %"core::result::Result<(), myError>::Err"*
  %146 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %145, i32 0, i32 1
; call core::ptr::drop_in_place<main::myError>
  call void @"_ZN4core3ptr34drop_in_place$LT$main..myError$GT$17hfc728a86235880d8E"(%myError* %146) #15
  br label %bb27

bb44:                                             ; preds = %bb40
  %147 = load i8, i8* %_75, align 1, !range !5
  %148 = trunc i8 %147 to i1
  br i1 %148, label %bb45, label %bb43

bb43:                                             ; preds = %bb45, %bb44, %bb40
  store i8 0, i8* %_75, align 1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v3)
          to label %bb21 unwind label %cleanup4

bb45:                                             ; preds = %bb44
  %149 = bitcast %"core::result::Result<(), myError>"* %result_oom_safe to %"core::result::Result<(), myError>::Err"*
  %150 = getelementptr inbounds %"core::result::Result<(), myError>::Err", %"core::result::Result<(), myError>::Err"* %149, i32 0, i32 1
; invoke core::ptr::drop_in_place<main::myError>
  invoke void @"_ZN4core3ptr34drop_in_place$LT$main..myError$GT$17hfc728a86235880d8E"(%myError* %150)
          to label %bb43 unwind label %cleanup5

bb21:                                             ; preds = %bb43
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v2)
          to label %bb22 unwind label %cleanup3

bb22:                                             ; preds = %bb21
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v1)
          to label %bb23 unwind label %cleanup

bb23:                                             ; preds = %bb22
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %v0)
  br label %bb24

bb31:                                             ; preds = %bb30
  %151 = bitcast { i8*, i32 }* %0 to i8**
  %152 = load i8*, i8** %151, align 8
  %153 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = insertvalue { i8*, i32 } undef, i8* %152, 0
  %156 = insertvalue { i8*, i32 } %155, i32 %154, 1
  resume { i8*, i32 } %156

bb24:                                             ; preds = %bb23
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i8* @__rg_alloc(i64 %arg0, i64 %arg1) unnamed_addr #0 {
start:
; call core::alloc::layout::Layout::from_size_align_unchecked
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %arg0, i64 %arg1)
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::alloc
  %1 = call i8* @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$5alloc17hdfbdbbb7792b424aE"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) bitcast (<{ i8*, [4088 x i8] }>* @_ZN4main9ALLOCATOR17h56f8533d4994829eE to %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"*), i64 %_6.0, i64 %_6.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: nonlazybind uwtable
define hidden void @__rg_dealloc(i8* %arg0, i64 %arg1, i64 %arg2) unnamed_addr #0 {
start:
; call core::alloc::layout::Layout::from_size_align_unchecked
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %arg1, i64 %arg2)
  %_8.0 = extractvalue { i64, i64 } %0, 0
  %_8.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call <OOMGuardAllocator::OOMGuard_Allocator<DefaultAllocator> as core::alloc::global::GlobalAlloc>::dealloc
  call void @"_ZN114_$LT$OOMGuardAllocator..OOMGuard_Allocator$LT$DefaultAllocator$GT$$u20$as$u20$core..alloc..global..GlobalAlloc$GT$7dealloc17h4d23b83042d59d83E"(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) bitcast (<{ i8*, [4088 x i8] }>* @_ZN4main9ALLOCATOR17h56f8533d4994829eE to %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"*), i8* %arg0, i64 %_8.0, i64 %_8.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden i8* @__rg_realloc(i8* %arg0, i64 %arg1, i64 %arg2, i64 %arg3) unnamed_addr #0 {
start:
; call core::alloc::layout::Layout::from_size_align_unchecked
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %arg1, i64 %arg2)
  %_9.0 = extractvalue { i64, i64 } %0, 0
  %_9.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::global::GlobalAlloc::realloc
  %1 = call i8* @_ZN4core5alloc6global11GlobalAlloc7realloc17h2cf5a2ea24647f51E(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) bitcast (<{ i8*, [4088 x i8] }>* @_ZN4main9ALLOCATOR17h56f8533d4994829eE to %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"*), i8* %arg0, i64 %_9.0, i64 %_9.1, i64 %arg3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; Function Attrs: nonlazybind uwtable
define hidden i8* @__rg_alloc_zeroed(i64 %arg0, i64 %arg1) unnamed_addr #0 {
start:
; call core::alloc::layout::Layout::from_size_align_unchecked
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17hbf20bd9c2fe9fe90E(i64 %arg0, i64 %arg1)
  %_6.0 = extractvalue { i64, i64 } %0, 0
  %_6.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::global::GlobalAlloc::alloc_zeroed
  %1 = call i8* @_ZN4core5alloc6global11GlobalAlloc12alloc_zeroed17hcd899288606b4e3dE(%"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"* align 4096 dereferenceable(4096) bitcast (<{ i8*, [4088 x i8] }>* @_ZN4main9ALLOCATOR17h56f8533d4994829eE to %"OOMGuardAllocator::OOMGuard_Allocator<std::alloc::System>"*), i64 %_6.0, i64 %_6.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; main::test_oom
; Function Attrs: nonlazybind uwtable
define internal void @_ZN4main8test_oom17h710cf4841fff3bacE(%"core::result::Result<(), myError>"* noalias nocapture sret(%"core::result::Result<(), myError>") dereferenceable(32) %0, %AA* align 8 dereferenceable(24) %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %a = alloca %"alloc::vec::Vec<i32>", align 8
  %v5 = alloca %"alloc::string::String", align 8
  %v4 = alloca %"alloc::string::String", align 8
  %ass = alloca %AA*, align 8
  store %AA* %1, %AA** %ass, align 8
; call OOMGuardAllocator::my_wrap
  call void @_ZN17OOMGuardAllocator7my_wrap17he65d1f3e6b53ef98E(%AA** align 8 dereferenceable(8) %ass)
  br label %bb1

bb1:                                              ; preds = %start
; call OOMGuardAllocator::my_wrap_end
  call void @_ZN17OOMGuardAllocator11my_wrap_end17he1c7b92d2013443fE(%AA** align 8 dereferenceable(8) %ass)
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::string::String::with_capacity
  call void @_ZN5alloc6string6String13with_capacity17h98f923d21043fb33E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %v4, i64 100)
  br label %bb3

bb3:                                              ; preds = %bb2
; invoke alloc::string::String::with_capacity
  invoke void @_ZN5alloc6string6String13with_capacity17h98f923d21043fb33E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %v5, i64 50)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke alloc::vec::Vec<T>::new
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h1628d65a2d6d9671E"(%"alloc::vec::Vec<i32>"* noalias nocapture sret(%"alloc::vec::Vec<i32>") dereferenceable(24) %a)
          to label %bb5 unwind label %cleanup1

bb12:                                             ; preds = %bb11, %cleanup
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v4) #15
  br label %bb13

cleanup:                                          ; preds = %bb7, %bb3
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb12

bb5:                                              ; preds = %bb4
  %8 = load %AA*, %AA** %ass, align 8, !nonnull !3
  %9 = getelementptr inbounds %AA, %AA* %8, i32 0, i32 1
  %_12 = load i32, i32* %9, align 8
  %_11 = sext i32 %_12 to i64
; invoke alloc::vec::Vec<T,A>::reserve
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h12292eb3f785da59E"(%"alloc::vec::Vec<i32>"* align 8 dereferenceable(24) %a, i64 %_11)
          to label %bb6 unwind label %cleanup2

bb11:                                             ; preds = %bb10, %cleanup1
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v5) #15
  br label %bb12

cleanup1:                                         ; preds = %bb6, %bb4
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb11

bb6:                                              ; preds = %bb5
  %15 = bitcast %"core::result::Result<(), myError>"* %0 to i64*
  store i64 0, i64* %15, align 8
; invoke core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  invoke void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %a)
          to label %bb7 unwind label %cleanup1

bb10:                                             ; preds = %cleanup2
; call core::ptr::drop_in_place<alloc::vec::Vec<i32>>
  call void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i32$GT$$GT$17h9df8f33a566fefacE"(%"alloc::vec::Vec<i32>"* %a) #15
  br label %bb11

cleanup2:                                         ; preds = %bb5
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb10

bb7:                                              ; preds = %bb6
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v5)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h31a30fcacd0ed011E"(%"alloc::string::String"* %v4)
  br label %bb9

bb13:                                             ; preds = %bb12
  %21 = bitcast { i8*, i32 }* %2 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb9:                                              ; preds = %bb8
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.uadd.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone willreturn
declare i1 @llvm.expect.i1(i1, i1) #5

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1, i64, %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #6

; OOMGuardAllocator::cal_tools::find_block
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN17OOMGuardAllocator9cal_tools10find_block17h27b93b27ace7baf8E(i64) unnamed_addr #0

; core::panicking::panic_bounds_check
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking18panic_bounds_check17h2aafc6203614405fE(i64, i64, %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #6

; core::panicking::panic_fmt
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h8bc989e1fc10c635E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48), %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #6

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #4

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.usub.with.overflow.i64(i64, i64) #4

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare %"OOMGuardAllocator::Count"* @get_thread_local() unnamed_addr #0

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h75965f95c98f11d8E({}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), i64, i8**) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i32 @posix_memalign(i8**, i64, i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare i8* @malloc(i64) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @free(i8*) unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #8

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #4

; <core::alloc::layout::LayoutError as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN69_$LT$core..alloc..layout..LayoutError$u20$as$u20$core..fmt..Debug$GT$3fmt17h904faa326d3b1c4fE"(%"core::alloc::layout::LayoutError"* nonnull align 1, %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hddb26cddfa4f23d4E([0 x i8]* nonnull align 1, i64, {}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #6

; <str as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17hec7dec34a2bb4d4fE"([0 x i8]* nonnull align 1, i64, %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #0

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nounwind nonlazybind uwtable
declare i8* @__rust_alloc_zeroed(i64, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare noalias i8* @__rust_alloc(i64, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #10

; Function Attrs: nounwind nonlazybind uwtable
declare i8* @__rust_realloc(i8*, i64, i64, i64) unnamed_addr #10

; alloc::alloc::handle_alloc_error
; Function Attrs: cold noreturn nounwind nonlazybind uwtable
declare void @_ZN5alloc5alloc18handle_alloc_error17h2740986bd2451aa0E(i64, i64) unnamed_addr #11

; alloc::raw_vec::capacity_overflow
; Function Attrs: noreturn nonlazybind uwtable
declare void @_ZN5alloc7raw_vec17capacity_overflow17ha72cd8fd7333b22dE() unnamed_addr #12

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #13 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17hff041ea8181ce970E(void ()* @_ZN4main4main17h4deaa0808ba0c029E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { cold nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nofree nosync nounwind readnone willreturn }
attributes #6 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #7 = { argmemonly nofree nounwind willreturn }
attributes #8 = { argmemonly nofree nounwind willreturn writeonly }
attributes #9 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #10 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #11 = { cold noreturn nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #12 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #13 = { nonlazybind "target-cpu"="x86-64" }
attributes #14 = { noreturn }
attributes #15 = { noinline }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{}
!4 = !{i64 1, i64 0}
!5 = !{i8 0, i8 2}
!6 = !{i8 -1, i8 2}
!7 = !{i64 0, i64 2}
!8 = !{i32 3195324}

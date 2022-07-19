; ModuleID = '4lgtvwhg4wiywm68'
source_filename = "4lgtvwhg4wiywm68"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", i64 }
%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" }
%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" = type { i64, [3 x i64] }
%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { { i64, i64* }, i64 }
%"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" = type { %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" }
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::KV>", { i64, i64* }, i64 }
%"core::marker::PhantomData<alloc::collections::btree::node::marker::KV>" = type {}
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>" = type { [1 x i64], {}*, [1 x i64] }
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some" = type { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }
%"std::ffi::os_str::OsStr" = type { %"std::sys::unix::os_str::Slice" }
%"std::sys::unix::os_str::Slice" = type { [0 x i8] }
%"alloc::string::String" = type { %"alloc::vec::Vec<u8>" }
%"alloc::vec::Vec<u8>" = type { { i8*, i64 }, i64 }
%"std::path::Path" = type { %"std::ffi::os_str::OsStr" }
%"std::process::Command" = type { %"std::sys::unix::process::process_common::Command" }
%"std::sys::unix::process::process_common::Command" = type { { i8*, i64 }, %"alloc::vec::Vec<std::ffi::c_str::CString>", %"std::sys::unix::process::process_common::Argv", %"std::sys_common::process::CommandEnv", { i8*, i64 }, %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>", { i32*, i64 }, { i32, i32 }, { i32, i32 }, { i32, i32 }, { i32, i32 }, { i32, i32 }, i8, i8, [6 x i8] }
%"alloc::vec::Vec<std::ffi::c_str::CString>" = type { { i64*, i64 }, i64 }
%"std::sys::unix::process::process_common::Argv" = type { %"alloc::vec::Vec<*const i8>" }
%"alloc::vec::Vec<*const i8>" = type { { i64*, i64 }, i64 }
%"std::sys_common::process::CommandEnv" = type { %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", i8, i8, [6 x i8] }
%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>" = type { { i64*, i64 }, i64 }
%"core::fmt::Formatter" = type { { i64, i64 }, { i64, i64 }, { {}*, [3 x i64]* }, i32, i32, i8, [7 x i8] }
%"core::fmt::Opaque" = type {}
%"core::fmt::Arguments" = type { { [0 x { [0 x i8]*, i64 }]*, i64 }, { i64*, i64 }, { [0 x { i8*, i64* }]*, i64 } }
%"core::panic::location::Location" = type { { [0 x i8]*, i64 }, i32, i32 }
%"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>" = type { [3 x i64] }
%"std::ffi::os_str::OsString" = type { %"std::sys::unix::os_str::Buf" }
%"std::sys::unix::os_str::Buf" = type { %"alloc::vec::Vec<u8>" }
%"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>" = type { [3 x i64] }
%"core::option::Option<std::ffi::os_str::OsString>" = type { {}*, [2 x i64] }
%"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::mem::replace::PanicGuard>" = type { %"alloc::collections::btree::mem::replace::PanicGuard" }
%"alloc::collections::btree::mem::replace::PanicGuard" = type {}
%"std::io::error::Repr" = type { i8, [15 x i8] }
%"std::io::error::Repr::Custom" = type { [1 x i64], %"std::io::error::Custom"* }
%"std::io::error::Custom" = type { { {}*, [3 x i64]* }, i8, [7 x i8] }
%"std::io::error::Error" = type { %"std::io::error::Repr" }
%"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" = type { [3 x i64] }
%"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>" = type { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }
%"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>" = type { [3 x i64] }
%"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>" = type { %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" }
%"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>" = type { [4 x i64] }
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::Edge>", { i64, i64* }, i64 }
%"core::marker::PhantomData<alloc::collections::btree::node::marker::Edge>" = type {}
%"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>" = type { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }
%"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>" = type { [3 x i64] }
%"std::sys::unix::process::process_common::Stdio::Fd" = type { [1 x i32], i32 }
%"core::option::Option<std::ffi::os_str::OsString>::Some" = type { %"std::ffi::os_str::OsString" }
%"core::ptr::metadata::PtrRepr<[u8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[*const i8]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>]>" = type { [2 x i64] }
%"core::ptr::metadata::PtrRepr<[std::ffi::c_str::CString]>" = type { [2 x i64] }
%"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { i64*, [11 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"], [11 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"], i16, i16, [2 x i16] }
%"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", [12 x i8*] }
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>" = type { [1 x i64], {}*, [1 x i64] }
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::Edge>", { i64, i64* }, i64 }
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some" = type { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>" }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>" = type { i64, [3 x i64] }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Err" = type { [1 x i64], { i64, i64* } }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>" }
%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>" = type { [1 x i64], {}*, [4 x i64] }
%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>::Some" = type { { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" } }
%"core::result::Result<std::process::ExitStatus, std::io::error::Error>" = type { i32, [5 x i32] }
%"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Ok" = type { [1 x i32], i32 }
%"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Err" = type { [1 x i64], %"std::io::error::Error" }
%"alloc::alloc::Global" = type {}
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::KV>", { i64, i64* }, i64 }
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::KV>", { i64, i64* }, i64 }
%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>" = type { %"core::marker::PhantomData<alloc::collections::btree::node::marker::Edge>", { i64, i64* }, i64 }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>" = type { i64, [3 x i64] }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>" }
%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>" = type { i64, [3 x i64] }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>" = type { i64, [2 x i64] }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf" = type { [1 x i64], { i64, i64* } }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>" }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal" = type { [1 x i64], { i64, i64* } }
%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>" }
%"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" = type { i64, [3 x i64] }
%"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root" = type { [1 x i64], { i64, i64* } }
%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some" = type { %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" }
%"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge" = type { [1 x i64], %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>" = type { [1 x i64], {}*, [1 x i64] }
%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>" = type { i64, [3 x i64] }
%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Continue" = type { %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>" }
%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some" = type { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>" = type { {}*, [2 x i64] }
%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some" = type { { i8*, { i64, i64 } } }
%"unwind::libunwind::_Unwind_Exception" = type { i64, void (i32, %"unwind::libunwind::_Unwind_Exception"*)*, [6 x i64] }
%"unwind::libunwind::_Unwind_Context" = type { [0 x i8] }

@vtable.0 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }> <{ i8* bitcast (void (i64**)* @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h31dbc2a5520f2ab6E" to i8*), [16 x i8] c"\08\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i32 (i64**)* @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8e0590596bc72608E" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h95f0280e2046279fE" to i8*), i8* bitcast (i32 (i64**)* @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h95f0280e2046279fE" to i8*), [0 x i8] zeroinitializer }>, align 8
@alloc77 = private unnamed_addr constant <{ [12 x i8] }> <{ [12 x i8] c"invalid args" }>, align 1
@alloc78 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/core/src/fmt/mod.rs" }>, align 1
@alloc79 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc78, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00k\01\00\00\0D\00\00\00" }>, align 8
@alloc80 = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/core/src/ptr/mod.rs" }>, align 1
@alloc81 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [75 x i8] }>, <{ [75 x i8] }>* @alloc80, i32 0, i32 0, i32 0), [16 x i8] c"K\00\00\00\00\00\00\00\BE\02\00\00\0D\00\00\00" }>, align 8
@alloc83 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Option::unwrap()` on a `None` value" }>, align 1
@alloc84 = private unnamed_addr constant <{ [43 x i8] }> <{ [43 x i8] c"called `Result::unwrap()` on an `Err` value" }>, align 1
@vtable.1 = private unnamed_addr constant <{ i8*, [16 x i8], i8*, [0 x i8] }> <{ i8* bitcast (void (%"std::io::error::Error"*)* @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h69c1f2da8cb094e7E" to i8*), [16 x i8] c"\10\00\00\00\00\00\00\00\08\00\00\00\00\00\00\00", i8* bitcast (i1 (%"std::io::error::Error"*, %"core::fmt::Formatter"*)* @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ced4ac19d2a5261E" to i8*), [0 x i8] zeroinitializer }>, align 8
@alloc41 = private unnamed_addr constant <{ [0 x i8] }> zeroinitializer, align 8
@alloc93 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"assertion failed: BorrowType::PERMITS_TRAVERSAL" }>, align 1
@alloc96 = private unnamed_addr constant <{ [91 x i8] }> <{ [91 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/alloc/src/collections/btree/node.rs" }>, align 1
@alloc90 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc96, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\E5\03\00\00\09\00\00\00" }>, align 8
@alloc92 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc96, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00\EE\03\00\00I\00\00\00" }>, align 8
@alloc95 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc96, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00>\01\00\00\09\00\00\00" }>, align 8
@alloc97 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [91 x i8] }>, <{ [91 x i8] }>* @alloc96, i32 0, i32 0, i32 0), [16 x i8] c"[\00\00\00\00\00\00\00F\01\00\00B\00\00\00" }>, align 8
@alloc100 = private unnamed_addr constant <{ [95 x i8] }> <{ [95 x i8] c"/rustc/34926f0a1681458588a2d4240c0715ef9eff7d35/library/alloc/src/collections/btree/navigate.rs" }>, align 1
@alloc99 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc100, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00?\02\00\00V\00\00\00" }>, align 8
@alloc101 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [95 x i8] }>, <{ [95 x i8] }>* @alloc100, i32 0, i32 0, i32 0), [16 x i8] c"_\00\00\00\00\00\00\00\B8\00\00\00'\00\00\00" }>, align 8
@alloc28 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"out" }>, align 1
@alloc103 = private unnamed_addr constant <{ [7 x i8] }> <{ [7 x i8] c"clang++" }>, align 1
@alloc9 = private unnamed_addr constant <{ [20 x i8] }> <{ [20 x i8] c"src/thread_local.cpp" }>, align 1
@alloc5 = private unnamed_addr constant <{ [3 x i8] }> <{ [3 x i8] c"-O3" }>, align 1
@alloc6 = private unnamed_addr constant <{ [10 x i8] }> <{ [10 x i8] c"-std=c++17" }>, align 1
@alloc7 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"-c" }>, align 1
@alloc8 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"-o" }>, align 1
@alloc10 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [20 x i8] }>, <{ [20 x i8] }>* @alloc9, i32 0, i32 0, i32 0), [8 x i8] c"\14\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [3 x i8] }>, <{ [3 x i8] }>* @alloc5, i32 0, i32 0, i32 0), [8 x i8] c"\03\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [10 x i8] }>, <{ [10 x i8] }>* @alloc6, i32 0, i32 0, i32 0), [8 x i8] c"\0A\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc7, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [2 x i8] }>, <{ [2 x i8] }>* @alloc8, i32 0, i32 0, i32 0), [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@alloc14 = private unnamed_addr constant <{ [15 x i8] }> <{ [15 x i8] c"/thread_local.o" }>, align 1
@alloc13 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [0 x i8] }>, <{ [0 x i8] }>* @alloc41, i32 0, i32 0, i32 0), [8 x i8] zeroinitializer, i8* getelementptr inbounds (<{ [15 x i8] }>, <{ [15 x i8] }>* @alloc14, i32 0, i32 0, i32 0), [8 x i8] c"\0F\00\00\00\00\00\00\00" }>, align 8
@alloc107 = private unnamed_addr constant <{ [47 x i8] }> <{ [47 x i8] c"/home/cj/OOM/allocator/allocator_crate/build.rs" }>, align 1
@alloc105 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [47 x i8] }>, <{ [47 x i8] }>* @alloc107, i32 0, i32 0, i32 0), [16 x i8] c"/\00\00\00\00\00\00\00\0A\00\00\00\06\00\00\00" }>, align 8
@alloc106 = private unnamed_addr constant <{ [2 x i8] }> <{ [2 x i8] c"ar" }>, align 1
@alloc21 = private unnamed_addr constant <{ [4 x i8] }> <{ [4 x i8] c"crus" }>, align 1
@alloc19 = private unnamed_addr constant <{ [17 x i8] }> <{ [17 x i8] c"libthread_local.a" }>, align 1
@alloc20 = private unnamed_addr constant <{ [14 x i8] }> <{ [14 x i8] c"thread_local.o" }>, align 1
@alloc22 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [4 x i8] }>, <{ [4 x i8] }>* @alloc21, i32 0, i32 0, i32 0), [8 x i8] c"\04\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [17 x i8] }>, <{ [17 x i8] }>* @alloc19, i32 0, i32 0, i32 0), [8 x i8] c"\11\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [14 x i8] }>, <{ [14 x i8] }>* @alloc20, i32 0, i32 0, i32 0), [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
@alloc108 = private unnamed_addr constant <{ i8*, [16 x i8] }> <{ i8* getelementptr inbounds (<{ [47 x i8] }>, <{ [47 x i8] }>* @alloc107, i32 0, i32 0, i32 0), [16 x i8] c"/\00\00\00\00\00\00\00\0F\00\00\00\06\00\00\00" }>, align 8
@alloc24 = private unnamed_addr constant <{ [31 x i8] }> <{ [31 x i8] c"cargo:rustc-link-search=native=" }>, align 1
@alloc26 = private unnamed_addr constant <{ [1 x i8] }> <{ [1 x i8] c"\0A" }>, align 1
@alloc25 = private unnamed_addr constant <{ i8*, [8 x i8], i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [31 x i8] }>, <{ [31 x i8] }>* @alloc24, i32 0, i32 0, i32 0), [8 x i8] c"\1F\00\00\00\00\00\00\00", i8* getelementptr inbounds (<{ [1 x i8] }>, <{ [1 x i8] }>* @alloc26, i32 0, i32 0, i32 0), [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@alloc29 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [3 x i8] }>, <{ [3 x i8] }>* @alloc28, i32 0, i32 0, i32 0), [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@alloc33 = private unnamed_addr constant <{ [41 x i8] }> <{ [41 x i8] c"cargo:rustc-link-lib=static=thread_local\0A" }>, align 1
@alloc34 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [41 x i8] }>, <{ [41 x i8] }>* @alloc33, i32 0, i32 0, i32 0), [8 x i8] c")\00\00\00\00\00\00\00" }>, align 8
@alloc38 = private unnamed_addr constant <{ [42 x i8] }> <{ [42 x i8] c"cargo:rerun-if-changed=src/thread_local.c\0A" }>, align 1
@alloc39 = private unnamed_addr constant <{ i8*, [8 x i8] }> <{ i8* getelementptr inbounds (<{ [42 x i8] }>, <{ [42 x i8] }>* @alloc38, i32 0, i32 0, i32 0), [8 x i8] c"*\00\00\00\00\00\00\00" }>, align 8

; <alloc::collections::btree::map::BTreeMap<K,V> as core::iter::traits::collect::IntoIterator>::into_iter
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN115_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17habafdac253f91bc9E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(72) %0, %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_2.i = alloca %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_17 = alloca %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_13 = alloca %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %full_range = alloca %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_4 = alloca { i64, i64* }, align 8
  %_3 = alloca %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %me = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %1 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3 to i8*
  %2 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !3)
  call void @llvm.experimental.noalias.scope.decl(metadata !6)
  %3 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2.i to i8*
  %4 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false), !noalias !3
  %5 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %me to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %6 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %5 to i8*
  %7 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false), !noalias !6
  br label %bb1

bb1:                                              ; preds = %start
  %_3.i = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %me to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3.i to { i64, i64* }*
; call core::option::Option<T>::take
  %8 = call { i64, i64* } @"_ZN4core6option15Option$LT$T$GT$4take17h606b20b8c8ffbee5E"({ i64, i64* }* align 8 dereferenceable(16) %_5)
  store { i64, i64* } %8, { i64, i64* }* %_4, align 8
  br label %bb3

bb3:                                              ; preds = %bb2
  %9 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_4, i32 0, i32 1
  %10 = bitcast i64** %9 to {}**
  %11 = load {}*, {}** %10, align 8
  %12 = icmp eq {}* %11, null
  %_8 = select i1 %12, i64 0, i64 1
  %13 = icmp eq i64 %_8, 1
  br i1 %13, label %bb4, label %bb8

bb4:                                              ; preds = %bb3
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_4, i32 0, i32 0
  %root.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_4, i32 0, i32 1
  %root.1 = load i64*, i64** %15, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned,K,V,Type>::into_dying
  %16 = call { i64, i64* } @"_ZN5alloc11collections5btree4node76NodeRef$LT$alloc..collections..btree..node..marker..Owned$C$K$C$V$C$Type$GT$10into_dying17h98d21bc7683db8dfE"(i64 %root.0, i64* nonnull %root.1)
  %_11.0 = extractvalue { i64, i64* } %16, 0
  %_11.1 = extractvalue { i64, i64* } %16, 1
  br label %bb5

bb8:                                              ; preds = %bb3
; call alloc::collections::btree::navigate::LazyLeafRange<BorrowType,K,V>::none
  call void @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$4none17h5edb4c4ab1718d7fE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %_17)
  br label %bb9

bb9:                                              ; preds = %bb8
  %17 = bitcast %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0 to %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %18 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %17 to i8*
  %19 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 64, i1 false)
  %20 = getelementptr inbounds %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0, i32 0, i32 1
  store i64 0, i64* %20, align 8
  br label %bb10

bb10:                                             ; preds = %bb7, %bb9
  ret void

bb5:                                              ; preds = %bb4
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::full_range
  call void @"_ZN5alloc11collections5btree8navigate178_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$10full_range17h724775f31bc67eaeE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %full_range, i64 %_11.0, i64* nonnull %_11.1)
  br label %bb6

bb6:                                              ; preds = %bb5
  %21 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_13 to i8*
  %22 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %full_range to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 64, i1 false)
  %23 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %me to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  br label %bb7

bb7:                                              ; preds = %bb6
  %24 = getelementptr inbounds %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %23, i32 0, i32 1
  %_14 = load i64, i64* %24, align 8
  %25 = bitcast %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0 to %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %26 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %25 to i8*
  %27 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %26, i8* align 8 %27, i64 64, i1 false)
  %28 = getelementptr inbounds %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0, i32 0, i32 1
  store i64 %_14, i64* %28, align 8
  br label %bb10
}

; <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h4abdbfacce8f7ca0E"(i8* nonnull %unique) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1ed3c26fb28268cE"(i8* nonnull %unique)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17haf96db99c0276a0bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; <<alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop::DropGuard<K,V> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN166_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bf2227fd5ad89dcE"(i64** align 8 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %_7 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %kv = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_2 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", align 8
  br label %bb1

bb1:                                              ; preds = %bb4, %start
  %0 = bitcast i64** %self to %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  %_3 = load %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*, %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %0, align 8, !nonnull !8
; call alloc::collections::btree::map::IntoIter<K,V>::dying_next
  call void @"_ZN5alloc11collections5btree3map21IntoIter$LT$K$C$V$GT$10dying_next17h9024bd3ec2a135beE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>") dereferenceable(24) %_2, %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(72) %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_2, i32 0, i32 1
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_4 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_4, 1
  br i1 %4, label %bb3, label %bb5

bb3:                                              ; preds = %bb2
  %5 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_2 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"*
  %6 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"* %5 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  %8 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_7 to i8*
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::drop_key_val
  call void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h7ca9a627ad296dd4E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_7)
  br label %bb4

bb5:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %bb3
  br label %bb1
}

; std::sys_common::backtrace::__rust_begin_short_backtrace
; Function Attrs: noinline nonlazybind uwtable
define internal void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h614932c81ec0ca6fE(void ()* nonnull %f) unnamed_addr #2 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; call core::ops::function::FnOnce::call_once
  call void @_ZN4core3ops8function6FnOnce9call_once17ha4a287f6c887def8E(void ()* nonnull %f)
  br label %bb1

bb1:                                              ; preds = %start
; invoke core::hint::black_box
  invoke void @_ZN4core4hint9black_box17hb386978651e3fd9aE()
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
define hidden i64 @_ZN3std2rt10lang_start17hc379b5df810145e1E(void ()* nonnull %main, i64 %argc, i8** %argv) unnamed_addr #0 {
start:
  %_8 = alloca i64*, align 8
  %_4 = alloca i64, align 8
  %0 = bitcast i64** %_8 to void ()**
  store void ()* %main, void ()** %0, align 8
  %_5.0 = bitcast i64** %_8 to {}*
; call std::rt::lang_start_internal
  %1 = call i64 @_ZN3std2rt19lang_start_internal17h75965f95c98f11d8E({}* nonnull align 1 %_5.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, i8*, i8*, [0 x i8] }>* @vtable.0 to [3 x i64]*), i64 %argc, i8** %argv)
  store i64 %1, i64* %_4, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %v = load i64, i64* %_4, align 8
  ret i64 %v
}

; std::rt::lang_start::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h95f0280e2046279fE"(i64** align 8 dereferenceable(8) %_1) unnamed_addr #1 {
start:
  %0 = bitcast i64** %_1 to void ()**
  %_3 = load void ()*, void ()** %0, align 8, !nonnull !8
; call std::sys_common::backtrace::__rust_begin_short_backtrace
  call void @_ZN3std10sys_common9backtrace28__rust_begin_short_backtrace17h614932c81ec0ca6fE(void ()* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call <() as std::process::Termination>::report
  %1 = call i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h2815b891a5791b02E"()
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i32 %1
}

; std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for alloc::string::String>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h7cfc1b057f04ce29E"(%"alloc::string::String"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
; call <alloc::string::String as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h787e3f32d3efdbf8E"(%"alloc::string::String"* align 8 dereferenceable(24) %self)
  %_4.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_4.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for str>::as_ref
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h2c9aa3aecbe854f4E"([0 x i8]* nonnull align 1 %_4.0, i64 %_4.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; std::ffi::os_str::OsStr::from_inner
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h6a976826dae816eaE(%"std::sys::unix::os_str::Slice"* nonnull align 1 %inner.0, i64 %inner.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast %"std::sys::unix::os_str::Slice"* %inner.0 to %"std::ffi::os_str::OsStr"*
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %_2.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %inner.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for str>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h2c9aa3aecbe854f4E"([0 x i8]* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call std::sys::unix::os_str::Slice::from_str
  %0 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h3e31e297a5fe9dd3E([0 x i8]* nonnull align 1 %self.0, i64 %self.1)
  %_3.0 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 0
  %_3.1 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call std::ffi::os_str::OsStr::from_inner
  %1 = call { %"std::ffi::os_str::OsStr"*, i64 } @_ZN3std3ffi6os_str5OsStr10from_inner17h6a976826dae816eaE(%"std::sys::unix::os_str::Slice"* nonnull align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 0
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %2, 0
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %4, i64 %3, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %5
}

; std::sys::unix::os_str::Slice::from_u8_slice
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h204e18297744c361E([0 x i8]* nonnull align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %0 = alloca { %"std::sys::unix::os_str::Slice"*, i64 }, align 8
  %1 = bitcast { %"std::sys::unix::os_str::Slice"*, i64 }* %0 to { [0 x i8]*, i64 }*
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %1, i32 0, i32 1
  store i64 %s.1, i64* %3, align 8
  %4 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 0
  %5 = load %"std::sys::unix::os_str::Slice"*, %"std::sys::unix::os_str::Slice"** %4, align 8, !nonnull !8
  %6 = getelementptr inbounds { %"std::sys::unix::os_str::Slice"*, i64 }, { %"std::sys::unix::os_str::Slice"*, i64 }* %0, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %5, 0
  %9 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %8, i64 %7, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %9
}

; std::sys::unix::os_str::Slice::from_str
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice8from_str17h3e31e297a5fe9dd3E([0 x i8]* nonnull align 1 %s.0, i64 %s.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %s.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %s.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  %_3.0 = extractvalue { [0 x i8]*, i64 } %8, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %8, 1
  br label %bb1

bb1:                                              ; preds = %start
; call std::sys::unix::os_str::Slice::from_u8_slice
  %9 = call { %"std::sys::unix::os_str::Slice"*, i64 } @_ZN3std3sys4unix6os_str5Slice13from_u8_slice17h204e18297744c361E([0 x i8]* nonnull align 1 %_3.0, i64 %_3.1)
  %10 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 0
  %11 = extractvalue { %"std::sys::unix::os_str::Slice"*, i64 } %9, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %12 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } undef, %"std::sys::unix::os_str::Slice"* %10, 0
  %13 = insertvalue { %"std::sys::unix::os_str::Slice"*, i64 } %12, i64 %11, 1
  ret { %"std::sys::unix::os_str::Slice"*, i64 } %13
}

; std::sys::unix::process::process_common::ExitCode::as_i32
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7fc4ea2fd52c37c3E(i8* align 1 dereferenceable(1) %self) unnamed_addr #1 {
start:
  %_2 = load i8, i8* %self, align 1
  %0 = zext i8 %_2 to i32
  ret i32 %0
}

; std::path::Path::new
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h42ee6cfa432b08f9E({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %s) unnamed_addr #0 {
start:
; call <&T as core::convert::AsRef<U>>::as_ref
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h39452bda5febc3aeE"({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %s)
  %_4.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %_4.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2.0 = bitcast %"std::ffi::os_str::OsStr"* %_4.0 to %"std::path::Path"*
  %1 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %_2.0, 0
  %2 = insertvalue { %"std::path::Path"*, i64 } %1, i64 %_4.1, 1
  ret { %"std::path::Path"*, i64 } %2
}

; std::process::Command::current_dir
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command11current_dir17h714ef204f1a75e04E(%"std::process::Command"* align 8 dereferenceable(200) %self, { %"std::path::Path"*, i64 }* align 8 dereferenceable(16) %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %dir = alloca { %"std::path::Path"*, i64 }*, align 8
  store { %"std::path::Path"*, i64 }* %0, { %"std::path::Path"*, i64 }** %dir, align 8
  %_5 = bitcast %"std::process::Command"* %self to %"std::sys::unix::process::process_common::Command"*
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %2 = invoke { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h19e63a4dcdc1b1a1E"({ %"std::path::Path"*, i64 }** align 8 dereferenceable(8) %dir)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_9.0 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %_9.1 = extractvalue { %"std::path::Path"*, i64 } %2, 1
; invoke <std::path::Path as core::convert::AsRef<std::ffi::os_str::OsStr>>::as_ref
  %3 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN87_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$GT$6as_ref17hef1c817df61ad700E"(%"std::path::Path"* nonnull align 1 %_9.0, i64 %_9.1)
          to label %bb2 unwind label %cleanup

bb5:                                              ; preds = %cleanup
  br label %bb6

cleanup:                                          ; preds = %bb2, %bb1, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %_7.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %3, 0
  %_7.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %3, 1
; invoke std::sys::unix::process::process_common::Command::cwd
  invoke void @_ZN3std3sys4unix7process14process_common7Command3cwd17haf50923600ab8befE(%"std::sys::unix::process::process_common::Command"* align 8 dereferenceable(200) %_5, %"std::ffi::os_str::OsStr"* nonnull align 1 %_7.0, i64 %_7.1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  br label %bb4

bb6:                                              ; preds = %bb5
  %9 = bitcast { i8*, i32 }* %1 to i8**
  %10 = load i8*, i8** %9, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = insertvalue { i8*, i32 } undef, i8* %10, 0
  %14 = insertvalue { i8*, i32 } %13, i32 %12, 1
  resume { i8*, i32 } %14

bb4:                                              ; preds = %bb3
  ret %"std::process::Command"* %self
}

; std::process::Command::arg
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command3arg17hb12ee4c981eff6ceE(%"std::process::Command"* align 8 dereferenceable(200) %self, %"alloc::string::String"* align 8 dereferenceable(24) %0) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %arg = alloca %"alloc::string::String"*, align 8
  store %"alloc::string::String"* %0, %"alloc::string::String"** %arg, align 8
  %_5 = bitcast %"std::process::Command"* %self to %"std::sys::unix::process::process_common::Command"*
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %2 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h4c8d49e292f315ffE"(%"alloc::string::String"** align 8 dereferenceable(8) %arg)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 0
  %_7.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 1
; invoke std::sys::unix::process::process_common::Command::arg
  invoke void @_ZN3std3sys4unix7process14process_common7Command3arg17h81c66916bc915c6aE(%"std::sys::unix::process::process_common::Command"* align 8 dereferenceable(200) %_5, %"std::ffi::os_str::OsStr"* nonnull align 1 %_7.0, i64 %_7.1)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %3 = landingpad { i8*, i32 }
          cleanup
  %4 = extractvalue { i8*, i32 } %3, 0
  %5 = extractvalue { i8*, i32 } %3, 1
  %6 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %4, i8** %6, align 8
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %5, i32* %7, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %8 = bitcast { i8*, i32 }* %1 to i8**
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = insertvalue { i8*, i32 } undef, i8* %9, 0
  %13 = insertvalue { i8*, i32 } %12, i32 %11, 1
  resume { i8*, i32 } %13

bb3:                                              ; preds = %bb2
  ret %"std::process::Command"* %self
}

; std::process::Command::arg
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command3arg17hcb5cab1230aa7054E(%"std::process::Command"* align 8 dereferenceable(200) %self, %"std::ffi::os_str::OsStr"* nonnull align 1 %0, i64 %1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca { i8*, i32 }, align 8
  %arg = alloca { %"std::ffi::os_str::OsStr"*, i64 }, align 8
  %3 = getelementptr inbounds { %"std::ffi::os_str::OsStr"*, i64 }, { %"std::ffi::os_str::OsStr"*, i64 }* %arg, i32 0, i32 0
  store %"std::ffi::os_str::OsStr"* %0, %"std::ffi::os_str::OsStr"** %3, align 8
  %4 = getelementptr inbounds { %"std::ffi::os_str::OsStr"*, i64 }, { %"std::ffi::os_str::OsStr"*, i64 }* %arg, i32 0, i32 1
  store i64 %1, i64* %4, align 8
  %_5 = bitcast %"std::process::Command"* %self to %"std::sys::unix::process::process_common::Command"*
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %5 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h6cf7ca62022daf60E"({ %"std::ffi::os_str::OsStr"*, i64 }* align 8 dereferenceable(16) %arg)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_7.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %5, 0
  %_7.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %5, 1
; invoke std::sys::unix::process::process_common::Command::arg
  invoke void @_ZN3std3sys4unix7process14process_common7Command3arg17h81c66916bc915c6aE(%"std::sys::unix::process::process_common::Command"* align 8 dereferenceable(200) %_5, %"std::ffi::os_str::OsStr"* nonnull align 1 %_7.0, i64 %_7.1)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  br label %bb3

bb5:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %2 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %2, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb3:                                              ; preds = %bb2
  ret %"std::process::Command"* %self
}

; std::process::Command::new
; Function Attrs: nonlazybind uwtable
define internal void @_ZN3std7process7Command3new17hf0eaddd09feb1f27E(%"std::process::Command"* noalias nocapture sret(%"std::process::Command") dereferenceable(200) %0, [0 x i8]* nonnull align 1 %1, i64 %2) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %3 = alloca { i8*, i32 }, align 8
  %_2 = alloca %"std::sys::unix::process::process_common::Command", align 8
  %program = alloca { [0 x i8]*, i64 }, align 8
  %4 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %program, i32 0, i32 0
  store [0 x i8]* %1, [0 x i8]** %4, align 8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %program, i32 0, i32 1
  store i64 %2, i64* %5, align 8
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %6 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h39452bda5febc3aeE"({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %program)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_4.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %6, 0
  %_4.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %6, 1
; invoke std::sys::unix::process::process_common::Command::new
  invoke void @_ZN3std3sys4unix7process14process_common7Command3new17h1e558472110c8f47E(%"std::sys::unix::process::process_common::Command"* noalias nocapture sret(%"std::sys::unix::process::process_common::Command") dereferenceable(200) %_2, %"std::ffi::os_str::OsStr"* nonnull align 1 %_4.0, i64 %_4.1)
          to label %bb2 unwind label %cleanup

bb4:                                              ; preds = %cleanup
  br label %bb5

cleanup:                                          ; preds = %bb1, %start
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb4

bb2:                                              ; preds = %bb1
  %12 = bitcast %"std::process::Command"* %0 to %"std::sys::unix::process::process_common::Command"*
  %13 = bitcast %"std::sys::unix::process::process_common::Command"* %12 to i8*
  %14 = bitcast %"std::sys::unix::process::process_common::Command"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 200, i1 false)
  br label %bb3

bb5:                                              ; preds = %bb4
  %15 = bitcast { i8*, i32 }* %3 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb3:                                              ; preds = %bb2
  ret void
}

; std::process::Command::args
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command4args17h79200e129226803eE(%"std::process::Command"* align 8 dereferenceable(200) %self, [5 x { [0 x i8]*, i64 }]* align 8 dereferenceable(80) %args) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %arg = alloca { [0 x i8]*, i64 }*, align 8
  %_7 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
; call core::array::<impl core::iter::traits::collect::IntoIterator for &[T; N]>::into_iter
  %1 = call { i64*, i64* } @"_ZN4core5array98_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$9into_iter17hf2993d9f4ba34597E"([5 x { [0 x i8]*, i64 }]* align 8 dereferenceable(80) %args)
  %_4.0 = extractvalue { i64*, i64* } %1, 0
  %_4.1 = extractvalue { i64*, i64* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_4.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_4.1, i64** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb9, %bb1
; invoke <core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %4 = invoke align 8 dereferenceable_or_null(16) i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53af9fdeeb8fb827E"({ i64*, i64* }* align 8 dereferenceable(16) %iter)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64* %4, i64** %_7, align 8
  %5 = bitcast i64** %_7 to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_10 = select i1 %7, i64 0, i64 1
  switch i64 %_10, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb12:                                             ; preds = %bb14, %cleanup
  br label %bb13

cleanup:                                          ; preds = %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb12

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  br label %bb10

bb4:                                              ; preds = %bb3
  %13 = bitcast i64** %_7 to { [0 x i8]*, i64 }**
  %14 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %13, align 8, !nonnull !8
  store { [0 x i8]*, i64 }* %14, { [0 x i8]*, i64 }** %arg, align 8
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %15 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h49e5a6825bdfbeddE"({ [0 x i8]*, i64 }** align 8 dereferenceable(8) %arg)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb4
  %_14.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %15, 0
  %_14.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %15, 1
; invoke std::process::Command::arg
  %_12 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command3arg17hcb5cab1230aa7054E(%"std::process::Command"* align 8 dereferenceable(200) %self, %"std::ffi::os_str::OsStr"* nonnull align 1 %_14.0, i64 %_14.1)
          to label %bb8 unwind label %cleanup1

bb11:                                             ; preds = %cleanup1
  br label %bb14

cleanup1:                                         ; preds = %bb7, %bb4
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb11

bb8:                                              ; preds = %bb7
  br label %bb9

bb14:                                             ; preds = %bb11
  br label %bb12

bb9:                                              ; preds = %bb8
  br label %bb2

bb13:                                             ; preds = %bb12
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb10:                                             ; preds = %bb6
  ret %"std::process::Command"* %self
}

; std::process::Command::args
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command4args17h9b1258da4b692e0fE(%"std::process::Command"* align 8 dereferenceable(200) %self, [3 x { [0 x i8]*, i64 }]* align 8 dereferenceable(48) %args) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %arg = alloca { [0 x i8]*, i64 }*, align 8
  %_7 = alloca i64*, align 8
  %iter = alloca { i64*, i64* }, align 8
; call core::array::<impl core::iter::traits::collect::IntoIterator for &[T; N]>::into_iter
  %1 = call { i64*, i64* } @"_ZN4core5array98_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$9into_iter17heedde30ee4a39382E"([3 x { [0 x i8]*, i64 }]* align 8 dereferenceable(48) %args)
  %_4.0 = extractvalue { i64*, i64* } %1, 0
  %_4.1 = extractvalue { i64*, i64* } %1, 1
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 0
  store i64* %_4.0, i64** %2, align 8
  %3 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %iter, i32 0, i32 1
  store i64* %_4.1, i64** %3, align 8
  br label %bb2

bb2:                                              ; preds = %bb9, %bb1
; invoke <core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
  %4 = invoke align 8 dereferenceable_or_null(16) i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53af9fdeeb8fb827E"({ i64*, i64* }* align 8 dereferenceable(16) %iter)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64* %4, i64** %_7, align 8
  %5 = bitcast i64** %_7 to {}**
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_10 = select i1 %7, i64 0, i64 1
  switch i64 %_10, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb12:                                             ; preds = %bb14, %cleanup
  br label %bb13

cleanup:                                          ; preds = %bb2
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = extractvalue { i8*, i32 } %8, 0
  %10 = extractvalue { i8*, i32 } %8, 1
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %9, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %10, i32* %12, align 8
  br label %bb12

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  br label %bb10

bb4:                                              ; preds = %bb3
  %13 = bitcast i64** %_7 to { [0 x i8]*, i64 }**
  %14 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %13, align 8, !nonnull !8
  store { [0 x i8]*, i64 }* %14, { [0 x i8]*, i64 }** %arg, align 8
; invoke <&T as core::convert::AsRef<U>>::as_ref
  %15 = invoke { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h49e5a6825bdfbeddE"({ [0 x i8]*, i64 }** align 8 dereferenceable(8) %arg)
          to label %bb7 unwind label %cleanup1

bb7:                                              ; preds = %bb4
  %_14.0 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %15, 0
  %_14.1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %15, 1
; invoke std::process::Command::arg
  %_12 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command3arg17hcb5cab1230aa7054E(%"std::process::Command"* align 8 dereferenceable(200) %self, %"std::ffi::os_str::OsStr"* nonnull align 1 %_14.0, i64 %_14.1)
          to label %bb8 unwind label %cleanup1

bb11:                                             ; preds = %cleanup1
  br label %bb14

cleanup1:                                         ; preds = %bb7, %bb4
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = extractvalue { i8*, i32 } %16, 0
  %18 = extractvalue { i8*, i32 } %16, 1
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %17, i8** %19, align 8
  %20 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  br label %bb11

bb8:                                              ; preds = %bb7
  br label %bb9

bb14:                                             ; preds = %bb11
  br label %bb12

bb9:                                              ; preds = %bb8
  br label %bb2

bb13:                                             ; preds = %bb12
  %21 = bitcast { i8*, i32 }* %0 to i8**
  %22 = load i8*, i8** %21, align 8
  %23 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = insertvalue { i8*, i32 } undef, i8* %22, 0
  %26 = insertvalue { i8*, i32 } %25, i32 %24, 1
  resume { i8*, i32 } %26

bb10:                                             ; preds = %bb6
  ret %"std::process::Command"* %self
}

; <&T as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
define internal zeroext i1 @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb8e796f6bde7428cE"({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %self, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_4.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_4.1 = load i64, i64* %1, align 8
; call <str as core::fmt::Display>::fmt
  %2 = call zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h4fb653153270e40aE"([0 x i8]* nonnull align 1 %_4.0, i64 %_4.1, %"core::fmt::Formatter"* align 8 dereferenceable(64) %f)
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %2
}

; core::fmt::ArgumentV1::new
; Function Attrs: nonlazybind uwtable
define internal { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h667cdc2e451b5a6dE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %x, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull %f) unnamed_addr #0 {
start:
  %0 = alloca %"core::fmt::Opaque"*, align 8
  %1 = alloca i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, align 8
  %2 = alloca { i8*, i64* }, align 8
  %3 = bitcast i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* %f to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8
  %_3 = load i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)*, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %1, align 8, !nonnull !8
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast { [0 x i8]*, i64 }* %x to %"core::fmt::Opaque"*
  store %"core::fmt::Opaque"* %4, %"core::fmt::Opaque"** %0, align 8
  %_5 = load %"core::fmt::Opaque"*, %"core::fmt::Opaque"** %0, align 8, !nonnull !8
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast { i8*, i64* }* %2 to %"core::fmt::Opaque"**
  store %"core::fmt::Opaque"* %_5, %"core::fmt::Opaque"** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %7 = bitcast i64** %6 to i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)**
  store i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)* %_3, i1 (%"core::fmt::Opaque"*, %"core::fmt::Formatter"*)** %7, align 8
  %8 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8, !nonnull !8
  %10 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %2, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !8
  %12 = insertvalue { i8*, i64* } undef, i8* %9, 0
  %13 = insertvalue { i8*, i64* } %12, i64* %11, 1
  ret { i8*, i64* } %13
}

; core::fmt::Arguments::new_v1
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3fmt9Arguments6new_v117hb08dc7d5e9fd9b66E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %0, [0 x { [0 x i8]*, i64 }]* nonnull align 8 %pieces.0, i64 %pieces.1, [0 x { i8*, i64* }]* nonnull align 8 %args.0, i64 %args.1) unnamed_addr #1 {
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
  %2 = load i8, i8* %_3, align 1, !range !9
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
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [12 x i8] }>* @alloc77 to [0 x i8]*), i64 12, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc79 to %"core::panic::location::Location"*)) #9
  unreachable
}

; core::mem::maybe_uninit::MaybeUninit<T>::assume_init_drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$16assume_init_drop17h8be5db87850b27d7E"(%"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* %self to %"std::ffi::os_str::OsString"*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::drop_in_place<std::ffi::os_str::OsString>
  call void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h5e92125e2d6cf3c0E"(%"std::ffi::os_str::OsString"* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; core::mem::maybe_uninit::MaybeUninit<T>::assume_init_drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$16assume_init_drop17hb9d0d74c40016e1fE"(%"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* %self to %"core::option::Option<std::ffi::os_str::OsString>"*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::drop_in_place<core::option::Option<std::ffi::os_str::OsString>>
  call void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$17h0ee836b27546b805E"(%"core::option::Option<std::ffi::os_str::OsString>"* %0)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; core::mem::drop
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem4drop17hf7c62f846d3863e2E(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture dereferenceable(72) %_x) unnamed_addr #1 {
start:
; call core::ptr::drop_in_place<alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
  call void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h0bbff82997579894E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_x)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17h5860663d941616e9E(i64* align 8 dereferenceable(72) %t) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  store i64* %t, i64** %0, align 8
  %1 = load i64*, i64** %0, align 8, !nonnull !8
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::forget
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem6forget17h6e2ea7c5ba9c127cE() unnamed_addr #1 {
start:
  %0 = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::mem::replace::PanicGuard>", align 1
  %1 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::mem::replace::PanicGuard>"* %0 to %"alloc::collections::btree::mem::replace::PanicGuard"*
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::mem::replace
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64* } @_ZN4core3mem7replace17h59cf3c6c4b24d026E({ i64, i64* }* align 8 dereferenceable(16) %dest, i64 %src.0, i64* %src.1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
; invoke core::ptr::read
  %1 = invoke { i64, i64* } @_ZN4core3ptr4read17h987596c3c2e83367E({ i64, i64* }* %dest)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %result.0 = extractvalue { i64, i64* } %1, 0
  %result.1 = extractvalue { i64, i64* } %1, 1
  store i8 0, i8* %_7, align 1
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h7f9b231ce9681a38E({ i64, i64* }* %dest, i64 %src.0, i64* %src.1)
          to label %bb2 unwind label %cleanup1

bb6:                                              ; preds = %bb3, %cleanup
  %2 = load i8, i8* %_7, align 1, !range !9
  %3 = trunc i8 %2 to i1
  br i1 %3, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb6

bb2:                                              ; preds = %bb1
  %9 = insertvalue { i64, i64* } undef, i64 %result.0, 0
  %10 = insertvalue { i64, i64* } %9, i64* %result.1, 1
  ret { i64, i64* } %10

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb3

bb4:                                              ; preds = %bb5, %bb6
  %16 = bitcast { i8*, i32 }* %0 to i8**
  %17 = load i8*, i8** %16, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = insertvalue { i8*, i32 } undef, i8* %17, 0
  %21 = insertvalue { i8*, i32 } %20, i32 %19, 1
  resume { i8*, i32 } %21

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::mem::replace
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3mem7replace17h8f19b1c87b21bf29E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %result, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* align 8 dereferenceable(32) %dest, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %src) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_7 = alloca i8, align 1
  %_6 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
; invoke core::ptr::read
  invoke void @_ZN4core3ptr4read17h4a20600aa69da1b5E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %result, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %dest)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to i8*
  %2 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h3e07fae0d50072a8E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %dest, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %_6)
          to label %bb2 unwind label %cleanup1

bb6:                                              ; preds = %bb3, %cleanup
  %3 = load i8, i8* %_7, align 1, !range !9
  %4 = trunc i8 %3 to i1
  br i1 %4, label %bb5, label %bb4

cleanup:                                          ; preds = %start
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb6

bb2:                                              ; preds = %bb1
  ret void

bb3:                                              ; preds = %cleanup1
  br label %bb6

cleanup1:                                         ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb3

bb4:                                              ; preds = %bb5, %bb6
  %15 = bitcast { i8*, i32 }* %0 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::num::nonzero::NonZeroUsize::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h9b66acfc82121a0fE(i64 %n) unnamed_addr #1 {
start:
  %0 = alloca i64, align 8
  store i64 %n, i64* %0, align 8
  %1 = load i64, i64* %0, align 8, !range !10
  ret i64 %1
}

; core::num::nonzero::NonZeroUsize::get
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core3num7nonzero12NonZeroUsize3get17haef8a9ecd10710fcE(i64 %self) unnamed_addr #1 {
start:
  ret i64 %self
}

; core::ops::function::FnOnce::call_once{{vtable.shim}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h8e0590596bc72608E"(i64** %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  %0 = load i64*, i64** %_1, align 8, !nonnull !8
; call core::ops::function::FnOnce::call_once
  %1 = call i32 @_ZN4core3ops8function6FnOnce9call_once17h4df78d712145e907E(i64* nonnull %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @_ZN4core3ops8function6FnOnce9call_once17h4df78d712145e907E(i64* nonnull %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %_2 = alloca {}, align 1
  %_1 = alloca i64*, align 8
  store i64* %0, i64** %_1, align 8
; invoke std::rt::lang_start::{{closure}}
  %2 = invoke i32 @"_ZN3std2rt10lang_start28_$u7b$$u7b$closure$u7d$$u7d$17h95f0280e2046279fE"(i64** align 8 dereferenceable(8) %_1)
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

; core::ops::function::FnOnce::call_once
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ops8function6FnOnce9call_once17ha4a287f6c887def8E(void ()* nonnull %_1) unnamed_addr #1 {
start:
  %_2 = alloca {}, align 1
  call void %_1()
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<dyn std::error::Error+core::marker::Send+core::marker::Sync>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h44dcf3e2aec9383bE"({ {}*, [3 x i64]* }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 0
  %2 = load {}*, {}** %1, align 8, !nonnull !8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 1
  %4 = load [3 x i64]*, [3 x i64]** %3, align 8, !nonnull !8
  %5 = bitcast [3 x i64]* %4 to void ({}*)**
  %6 = getelementptr inbounds void ({}*)*, void ({}*)** %5, i64 0
  %7 = load void ({}*)*, void ({}*)** %6, align 8, !invariant.load !8, !nonnull !8
  invoke void %7({}* %2)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %start
  %8 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !nonnull !8
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h451e53515c61aaa1E(i8* nonnull %10, i64* align 8 dereferenceable(24) %12)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %13 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !nonnull !8
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h451e53515c61aaa1E(i8* nonnull %15, i64* align 8 dereferenceable(24) %17) #10
  br label %bb2

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4

bb2:                                              ; preds = %bb4
  %23 = bitcast { i8*, i32 }* %0 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

bb1:                                              ; preds = %bb3
  ret void
}

; core::ptr::drop_in_place<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h9d354491d71bda92E"(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_1) unnamed_addr #0 {
start:
; call <alloc::collections::btree::map::BTreeMap<K,V> as core::ops::drop::Drop>::drop
  call void @"_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57a40bb97f9d5efE"(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(24) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h0bbff82997579894E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_1) unnamed_addr #0 {
start:
; call <alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop
  call void @"_ZN95_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h249287db843d4796E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(72) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr203drop_in_place$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$17h051cee81767d5791E"({}* %_1.0, [3 x i64]* align 8 dereferenceable(24) %_1.1) unnamed_addr #0 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !8, !nonnull !8
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::slice_from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h95ee4d590315534bE(i8* %data, i64 %len) unnamed_addr #1 {
start:
; call core::ptr::const_ptr::<impl *const T>::cast
  %_3 = call {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h488c8f42f3ff433fE"(i8* %data)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb89a83b0ccc27790E({}* %_3, i64 %len)
  %1 = extractvalue { [0 x i8]*, i64 } %0, 0
  %2 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %1, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %2, 1
  ret { [0 x i8]*, i64 } %4
}

; core::ptr::drop_in_place<<alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop::DropGuard<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr223drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hbc93ea7af0008604E"(i64** %_1) unnamed_addr #0 {
start:
; call <<alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop::DropGuard<K,V> as core::ops::drop::Drop>::drop
  call void @"_ZN166_$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h1bf2227fd5ad89dcE"(i64** align 8 dereferenceable(8) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr228drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17he0d8d20a526f5c78E"({ {}*, [3 x i64]* }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 0
  %2 = load {}*, {}** %1, align 8, !nonnull !8
  %3 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %_1, i32 0, i32 1
  %4 = load [3 x i64]*, [3 x i64]** %3, align 8, !nonnull !8
  %5 = bitcast [3 x i64]* %4 to void ({}*)**
  %6 = getelementptr inbounds void ({}*)*, void ({}*)** %5, i64 0
  %7 = load void ({}*)*, void ({}*)** %6, align 8, !invariant.load !8, !nonnull !8
  invoke void %7({}* %2)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %start
  %8 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %9 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 0
  %10 = load i8*, i8** %9, align 8, !nonnull !8
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %8, i32 0, i32 1
  %12 = load i64*, i64** %11, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17ha003506c3e06779bE(i8* nonnull %10, i64* align 8 dereferenceable(24) %12)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %13 = bitcast { {}*, [3 x i64]* }* %_1 to { i8*, i64* }*
  %14 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8, !nonnull !8
  %16 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %13, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17ha003506c3e06779bE(i8* nonnull %15, i64* align 8 dereferenceable(24) %17) #10
  br label %bb2

cleanup:                                          ; preds = %start
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb4

bb2:                                              ; preds = %bb4
  %23 = bitcast { i8*, i32 }* %0 to i8**
  %24 = load i8*, i8** %23, align 8
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = insertvalue { i8*, i32 } undef, i8* %24, 0
  %28 = insertvalue { i8*, i32 } %27, i32 %26, 1
  resume { i8*, i32 } %28

bb1:                                              ; preds = %bb3
  ret void
}

; core::ptr::drop_in_place<[alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>]>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr238drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u5d$$GT$17h235f01aa8df138e4E"([0 x { {}*, [3 x i64]* }]* %_1.0, i64 %_1.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca { {}*, [3 x i64]* }*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [0 x { {}*, [3 x i64]* }]* %_1.0 to { {}*, [3 x i64]* }*
  store { {}*, [3 x i64]* }* %1, { {}*, [3 x i64]* }** %_9, align 8
  %2 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %_10 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %2, i64 %_1.1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %_14 = icmp eq { {}*, [3 x i64]* }* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %4 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %5 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %4, i64 1
  store { {}*, [3 x i64]* }* %5, { {}*, [3 x i64]* }** %_9, align 8
; invoke core::ptr::drop_in_place<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>
  invoke void @"_ZN4core3ptr228drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17he0d8d20a526f5c78E"({ {}*, [3 x i64]* }* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %_12 = icmp eq { {}*, [3 x i64]* }* %6, %_10
  br i1 %_12, label %bb2, label %bb8

cleanup:                                          ; preds = %bb10
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb9

bb8:                                              ; preds = %bb9
  %_11 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %12 = load { {}*, [3 x i64]* }*, { {}*, [3 x i64]* }** %_9, align 8
  %13 = getelementptr inbounds { {}*, [3 x i64]* }, { {}*, [3 x i64]* }* %12, i64 1
  store { {}*, [3 x i64]* }* %13, { {}*, [3 x i64]* }** %_9, align 8
; call core::ptr::drop_in_place<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>
  call void @"_ZN4core3ptr228drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17he0d8d20a526f5c78E"({ {}*, [3 x i64]* }* %_11) #10
  br label %bb9

bb2:                                              ; preds = %bb4, %bb9
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb6:                                              ; preds = %bb5, %bb7
  %20 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %20, %_1.1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %21 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [0 x { {}*, [3 x i64]* }], [0 x { {}*, [3 x i64]* }]* %_1.0, i64 0, i64 %21
  %22 = load i64, i64* %_4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %_4, align 8
; invoke core::ptr::drop_in_place<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>
  invoke void @"_ZN4core3ptr228drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17he0d8d20a526f5c78E"({ {}*, [3 x i64]* }* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %24 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %24, %_1.1
  br i1 %_6, label %bb2, label %bb3

cleanup1:                                         ; preds = %bb5
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb4

bb3:                                              ; preds = %bb4
  %30 = load i64, i64* %_4, align 8
  %_5 = getelementptr inbounds [0 x { {}*, [3 x i64]* }], [0 x { {}*, [3 x i64]* }]* %_1.0, i64 0, i64 %30
  %31 = load i64, i64* %_4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %_4, align 8
; call core::ptr::drop_in_place<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>
  call void @"_ZN4core3ptr228drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17he0d8d20a526f5c78E"({ {}*, [3 x i64]* }* %_5) #10
  br label %bb4
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x { {}*, [3 x i64]* }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h36e8c05943e8543dE({ {}*, [3 x i64]* }* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast { {}*, [3 x i64]* }* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x { {}*, [3 x i64]* }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h9486a661561172b8E({}* %0, i64 %len)
  %2 = extractvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %1, 0
  %3 = extractvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x { {}*, [3 x i64]* }]*, i64 } undef, [0 x { {}*, [3 x i64]* }]* %2, 0
  %5 = insertvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %4, i64 %3, 1
  ret { [0 x { {}*, [3 x i64]* }]*, i64 } %5
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8*]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4f19338e6b07185fE(i8** %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast i8** %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i8*]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h3af66d3b148c3185E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8*]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8*]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8*]*, i64 } undef, [0 x i8*]* %2, 0
  %5 = insertvalue { [0 x i8*]*, i64 } %4, i64 %3, 1
  ret { [0 x i8*]*, i64 } %5
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5a1f4397bbaf4eabE({ i8*, i64 }* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hdf022a5467e17c10E({}* %0, i64 %len)
  %2 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %3 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %2, 0
  %5 = insertvalue { [0 x { i8*, i64 }]*, i64 } %4, i64 %3, 1
  ret { [0 x { i8*, i64 }]*, i64 } %5
}

; core::ptr::slice_from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd630885702ab707dE(i8* %data, i64 %len) unnamed_addr #1 {
start:
  %0 = bitcast i8* %data to {}*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::metadata::from_raw_parts_mut
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h58ba3df96fb87609E({}* %0, i64 %len)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; core::ptr::drop_in_place<alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr251drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h025cbd06b4400660E"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h611d870ceededbcfE"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
  call void @"_ZN4core3ptr258drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h6f903428cf938be1E"({ i64*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
  call void @"_ZN4core3ptr258drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h6f903428cf938be1E"({ i64*, i64 }* %2) #10
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

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr258drop_in_place$LT$alloc..raw_vec..RawVec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h6f903428cf938be1E"({ i64*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he33d13827f24ac21E"({ i64*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::io::error::Repr>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr41drop_in_place$LT$std..io..error..Repr$GT$17hdf46172f956cf8a2E"(%"std::io::error::Repr"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::io::error::Repr"* %_1 to i8*
  %1 = load i8, i8* %0, align 8, !range !11
  %_2 = zext i8 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast %"std::io::error::Repr"* %_1 to %"std::io::error::Repr::Custom"*
  %3 = getelementptr inbounds %"std::io::error::Repr::Custom", %"std::io::error::Repr::Custom"* %2, i32 0, i32 1
; call core::ptr::drop_in_place<alloc::boxed::Box<std::io::error::Custom>>
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17haf2c6d6e424dad22E"(%"std::io::error::Custom"** %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; core::ptr::drop_in_place<alloc::string::String>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17head2a4d4be799173E"(%"alloc::string::String"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::string::String"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5031b5949765bc15E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::io::error::Error>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h69c1f2da8cb094e7E"(%"std::io::error::Error"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::io::error::Error"* %_1 to %"std::io::error::Repr"*
; call core::ptr::drop_in_place<std::io::error::Repr>
  call void @"_ZN4core3ptr41drop_in_place$LT$std..io..error..Repr$GT$17hdf46172f956cf8a2E"(%"std::io::error::Repr"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::process::Command>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h67437dcc678cfeceE"(%"std::process::Command"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::process::Command"* %_1 to %"std::sys::unix::process::process_common::Command"*
; call core::ptr::drop_in_place<std::sys::unix::process::process_common::Command>
  call void @"_ZN4core3ptr69drop_in_place$LT$std..sys..unix..process..process_common..Command$GT$17hbf0ee7a0981ac07bE"(%"std::sys::unix::process::process_common::Command"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::io::error::Custom>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17he561857fa79ee4ceE"(%"std::io::error::Custom"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::io::error::Custom"* %_1 to { {}*, [3 x i64]* }*
; call core::ptr::drop_in_place<alloc::boxed::Box<dyn std::error::Error+core::marker::Send+core::marker::Sync>>
  call void @"_ZN4core3ptr117drop_in_place$LT$alloc..boxed..Box$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$17h44dcf3e2aec9383bE"({ {}*, [3 x i64]* }* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::ffi::c_str::CString>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <std::ffi::c_str::CString as core::ops::drop::Drop>::drop
  invoke void @"_ZN66_$LT$std..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b4e6bbe2dc2d1aaE"({ i8*, i64 }* align 8 dereferenceable(16) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast { i8*, i64 }* %_1 to { [0 x i8]*, i64 }*
; call core::ptr::drop_in_place<alloc::boxed::Box<[u8]>>
  call void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h165b7bc4fe9bfbe2E"({ [0 x i8]*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast { i8*, i64 }* %_1 to { [0 x i8]*, i64 }*
; call core::ptr::drop_in_place<alloc::boxed::Box<[u8]>>
  call void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h165b7bc4fe9bfbe2E"({ [0 x i8]*, i64 }* %2) #10
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

; core::ptr::drop_in_place<alloc::vec::Vec<u8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5031b5949765bc15E"(%"alloc::vec::Vec<u8>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0ab2afc1333a572E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2d700bd66e09f40bE"({ i8*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<u8>"* %_1 to { i8*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
  call void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2d700bd66e09f40bE"({ i8*, i64 }* %2) #10
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

; core::ptr::drop_in_place<std::ffi::os_str::OsString>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h5e92125e2d6cf3c0E"(%"std::ffi::os_str::OsString"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::ffi::os_str::OsString"* %_1 to %"std::sys::unix::os_str::Buf"*
; call core::ptr::drop_in_place<std::sys::unix::os_str::Buf>
  call void @"_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17hee4d7a8d927454abE"(%"std::sys::unix::os_str::Buf"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::os::fd::owned::OwnedFd>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17hf87fd09a05e38cdbE"(i32* %_1) unnamed_addr #0 {
start:
; call <std::os::fd::owned::OwnedFd as core::ops::drop::Drop>::drop
  call void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb781a99c7e96c762E"(i32* align 4 dereferenceable(4) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::sys::unix::os_str::Buf>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr48drop_in_place$LT$std..sys..unix..os_str..Buf$GT$17hee4d7a8d927454abE"(%"std::sys::unix::os_str::Buf"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::sys::unix::os_str::Buf"* %_1 to %"alloc::vec::Vec<u8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<u8>>
  call void @"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h5031b5949765bc15E"(%"alloc::vec::Vec<u8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::sys::unix::fd::FileDesc>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17haa28ccb5ac88c82bE"(i32* %_1) unnamed_addr #0 {
start:
; call core::ptr::drop_in_place<std::os::fd::owned::OwnedFd>
  call void @"_ZN4core3ptr48drop_in_place$LT$std..os..fd..owned..OwnedFd$GT$17hf87fd09a05e38cdbE"(i32* %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i64* @_ZN4core3ptr4read17h07a23053da925799E(i64** %src) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %tmp = alloca i8*, align 8
  %1 = bitcast i8** %0 to {}*
  %2 = load i8*, i8** %0, align 8
  store i8* %2, i8** %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast i8** %tmp to i64**
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = bitcast i64** %3 to i8*
  %5 = bitcast i64** %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 8, i1 false)
  %_6 = load i8*, i8** %tmp, align 8
  %_3.i = bitcast i8* %_6 to i64*
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i64* %_3.i
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17h275ab10500d25c06E(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(24) %0, %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %src) unnamed_addr #1 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %tmp to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %2 to i8*
  %4 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !15)
  call void @llvm.experimental.noalias.scope.decl(metadata !18)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false), !noalias !15
  call void @llvm.experimental.noalias.scope.decl(metadata !20)
  call void @llvm.experimental.noalias.scope.decl(metadata !23)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3.i to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %11 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0 to i8*
  %12 = bitcast %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false), !alias.scope !25, !noalias !18
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17h444823e36d058d91E(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %src) unnamed_addr #1 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !26)
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %tmp to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %2 to i8*
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !29)
  call void @llvm.experimental.noalias.scope.decl(metadata !32)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false), !noalias !29
  call void @llvm.experimental.noalias.scope.decl(metadata !34)
  call void @llvm.experimental.noalias.scope.decl(metadata !37)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_3.i to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %0 to i8*
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false), !alias.scope !39, !noalias !32
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17h4a20600aa69da1b5E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %src) unnamed_addr #1 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>", align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !40)
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %tmp to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %2 to i8*
  %4 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 32, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !43)
  call void @llvm.experimental.noalias.scope.decl(metadata !46)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false), !noalias !43
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !51)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>>"* %_3.i to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %11 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %0 to i8*
  %12 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 32, i1 false), !alias.scope !53, !noalias !46
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64* } @_ZN4core3ptr4read17h8001469bddcea459E({ i64, i64* }* %src) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8* }, align 8
  %tmp = alloca { i64, i8* }, align 8
  %1 = bitcast { i64, i8* }* %0 to {}*
  %2 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = insertvalue { i64, i8* } undef, i64 %3, 0
  %7 = insertvalue { i64, i8* } %6, i8* %5, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = bitcast { i64, i8* }* %tmp to { i64, i64* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = bitcast { i64, i64* }* %8 to i8*
  %10 = bitcast { i64, i64* }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 0
  %_6.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 1
  %_6.1 = load i8*, i8** %12, align 8
  %_3.1.i = bitcast i8* %_6.1 to i64*
  %13 = insertvalue { i64, i64* } undef, i64 %_6.0, 0
  %14 = insertvalue { i64, i64* } %13, i64* %_3.1.i, 1
  %15 = extractvalue { i64, i64* } %14, 0
  %16 = extractvalue { i64, i64* } %14, 1
  %17 = extractvalue { i64, i64* } %14, 0
  %18 = extractvalue { i64, i64* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %19 = insertvalue { i64, i64* } undef, i64 %17, 0
  %20 = insertvalue { i64, i64* } %19, i64* %18, 1
  ret { i64, i64* } %20
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64* } @_ZN4core3ptr4read17h987596c3c2e83367E({ i64, i64* }* %src) unnamed_addr #1 {
start:
  %0 = alloca { i64, i8* }, align 8
  %tmp = alloca { i64, i8* }, align 8
  %1 = bitcast { i64, i8* }* %0 to {}*
  %2 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %0, i32 0, i32 1
  %5 = load i8*, i8** %4, align 8
  %6 = insertvalue { i64, i8* } undef, i64 %3, 0
  %7 = insertvalue { i64, i8* } %6, i8* %5, 1
  store { i64, i8* } %7, { i64, i8* }* %tmp, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %8 = bitcast { i64, i8* }* %tmp to { i64, i64* }*
  br label %bb2

bb2:                                              ; preds = %bb1
  %9 = bitcast { i64, i64* }* %8 to i8*
  %10 = bitcast { i64, i64* }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 16, i1 false)
  %11 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 0
  %_6.0 = load i64, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i8* }, { i64, i8* }* %tmp, i32 0, i32 1
  %_6.1 = load i8*, i8** %12, align 8
  %_3.1.i = bitcast i8* %_6.1 to i64*
  %13 = insertvalue { i64, i64* } undef, i64 %_6.0, 0
  %14 = insertvalue { i64, i64* } %13, i64* %_3.1.i, 1
  %15 = extractvalue { i64, i64* } %14, 0
  %16 = extractvalue { i64, i64* } %14, 1
  %17 = extractvalue { i64, i64* } %14, 0
  %18 = extractvalue { i64, i64* } %14, 1
  br label %bb3

bb3:                                              ; preds = %bb2
  %19 = insertvalue { i64, i64* } undef, i64 %17, 0
  %20 = insertvalue { i64, i64* } %19, i64* %18, 1
  ret { i64, i64* } %20
}

; core::ptr::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr4read17he24f1e86ca35f018E(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %src) unnamed_addr #1 {
start:
  %_3.i = alloca %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", align 8
  %_6 = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", align 8
  %tmp = alloca %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !54)
  %1 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %tmp to {}*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %tmp to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  br label %bb2

bb2:                                              ; preds = %bb1
  %3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %2 to i8*
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  %5 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_6 to i8*
  %6 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %tmp to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !57)
  call void @llvm.experimental.noalias.scope.decl(metadata !60)
  %7 = bitcast %"core::mem::maybe_uninit::MaybeUninit<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_6 to %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"*
  %8 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_3.i to i8*
  %9 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false), !noalias !57
  call void @llvm.experimental.noalias.scope.decl(metadata !62)
  call void @llvm.experimental.noalias.scope.decl(metadata !65)
  %10 = bitcast %"core::mem::manually_drop::ManuallyDrop<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_3.i to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %0 to i8*
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false), !alias.scope !67, !noalias !60
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<u8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr53drop_in_place$LT$alloc..raw_vec..RawVec$LT$u8$GT$$GT$17h2d700bd66e09f40bE"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce955083615d2d9fE"({ i8*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<[std::ffi::c_str::CString]>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr55drop_in_place$LT$$u5b$std..ffi..c_str..CString$u5d$$GT$17ha5c36145151522d9E"([0 x { i8*, i64 }]* %_1.0, i64 %_1.1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_9 = alloca { i8*, i64 }*, align 8
  %_4 = alloca i64, align 8
  br i1 false, label %bb7, label %bb12

bb7:                                              ; preds = %start
  store i64 0, i64* %_4, align 8
  br label %bb6

bb12:                                             ; preds = %start
  %1 = bitcast [0 x { i8*, i64 }]* %_1.0 to { i8*, i64 }*
  store { i8*, i64 }* %1, { i8*, i64 }** %_9, align 8
  %2 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %_10 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i64 %_1.1
  br label %bb11

bb11:                                             ; preds = %bb10, %bb12
  %3 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %_14 = icmp eq { i8*, i64 }* %3, %_10
  br i1 %_14, label %bb1, label %bb10

bb10:                                             ; preds = %bb11
  %_13 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %4 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %4, i64 1
  store { i8*, i64 }* %5, { i8*, i64 }** %_9, align 8
; invoke core::ptr::drop_in_place<std::ffi::c_str::CString>
  invoke void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_13)
          to label %bb11 unwind label %cleanup

bb1:                                              ; preds = %bb6, %bb11
  ret void

bb9:                                              ; preds = %bb8, %cleanup
  %6 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %_12 = icmp eq { i8*, i64 }* %6, %_10
  br i1 %_12, label %bb2, label %bb8

cleanup:                                          ; preds = %bb10
  %7 = landingpad { i8*, i32 }
          cleanup
  %8 = extractvalue { i8*, i32 } %7, 0
  %9 = extractvalue { i8*, i32 } %7, 1
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %8, i8** %10, align 8
  %11 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %9, i32* %11, align 8
  br label %bb9

bb8:                                              ; preds = %bb9
  %_11 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %12 = load { i8*, i64 }*, { i8*, i64 }** %_9, align 8
  %13 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %12, i64 1
  store { i8*, i64 }* %13, { i8*, i64 }** %_9, align 8
; call core::ptr::drop_in_place<std::ffi::c_str::CString>
  call void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_11) #10
  br label %bb9

bb2:                                              ; preds = %bb4, %bb9
  %14 = bitcast { i8*, i32 }* %0 to i8**
  %15 = load i8*, i8** %14, align 8
  %16 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = insertvalue { i8*, i32 } undef, i8* %15, 0
  %19 = insertvalue { i8*, i32 } %18, i32 %17, 1
  resume { i8*, i32 } %19

bb6:                                              ; preds = %bb5, %bb7
  %20 = load i64, i64* %_4, align 8
  %_8 = icmp eq i64 %20, %_1.1
  br i1 %_8, label %bb1, label %bb5

bb5:                                              ; preds = %bb6
  %21 = load i64, i64* %_4, align 8
  %_7 = getelementptr inbounds [0 x { i8*, i64 }], [0 x { i8*, i64 }]* %_1.0, i64 0, i64 %21
  %22 = load i64, i64* %_4, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %_4, align 8
; invoke core::ptr::drop_in_place<std::ffi::c_str::CString>
  invoke void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_7)
          to label %bb6 unwind label %cleanup1

bb4:                                              ; preds = %bb3, %cleanup1
  %24 = load i64, i64* %_4, align 8
  %_6 = icmp eq i64 %24, %_1.1
  br i1 %_6, label %bb2, label %bb3

cleanup1:                                         ; preds = %bb5
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb4

bb3:                                              ; preds = %bb4
  %30 = load i64, i64* %_4, align 8
  %_5 = getelementptr inbounds [0 x { i8*, i64 }], [0 x { i8*, i64 }]* %_1.0, i64 0, i64 %30
  %31 = load i64, i64* %_4, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %_4, align 8
; call core::ptr::drop_in_place<std::ffi::c_str::CString>
  call void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_5) #10
  br label %bb4
}

; core::ptr::drop_in_place<std::sys_common::process::CommandEnv>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr57drop_in_place$LT$std..sys_common..process..CommandEnv$GT$17h461ade2c434a361cE"(%"std::sys_common::process::CommandEnv"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::sys_common::process::CommandEnv"* %_1 to %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
; call core::ptr::drop_in_place<alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
  call void @"_ZN4core3ptr152drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17h9d354491d71bda92E"(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<[u8]>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr58drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u8$u5d$$GT$$GT$17h165b7bc4fe9bfbe2E"({ [0 x i8]*, i64 }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  br label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { [0 x i8]*, i64 }* %_1 to { i8*, i64 }*
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 0
  %3 = load i8*, i8** %2, align 8, !nonnull !8
  %4 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h3b063d10e7346068E(i8* nonnull %3, i64 %5)
  br label %bb1

bb4:                                              ; No predecessors!
  %6 = bitcast { [0 x i8]*, i64 }* %_1 to { i8*, i64 }*
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8, !nonnull !8
  %9 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17h3b063d10e7346068E(i8* nonnull %8, i64 %10) #10
  br label %bb2

bb2:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb1:                                              ; preds = %bb3
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<[u32]>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$17hbed8fe1c3eb0ab55E"({ [0 x i32]*, i64 }* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  br label %bb3

bb3:                                              ; preds = %start
  %1 = bitcast { [0 x i32]*, i64 }* %_1 to { i32*, i64 }*
  %2 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 0
  %3 = load i32*, i32** %2, align 8, !nonnull !8
  %4 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %1, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17haeb91c6883c6de9dE(i32* nonnull %3, i64 %5)
  br label %bb1

bb4:                                              ; No predecessors!
  %6 = bitcast { [0 x i32]*, i64 }* %_1 to { i32*, i64 }*
  %7 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8, !nonnull !8
  %9 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %6, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17haeb91c6883c6de9dE(i32* nonnull %8, i64 %10) #10
  br label %bb2

bb2:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb1:                                              ; preds = %bb3
  ret void
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17h3e07fae0d50072a8E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %dst, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %src) unnamed_addr #1 {
start:
  %0 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %dst to i8*
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 32, i1 false)
  ret void
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17h7f9b231ce9681a38E({ i64, i64* }* %dst, i64 %0, i64* %1) unnamed_addr #1 {
start:
  %src = alloca { i64, i64* }, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %src, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %src, i32 0, i32 1
  store i64* %1, i64** %3, align 8
  %4 = bitcast { i64, i64* }* %dst to i8*
  %5 = bitcast { i64, i64* }* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 16, i1 false)
  ret void
}

; core::ptr::write
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core3ptr5write17h8818aec7509e4a8dE(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %dst, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %src) unnamed_addr #1 {
start:
  %0 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %dst to i8*
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %src to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<*const i8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$BP$const$u20$i8$GT$$GT$17hca3980b1c3d89428E"(%"alloc::vec::Vec<*const i8>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h76cf9a8aa5c17269E"(%"alloc::vec::Vec<*const i8>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<*const i8>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<*const i8>>
  call void @"_ZN4core3ptr67drop_in_place$LT$alloc..raw_vec..RawVec$LT$$BP$const$u20$i8$GT$$GT$17h7c1c901511a8ac2aE"({ i64*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<*const i8>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<*const i8>>
  call void @"_ZN4core3ptr67drop_in_place$LT$alloc..raw_vec..RawVec$LT$$BP$const$u20$i8$GT$$GT$17h7c1c901511a8ac2aE"({ i64*, i64 }* %2) #10
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

; core::ptr::drop_in_place<std::sys::unix::process::process_common::Argv>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr66drop_in_place$LT$std..sys..unix..process..process_common..Argv$GT$17h15fe03eae2610470E"(%"std::sys::unix::process::process_common::Argv"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"std::sys::unix::process::process_common::Argv"* %_1 to %"alloc::vec::Vec<*const i8>"*
; call core::ptr::drop_in_place<alloc::vec::Vec<*const i8>>
  call void @"_ZN4core3ptr60drop_in_place$LT$alloc..vec..Vec$LT$$BP$const$u20$i8$GT$$GT$17hca3980b1c3d89428E"(%"alloc::vec::Vec<*const i8>"* %0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<*const i8>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr67drop_in_place$LT$alloc..raw_vec..RawVec$LT$$BP$const$u20$i8$GT$$GT$17h7c1c901511a8ac2aE"({ i64*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd2d12204e01dad91E"({ i64*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<std::sys::unix::process::process_common::Stdio>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr67drop_in_place$LT$std..sys..unix..process..process_common..Stdio$GT$17h7b7f29f931de8613E"({ i32, i32 }* %_1) unnamed_addr #0 {
start:
  %0 = bitcast { i32, i32 }* %_1 to i32*
  %1 = load i32, i32* %0, align 4, !range !68
  %_2 = zext i32 %1 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb1
    i64 2, label %bb1
  ]

bb2:                                              ; preds = %start
  %2 = bitcast { i32, i32 }* %_1 to %"std::sys::unix::process::process_common::Stdio::Fd"*
  %3 = getelementptr inbounds %"std::sys::unix::process::process_common::Stdio::Fd", %"std::sys::unix::process::process_common::Stdio::Fd"* %2, i32 0, i32 1
; call core::ptr::drop_in_place<std::sys::unix::fd::FileDesc>
  call void @"_ZN4core3ptr49drop_in_place$LT$std..sys..unix..fd..FileDesc$GT$17haa28ccb5ac88c82bE"(i32* %3)
  br label %bb1

bb1:                                              ; preds = %bb2, %start, %start, %start
  ret void
}

; core::ptr::drop_in_place<alloc::boxed::Box<std::io::error::Custom>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr68drop_in_place$LT$alloc..boxed..Box$LT$std..io..error..Custom$GT$$GT$17haf2c6d6e424dad22E"(%"std::io::error::Custom"** %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = load %"std::io::error::Custom"*, %"std::io::error::Custom"** %_1, align 8, !nonnull !8
; invoke core::ptr::drop_in_place<std::io::error::Custom>
  invoke void @"_ZN4core3ptr43drop_in_place$LT$std..io..error..Custom$GT$17he561857fa79ee4ceE"(%"std::io::error::Custom"* %1)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %start
  %2 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %3 = load i64*, i64** %2, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hf590a1652b171c3bE(i64* nonnull %3)
  br label %bb1

bb4:                                              ; preds = %cleanup
  %4 = bitcast %"std::io::error::Custom"** %_1 to i64**
  %5 = load i64*, i64** %4, align 8, !nonnull !8
; call alloc::alloc::box_free
  call void @_ZN5alloc5alloc8box_free17hf590a1652b171c3bE(i64* nonnull %5) #10
  br label %bb2

cleanup:                                          ; preds = %start
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = extractvalue { i8*, i32 } %6, 0
  %8 = extractvalue { i8*, i32 } %6, 1
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %7, i8** %9, align 8
  %10 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %8, i32* %10, align 8
  br label %bb4

bb2:                                              ; preds = %bb4
  %11 = bitcast { i8*, i32 }* %0 to i8**
  %12 = load i8*, i8** %11, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = insertvalue { i8*, i32 } undef, i8* %12, 0
  %16 = insertvalue { i8*, i32 } %15, i32 %14, 1
  resume { i8*, i32 } %16

bb1:                                              ; preds = %bb3
  ret void
}

; core::ptr::drop_in_place<alloc::vec::Vec<std::ffi::c_str::CString>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..c_str..CString$GT$$GT$17h5b5cccc2e9de3eccE"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
; invoke <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bc020eb8214f930E"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* align 8 dereferenceable(24) %_1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %start
  %1 = bitcast %"alloc::vec::Vec<std::ffi::c_str::CString>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<std::ffi::c_str::CString>>
  call void @"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..c_str..CString$GT$$GT$17h590cff7d39f9d4a1E"({ i64*, i64 }* %1)
  br label %bb2

bb3:                                              ; preds = %cleanup
  %2 = bitcast %"alloc::vec::Vec<std::ffi::c_str::CString>"* %_1 to { i64*, i64 }*
; call core::ptr::drop_in_place<alloc::raw_vec::RawVec<std::ffi::c_str::CString>>
  call void @"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..c_str..CString$GT$$GT$17h590cff7d39f9d4a1E"({ i64*, i64 }* %2) #10
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

; core::ptr::drop_in_place<std::sys::unix::process::process_common::Command>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr69drop_in_place$LT$std..sys..unix..process..process_common..Command$GT$17hbf0ee7a0981ac07bE"(%"std::sys::unix::process::process_common::Command"* %_1) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %1 = bitcast %"std::sys::unix::process::process_common::Command"* %_1 to { i8*, i64 }*
; invoke core::ptr::drop_in_place<std::ffi::c_str::CString>
  invoke void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %1)
          to label %bb20 unwind label %cleanup

bb20:                                             ; preds = %start
  %2 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 1
; invoke core::ptr::drop_in_place<alloc::vec::Vec<std::ffi::c_str::CString>>
  invoke void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..c_str..CString$GT$$GT$17h5b5cccc2e9de3eccE"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* %2)
          to label %bb19 unwind label %cleanup1

bb11:                                             ; preds = %cleanup
  %3 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 1
; call core::ptr::drop_in_place<alloc::vec::Vec<std::ffi::c_str::CString>>
  call void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$std..ffi..c_str..CString$GT$$GT$17h5b5cccc2e9de3eccE"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* %3) #10
  br label %bb10

cleanup:                                          ; preds = %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb11

bb10:                                             ; preds = %cleanup1, %bb11
  %9 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 2
; call core::ptr::drop_in_place<std::sys::unix::process::process_common::Argv>
  call void @"_ZN4core3ptr66drop_in_place$LT$std..sys..unix..process..process_common..Argv$GT$17h15fe03eae2610470E"(%"std::sys::unix::process::process_common::Argv"* %9) #10
  br label %bb9

bb19:                                             ; preds = %bb20
  %10 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 2
; invoke core::ptr::drop_in_place<std::sys::unix::process::process_common::Argv>
  invoke void @"_ZN4core3ptr66drop_in_place$LT$std..sys..unix..process..process_common..Argv$GT$17h15fe03eae2610470E"(%"std::sys::unix::process::process_common::Argv"* %10)
          to label %bb18 unwind label %cleanup2

cleanup1:                                         ; preds = %bb20
  %11 = landingpad { i8*, i32 }
          cleanup
  %12 = extractvalue { i8*, i32 } %11, 0
  %13 = extractvalue { i8*, i32 } %11, 1
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %12, i8** %14, align 8
  %15 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  br label %bb10

bb9:                                              ; preds = %cleanup2, %bb10
  %16 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 3
; call core::ptr::drop_in_place<std::sys_common::process::CommandEnv>
  call void @"_ZN4core3ptr57drop_in_place$LT$std..sys_common..process..CommandEnv$GT$17h461ade2c434a361cE"(%"std::sys_common::process::CommandEnv"* %16) #10
  br label %bb8

bb18:                                             ; preds = %bb19
  %17 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 3
; invoke core::ptr::drop_in_place<std::sys_common::process::CommandEnv>
  invoke void @"_ZN4core3ptr57drop_in_place$LT$std..sys_common..process..CommandEnv$GT$17h461ade2c434a361cE"(%"std::sys_common::process::CommandEnv"* %17)
          to label %bb17 unwind label %cleanup3

cleanup2:                                         ; preds = %bb19
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = extractvalue { i8*, i32 } %18, 0
  %20 = extractvalue { i8*, i32 } %18, 1
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %19, i8** %21, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %20, i32* %22, align 8
  br label %bb9

bb8:                                              ; preds = %cleanup3, %bb9
  %23 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 4
; call core::ptr::drop_in_place<core::option::Option<std::ffi::c_str::CString>>
  call void @"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..ffi..c_str..CString$GT$$GT$17h0220820fd9471886E"({ i8*, i64 }* %23) #10
  br label %bb7

bb17:                                             ; preds = %bb18
  %24 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 4
; invoke core::ptr::drop_in_place<core::option::Option<std::ffi::c_str::CString>>
  invoke void @"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..ffi..c_str..CString$GT$$GT$17h0220820fd9471886E"({ i8*, i64 }* %24)
          to label %bb16 unwind label %cleanup4

cleanup3:                                         ; preds = %bb18
  %25 = landingpad { i8*, i32 }
          cleanup
  %26 = extractvalue { i8*, i32 } %25, 0
  %27 = extractvalue { i8*, i32 } %25, 1
  %28 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %26, i8** %28, align 8
  %29 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  br label %bb8

bb7:                                              ; preds = %cleanup4, %bb8
  %30 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 5
; call core::ptr::drop_in_place<alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
  call void @"_ZN4core3ptr251drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h025cbd06b4400660E"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %30) #10
  br label %bb6

bb16:                                             ; preds = %bb17
  %31 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 5
; invoke core::ptr::drop_in_place<alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>>>
  invoke void @"_ZN4core3ptr251drop_in_place$LT$alloc..vec..Vec$LT$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$GT$$GT$17h025cbd06b4400660E"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %31)
          to label %bb15 unwind label %cleanup5

cleanup4:                                         ; preds = %bb17
  %32 = landingpad { i8*, i32 }
          cleanup
  %33 = extractvalue { i8*, i32 } %32, 0
  %34 = extractvalue { i8*, i32 } %32, 1
  %35 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  br label %bb7

bb6:                                              ; preds = %cleanup5, %bb7
  %37 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 6
; call core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<[u32]>>>
  call void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17hba8c0e24dc6f1c2dE"({ i32*, i64 }* %37) #10
  br label %bb5

bb15:                                             ; preds = %bb16
  %38 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 6
; invoke core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<[u32]>>>
  invoke void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17hba8c0e24dc6f1c2dE"({ i32*, i64 }* %38)
          to label %bb14 unwind label %cleanup6

cleanup5:                                         ; preds = %bb16
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = extractvalue { i8*, i32 } %39, 0
  %41 = extractvalue { i8*, i32 } %39, 1
  %42 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  br label %bb6

bb5:                                              ; preds = %cleanup6, %bb6
  %44 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 9
; call core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  call void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %44) #10
  br label %bb4

bb14:                                             ; preds = %bb15
  %45 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 9
; invoke core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  invoke void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %45)
          to label %bb13 unwind label %cleanup7

cleanup6:                                         ; preds = %bb15
  %46 = landingpad { i8*, i32 }
          cleanup
  %47 = extractvalue { i8*, i32 } %46, 0
  %48 = extractvalue { i8*, i32 } %46, 1
  %49 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %47, i8** %49, align 8
  %50 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %48, i32* %50, align 8
  br label %bb5

bb4:                                              ; preds = %cleanup7, %bb5
  %51 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 10
; call core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  call void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %51) #10
  br label %bb3

bb13:                                             ; preds = %bb14
  %52 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 10
; invoke core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  invoke void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %52)
          to label %bb12 unwind label %cleanup8

cleanup7:                                         ; preds = %bb14
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = extractvalue { i8*, i32 } %53, 0
  %55 = extractvalue { i8*, i32 } %53, 1
  %56 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  br label %bb4

bb3:                                              ; preds = %cleanup8, %bb4
  %58 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 11
; call core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  call void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %58) #10
  br label %bb1

bb12:                                             ; preds = %bb13
  %59 = getelementptr inbounds %"std::sys::unix::process::process_common::Command", %"std::sys::unix::process::process_common::Command"* %_1, i32 0, i32 11
; call core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
  call void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %59)
  br label %bb2

cleanup8:                                         ; preds = %bb13
  %60 = landingpad { i8*, i32 }
          cleanup
  %61 = extractvalue { i8*, i32 } %60, 0
  %62 = extractvalue { i8*, i32 } %60, 1
  %63 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %61, i8** %63, align 8
  %64 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  br label %bb3

bb1:                                              ; preds = %bb3
  %65 = bitcast { i8*, i32 }* %0 to i8**
  %66 = load i8*, i8** %65, align 8
  %67 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = insertvalue { i8*, i32 } undef, i8* %66, 0
  %70 = insertvalue { i8*, i32 } %69, i32 %68, 1
  resume { i8*, i32 } %70

bb2:                                              ; preds = %bb12
  ret void
}

; core::ptr::unique::Unique<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !8
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h0ca7220dc523d8efE"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h80f3741ca372cf19E"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h0e089315399d1f62E"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call { {}*, [3 x i64]* }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hee30d7d8690b684cE"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast { {}*, [3 x i64]* }* %_3 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h24460321a73e549aE"(i32* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %0 = call { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd07efb25be2d67bE"(i32* nonnull %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i32]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i32]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i32]* %_3.0 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3983083cbd72c4e7E"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %0 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haa61d289b0be4bc8E"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1)
  %_3.0 = extractvalue { {}*, [3 x i64]* } %0, 0
  %_3.1 = extractvalue { {}*, [3 x i64]* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast {}* %_3.0 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4bd1c17473a01d8dE"(i8* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1ed3c26fb28268cE"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h8f7586d274f75012E"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call { i8*, i64 }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3399302d36c552c3E"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast { i8*, i64 }* %_3 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd3ad7022a8bee419E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %0 = call { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17heb46c09f8b3fbd56E"(i8* nonnull %self.0, i64 %self.1)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast [0 x i8]* %_3.0 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %1 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %1
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf106972347f7faf8E"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h79c4ab2c33cdaf83E"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"std::io::error::Custom"* %_3 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf79a608fd740f897E"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::unique::Unique<T>::as_ptr
  %_3 = call i8** @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6d2b2fcab365ab5E"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast i8** %_3 to i8*
; call core::ptr::unique::Unique<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$13new_unchecked17h1d44e3af00cac920E"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3399302d36c552c3E"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to { i8*, i64 }*
  ret { i8*, i64 }* %_2
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h79c4ab2c33cdaf83E"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"std::io::error::Custom"*
  ret %"std::io::error::Custom"* %_2
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h80f3741ca372cf19E"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haa61d289b0be4bc8E"(i8* nonnull %self.0, i64* align 8 dereferenceable(24) %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to {}*
  %_2.1 = bitcast i64* %self.1 to [3 x i64]*
  %0 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %1 = insertvalue { {}*, [3 x i64]* } %0, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %1
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1ed3c26fb28268cE"(i8* nonnull %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8** @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6d2b2fcab365ab5E"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to i8**
  ret i8** %_2
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17heb46c09f8b3fbd56E"(i8* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i8* %self.0 to [0 x i8]*
  %0 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %1 = insertvalue { [0 x i8]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i8]*, i64 } %1
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hee30d7d8690b684cE"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to { {}*, [3 x i64]* }*
  ret { {}*, [3 x i64]* }* %_2
}

; core::ptr::unique::Unique<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd07efb25be2d67bE"(i32* nonnull %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %_2.0 = bitcast i32* %self.0 to [0 x i32]*
  %0 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %_2.0, 0
  %1 = insertvalue { [0 x i32]*, i64 } %0, i64 %self.1, 1
  ret { [0 x i32]*, i64 } %1
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h4e65567cd16c4c2aE"({ i8*, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h80f3741ca372cf19E"(i8* nonnull %_3.0, i64* align 8 dereferenceable(24) %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h54c836a3467add55E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
; call core::ptr::unique::Unique<T>::as_ptr
  %2 = call { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17heb46c09f8b3fbd56E"(i8* nonnull %_3.0, i64 %_3.1)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %2, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %_2.0, 0
  %4 = insertvalue { [0 x i8]*, i64 } %3, i64 %_2.1, 1
  ret { [0 x i8]*, i64 } %4
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(24) %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h804e3408c7685746E"(i64** align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %_3 = load i64*, i64** %self, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %_2 = call %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h79c4ab2c33cdaf83E"(i64* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"std::io::error::Custom"* %_2
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9f7aaafa98924375E"({ i8*, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 0
  %_3.0 = load i8*, i8** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %self, i32 0, i32 1
  %_3.1 = load i64*, i64** %1, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %2 = call { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17haa61d289b0be4bc8E"(i8* nonnull %_3.0, i64* align 8 dereferenceable(24) %_3.1)
  %_2.0 = extractvalue { {}*, [3 x i64]* } %2, 0
  %_2.1 = extractvalue { {}*, [3 x i64]* } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { {}*, [3 x i64]* } undef, {}* %_2.0, 0
  %4 = insertvalue { {}*, [3 x i64]* } %3, [3 x i64]* %_2.1, 1
  ret { {}*, [3 x i64]* } %4
}

; core::ptr::unique::Unique<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfd953f485a90e2b5E"({ i32*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 0
  %_3.0 = load i32*, i32** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %self, i32 0, i32 1
  %_3.1 = load i64, i64* %1, align 8
; call core::ptr::unique::Unique<T>::as_ptr
  %2 = call { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hfd07efb25be2d67bE"(i32* nonnull %_3.0, i64 %_3.1)
  %_2.0 = extractvalue { [0 x i32]*, i64 } %2, 0
  %_2.1 = extractvalue { [0 x i32]*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { [0 x i32]*, i64 } undef, [0 x i32]* %_2.0, 0
  %4 = insertvalue { [0 x i32]*, i64 } %3, i64 %_2.1, 1
  ret { [0 x i32]*, i64 } %4
}

; core::ptr::drop_in_place<alloc::collections::btree::mem::replace::PanicGuard>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..mem..replace..PanicGuard$GT$17hd9f45c4a53c0e3eaE"(%"alloc::collections::btree::mem::replace::PanicGuard"* %_1) unnamed_addr #0 {
start:
; call <alloc::collections::btree::mem::replace::PanicGuard as core::ops::drop::Drop>::drop
  call void @"_ZN93_$LT$alloc..collections..btree..mem..replace..PanicGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h765cebd554f135e0E"(%"alloc::collections::btree::mem::replace::PanicGuard"* nonnull align 1 %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<core::option::Option<std::ffi::c_str::CString>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr73drop_in_place$LT$core..option..Option$LT$std..ffi..c_str..CString$GT$$GT$17h0220820fd9471886E"({ i8*, i64 }* %_1) unnamed_addr #0 {
start:
  %0 = bitcast { i8*, i64 }* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
; call core::ptr::drop_in_place<std::ffi::c_str::CString>
  call void @"_ZN4core3ptr45drop_in_place$LT$std..ffi..c_str..CString$GT$17h508e2a5367e0546cE"({ i8*, i64 }* %_1)
  br label %bb1
}

; core::ptr::drop_in_place<alloc::raw_vec::RawVec<std::ffi::c_str::CString>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr75drop_in_place$LT$alloc..raw_vec..RawVec$LT$std..ffi..c_str..CString$GT$$GT$17h590cff7d39f9d4a1E"({ i64*, i64 }* %_1) unnamed_addr #0 {
start:
; call <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ead766496d29c8bE"({ i64*, i64 }* align 8 dereferenceable(16) %_1)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<core::option::Option<std::ffi::os_str::OsString>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$17h0ee836b27546b805E"(%"core::option::Option<std::ffi::os_str::OsString>"* %_1) unnamed_addr #0 {
start:
  %0 = bitcast %"core::option::Option<std::ffi::os_str::OsString>"* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<std::ffi::os_str::OsString>"* %_1 to %"core::option::Option<std::ffi::os_str::OsString>::Some"*
  %5 = bitcast %"core::option::Option<std::ffi::os_str::OsString>::Some"* %4 to %"std::ffi::os_str::OsString"*
; call core::ptr::drop_in_place<std::ffi::os_str::OsString>
  call void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h5e92125e2d6cf3c0E"(%"std::ffi::os_str::OsString"* %5)
  br label %bb1
}

; core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %self, i8* %other) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !9
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h35938b1c82772645E"({ {}*, [3 x i64]* }* %self) unnamed_addr #1 {
start:
  %_2 = bitcast { {}*, [3 x i64]* }* %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcbae12bbc8209857E"(i8* %self) unnamed_addr #1 {
start:
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %self, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcf202f7411056b72E"({ i8*, i64 }* %self) unnamed_addr #1 {
start:
  %_2 = bitcast { i8*, i64 }* %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he92ac48fb1a10a67E"(i8** %self) unnamed_addr #1 {
start:
  %_2 = bitcast i8** %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::mut_ptr::<impl *mut T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hefc5581b98e24a7fE"({ [0 x i8]*, i64 }* %self) unnamed_addr #1 {
start:
  %_2 = bitcast { [0 x i8]*, i64 }* %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$13guaranteed_eq17h19c9bf5f0944d823E"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::drop_in_place<std::rt::lang_start<()>::{{closure}}>
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ptr85drop_in_place$LT$std..rt..lang_start$LT$$LP$$RP$$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$17h31dbc2a5520f2ab6E"(i64** %_1) unnamed_addr #1 {
start:
  ret void
}

; core::ptr::drop_in_place<core::option::Option<alloc::boxed::Box<[u32]>>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr87drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$$GT$17hba8c0e24dc6f1c2dE"({ i32*, i64 }* %_1) unnamed_addr #0 {
start:
  %0 = bitcast { i32*, i64 }* %_1 to {}**
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_2 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_2, 0
  br i1 %3, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
  %4 = bitcast { i32*, i64 }* %_1 to { [0 x i32]*, i64 }*
; call core::ptr::drop_in_place<alloc::boxed::Box<[u32]>>
  call void @"_ZN4core3ptr59drop_in_place$LT$alloc..boxed..Box$LT$$u5b$u32$u5d$$GT$$GT$17hbed8fe1c3eb0ab55E"({ [0 x i32]*, i64 }* %4)
  br label %bb1
}

; core::ptr::metadata::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata14from_raw_parts17hb89a83b0ccc27790E({}* %data_address, i64 %metadata) unnamed_addr #1 {
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
define internal { [0 x i8*]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h3af66d3b148c3185E({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[*const i8]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[*const i8]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[*const i8]>"* %_3 to { [0 x i8*]*, i64 }*
  %10 = getelementptr inbounds { [0 x i8*]*, i64 }, { [0 x i8*]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x i8*]*, [0 x i8*]** %10, align 8
  %12 = getelementptr inbounds { [0 x i8*]*, i64 }, { [0 x i8*]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x i8*]*, i64 } undef, [0 x i8*]* %11, 0
  %15 = insertvalue { [0 x i8*]*, i64 } %14, i64 %13, 1
  ret { [0 x i8*]*, i64 } %15
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h58ba3df96fb87609E({}* %data_address, i64 %metadata) unnamed_addr #1 {
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
define internal { [0 x { {}*, [3 x i64]* }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17h9486a661561172b8E({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>]>"* %_3 to { [0 x { {}*, [3 x i64]* }]*, i64 }*
  %10 = getelementptr inbounds { [0 x { {}*, [3 x i64]* }]*, i64 }, { [0 x { {}*, [3 x i64]* }]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x { {}*, [3 x i64]* }]*, [0 x { {}*, [3 x i64]* }]** %10, align 8
  %12 = getelementptr inbounds { [0 x { {}*, [3 x i64]* }]*, i64 }, { [0 x { {}*, [3 x i64]* }]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x { {}*, [3 x i64]* }]*, i64 } undef, [0 x { {}*, [3 x i64]* }]* %11, 0
  %15 = insertvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %14, i64 %13, 1
  ret { [0 x { {}*, [3 x i64]* }]*, i64 } %15
}

; core::ptr::metadata::from_raw_parts_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr8metadata18from_raw_parts_mut17hdf022a5467e17c10E({}* %data_address, i64 %metadata) unnamed_addr #1 {
start:
  %_4 = alloca { i8*, i64 }, align 8
  %_3 = alloca %"core::ptr::metadata::PtrRepr<[std::ffi::c_str::CString]>", align 8
  %0 = bitcast { i8*, i64 }* %_4 to {}**
  store {}* %data_address, {}** %0, align 8
  %1 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  store i64 %metadata, i64* %1, align 8
  %2 = bitcast %"core::ptr::metadata::PtrRepr<[std::ffi::c_str::CString]>"* %_3 to { i8*, i64 }*
  %3 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 0
  %4 = load i8*, i8** %3, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %_4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 0
  store i8* %4, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %2, i32 0, i32 1
  store i64 %6, i64* %8, align 8
  %9 = bitcast %"core::ptr::metadata::PtrRepr<[std::ffi::c_str::CString]>"* %_3 to { [0 x { i8*, i64 }]*, i64 }*
  %10 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %9, i32 0, i32 0
  %11 = load [0 x { i8*, i64 }]*, [0 x { i8*, i64 }]** %10, align 8
  %12 = getelementptr inbounds { [0 x { i8*, i64 }]*, i64 }, { [0 x { i8*, i64 }]*, i64 }* %9, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = insertvalue { [0 x { i8*, i64 }]*, i64 } undef, [0 x { i8*, i64 }]* %11, 0
  %15 = insertvalue { [0 x { i8*, i64 }]*, i64 } %14, i64 %13, 1
  ret { [0 x { i8*, i64 }]*, i64 } %15
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3711560fb3466bfdE"({ [0 x i8]*, i64 }* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %ptr, { [0 x i8]*, i64 }** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !8
  ret i64* %2
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53bf8f1439feadb5E"(%"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %0 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  store %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %ptr, %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %1, align 8
  %2 = load i64*, i64** %0, align 8, !nonnull !8
  ret i64* %2
}

; core::ptr::non_null::NonNull<T>::new_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17haf96db99c0276a0bE"(i8* %ptr) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  store i8* %ptr, i8** %0, align 8
  %1 = load i8*, i8** %0, align 8, !nonnull !8
  ret i8* %1
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hc3f6e0c9a4c871d5E"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_3 = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h189f0de3c3213841E"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3 to i8*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17haf96db99c0276a0bE"(i8* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %0
}

; core::ptr::non_null::NonNull<T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he2f68f08861ac11cE"(i64* nonnull %self) unnamed_addr #1 {
start:
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_3 = call %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2f2dbb2b3c903968E"(i64* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = bitcast %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %0 = call nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h53bf8f1439feadb5E"(%"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64* %0
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h189f0de3c3213841E"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  ret %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h2f2dbb2b3c903968E"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  ret %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h38ce35e994a9b731E"(i8* nonnull %self) unnamed_addr #1 {
start:
  ret i8* %self
}

; core::ptr::non_null::NonNull<T>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfac7eda727aaa2afE"(i64* nonnull %self) unnamed_addr #1 {
start:
  %_2 = bitcast i64* %self to { [0 x i8]*, i64 }*
  ret { [0 x i8]*, i64 }* %_2
}

; core::ptr::drop_in_place<dyn std::error::Error+core::marker::Send+core::marker::Sync>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr92drop_in_place$LT$dyn$u20$std..error..Error$u2b$core..marker..Send$u2b$core..marker..Sync$GT$17h7759bd1426864eb1E"({}* %_1.0, [3 x i64]* align 8 dereferenceable(24) %_1.1) unnamed_addr #0 {
start:
  %0 = bitcast [3 x i64]* %_1.1 to void ({}*)**
  %1 = getelementptr inbounds void ({}*)*, void ({}*)** %0, i64 0
  %2 = load void ({}*)*, void ({}*)** %1, align 8, !invariant.load !8, !nonnull !8
  call void %2({}* %_1.0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::ptr::drop_in_place<core::option::Option<std::sys::unix::process::process_common::Stdio>>
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN4core3ptr95drop_in_place$LT$core..option..Option$LT$std..sys..unix..process..process_common..Stdio$GT$$GT$17h0a0a52b00cb7eac6E"({ i32, i32 }* %_1) unnamed_addr #0 {
start:
  %0 = bitcast { i32, i32 }* %_1 to i32*
  %1 = load i32, i32* %0, align 4, !range !69
  %2 = sub i32 %1, 4
  %3 = icmp eq i32 %2, 0
  %_2 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_2, 0
  br i1 %4, label %bb1, label %bb2

bb1:                                              ; preds = %bb2, %start
  ret void

bb2:                                              ; preds = %start
; call core::ptr::drop_in_place<std::sys::unix::process::process_common::Stdio>
  call void @"_ZN4core3ptr67drop_in_place$LT$std..sys..unix..process..process_common..Stdio$GT$17h7b7f29f931de8613E"({ i32, i32 }* %_1)
  br label %bb1
}

; core::ptr::const_ptr::<impl *const T>::guaranteed_eq
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hd284edd95343222dE"(i8* %self, i8* %other) unnamed_addr #1 {
start:
  %0 = alloca i8, align 1
  %1 = icmp eq i8* %self, %other
  %2 = zext i1 %1 to i8
  store i8 %2, i8* %0, align 1
  %3 = load i8, i8* %0, align 1, !range !9
  %4 = trunc i8 %3 to i1
  br label %bb1

bb1:                                              ; preds = %start
  ret i1 %4
}

; core::ptr::const_ptr::<impl *const T>::cast
; Function Attrs: inlinehint nonlazybind uwtable
define internal {}* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4cast17h488c8f42f3ff433fE"(i8* %self) unnamed_addr #1 {
start:
  %0 = bitcast i8* %self to {}*
  ret {}* %0
}

; core::ptr::const_ptr::<impl *const T>::read
; Function Attrs: inlinehint nonlazybind uwtable
define internal nonnull i64* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17h88f8ba57afefb6f7E"(i64** %self) unnamed_addr #1 {
start:
; call core::ptr::read
  %0 = call nonnull i64* @_ZN4core3ptr4read17h07a23053da925799E(i64** %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64* %0
}

; core::ptr::const_ptr::<impl *const T>::is_null
; Function Attrs: inlinehint nonlazybind uwtable
define internal zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h9e44fece413638e1E"({ [0 x i8]*, i64 }* %self) unnamed_addr #1 {
start:
  %_2 = bitcast { [0 x i8]*, i64 }* %self to i8*
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::const_ptr::<impl *const T>::guaranteed_eq
  %0 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$13guaranteed_eq17hd284edd95343222dE"(i8* %_2, i8* null)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i1 %0
}

; core::ptr::const_ptr::<impl *const [T]>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8** @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hca47e72daa22ad98E"([0 x i8*]* %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x i8*]* %self.0 to i8**
  ret i8** %0
}

; core::str::converts::from_utf8_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h5cb46599a852364aE([0 x i8]* nonnull align 1 %v.0, i64 %v.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  store [0 x i8]* %v.0, [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  store i64 %v.1, i64* %2, align 8
  %3 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %4 = load [0 x i8]*, [0 x i8]** %3, align 8, !nonnull !8
  %5 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  br label %bb1

bb1:                                              ; preds = %start
  %7 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %4, 0
  %8 = insertvalue { [0 x i8]*, i64 } %7, i64 %6, 1
  ret { [0 x i8]*, i64 } %8
}

; core::hint::unreachable_unchecked
; Function Attrs: inlinehint noreturn nonlazybind uwtable
define internal void @_ZN4core4hint21unreachable_unchecked17hcf11f951a5ff9bebE() unnamed_addr #3 {
start:
  unreachable
}

; core::hint::black_box
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN4core4hint9black_box17hb386978651e3fd9aE() unnamed_addr #1 {
start:
  call void asm sideeffect "", "r,~{memory}"({}* undef), !srcloc !70
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::alloc::layout::size_align
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout10size_align17h18c673aec02cdedbE() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 640, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 8, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::layout::size_align
; Function Attrs: nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout10size_align17h7a4aa4d6af093911E() unnamed_addr #0 {
start:
  %0 = alloca { i64, i64 }, align 8
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 544, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 8, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::layout::Layout::from_size_align_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align) unnamed_addr #1 {
start:
  %0 = alloca { i64, i64 }, align 8
; call core::num::nonzero::NonZeroUsize::new_unchecked
  %_4 = call i64 @_ZN4core3num7nonzero12NonZeroUsize13new_unchecked17h9b66acfc82121a0fE(i64 %align), !range !10
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64 }* %0 to i64*
  store i64 %size, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  store i64 %_4, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %0, i32 0, i32 1
  %6 = load i64, i64* %5, align 8, !range !10
  %7 = insertvalue { i64, i64 } undef, i64 %4, 0
  %8 = insertvalue { i64, i64 } %7, i64 %6, 1
  ret { i64, i64 } %8
}

; core::alloc::layout::Layout::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout3new17h81411665f8d3cf23E() unnamed_addr #1 {
start:
; call core::alloc::layout::size_align
  %0 = call { i64, i64 } @_ZN4core5alloc6layout10size_align17h7a4aa4d6af093911E()
  %_3.0 = extractvalue { i64, i64 } %0, 0
  %_3.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::from_size_align_unchecked
  %1 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %_3.0, i64 %_3.1)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; core::alloc::layout::Layout::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64 } @_ZN4core5alloc6layout6Layout3new17hf1e7690a78da110dE() unnamed_addr #1 {
start:
; call core::alloc::layout::size_align
  %0 = call { i64, i64 } @_ZN4core5alloc6layout10size_align17h18c673aec02cdedbE()
  %_3.0 = extractvalue { i64, i64 } %0, 0
  %_3.1 = extractvalue { i64, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::from_size_align_unchecked
  %1 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %_3.0, i64 %_3.1)
  %2 = extractvalue { i64, i64 } %1, 0
  %3 = extractvalue { i64, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { i64, i64 } undef, i64 %2, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; core::alloc::layout::Layout::size
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout4size17h524543aeb6548ce3E({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64, i64 }* %self to i64*
  %1 = load i64, i64* %0, align 8
  ret i64 %1
}

; core::alloc::layout::Layout::align
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @_ZN4core5alloc6layout6Layout5align17h3283a9952e6bb655E({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %_2 = load i64, i64* %0, align 8, !range !10
; call core::num::nonzero::NonZeroUsize::get
  %1 = call i64 @_ZN4core3num7nonzero12NonZeroUsize3get17haef8a9ecd10710fcE(i64 %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i64 %1
}

; core::array::<impl core::iter::traits::collect::IntoIterator for &[T; N]>::into_iter
; Function Attrs: nonlazybind uwtable
define internal { i64*, i64* } @"_ZN4core5array98_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$9into_iter17heedde30ee4a39382E"([3 x { [0 x i8]*, i64 }]* align 8 dereferenceable(48) %self) unnamed_addr #0 {
start:
  %_2.0 = bitcast [3 x { [0 x i8]*, i64 }]* %self to [0 x { [0 x i8]*, i64 }]*
; call core::slice::<impl [T]>::iter
  %0 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h616323007f9b6808E"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %_2.0, i64 3)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; core::array::<impl core::iter::traits::collect::IntoIterator for &[T; N]>::into_iter
; Function Attrs: nonlazybind uwtable
define internal { i64*, i64* } @"_ZN4core5array98_$LT$impl$u20$core..iter..traits..collect..IntoIterator$u20$for$u20$$RF$$u5b$T$u3b$$u20$N$u5d$$GT$9into_iter17hf2993d9f4ba34597E"([5 x { [0 x i8]*, i64 }]* align 8 dereferenceable(80) %self) unnamed_addr #0 {
start:
  %_2.0 = bitcast [5 x { [0 x i8]*, i64 }]* %self to [0 x { [0 x i8]*, i64 }]*
; call core::slice::<impl [T]>::iter
  %0 = call { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h616323007f9b6808E"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %_2.0, i64 5)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; core::slice::<impl [T]>::get_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(8) i8** @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17ha3a36caaafc179d8E"([0 x i8*]* nonnull align 8 %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked
  %_3 = call i8** @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hb218084f845f444cE"(i64 %index, [0 x i8*]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8** %_3
}

; core::slice::<impl [T]>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(24) %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h15784cd36df92122E"([0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* nonnull align 8 %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
  %_6 = call %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6c5f03ffaea33587E"(i64 %index, [0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* %_6
}

; core::slice::<impl [T]>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(24) %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h83c569141cdb76bbE"([0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* nonnull align 8 %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
  %_6 = call %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0b2f13a6470653bE"(i64 %index, [0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* %_6
}

; core::slice::<impl [T]>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 1 dereferenceable(1) i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hcce8050cf2f4beacE"([0 x i8]* nonnull align 1 %self.0, i64 %self.1, i64 %index) unnamed_addr #1 {
start:
; call <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
  %_6 = call i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hc4681402a00f73d1E"(i64 %index, [0 x i8]* %self.0, i64 %self.1)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %_6
}

; core::slice::<impl [T]>::iter
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64*, i64* } @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$4iter17h616323007f9b6808E"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %self.0, i64 %self.1) unnamed_addr #1 {
start:
; call core::slice::iter::Iter<T>::new
  %0 = call { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf1232401ea4b6233E"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %self.0, i64 %self.1)
  %1 = extractvalue { i64*, i64* } %0, 0
  %2 = extractvalue { i64*, i64* } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { i64*, i64* } undef, i64* %1, 0
  %4 = insertvalue { i64*, i64* } %3, i64* %2, 1
  ret { i64*, i64* } %4
}

; core::slice::<impl [T]>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hc6755259d457db3eE"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = bitcast [0 x { [0 x i8]*, i64 }]* %self.0 to { [0 x i8]*, i64 }*
  ret { [0 x i8]*, i64 }* %0
}

; core::slice::raw::from_raw_parts
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h3a0418ea29930fd1E(i8* %data, i64 %len) unnamed_addr #1 {
start:
; call core::slice::raw::debug_check_data_len
  call void @_ZN4core5slice3raw20debug_check_data_len17h91e9a73a400fd36eE(i8* %data, i64 %len)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::slice_from_raw_parts
  %0 = call { [0 x i8]*, i64 } @_ZN4core3ptr20slice_from_raw_parts17h95ee4d590315534bE(i8* %data, i64 %len)
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
define internal void @_ZN4core5slice3raw20debug_check_data_len17h91e9a73a400fd36eE(i8* %_data, i64 %_len) unnamed_addr #0 {
start:
  ret void
}

; core::slice::iter::Iter<T>::new
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64*, i64* } @"_ZN4core5slice4iter13Iter$LT$T$GT$3new17hf1232401ea4b6233E"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }*, align 8
  %1 = alloca i8*, align 8
  %end = alloca { [0 x i8]*, i64 }*, align 8
  %2 = alloca { i64*, i64* }, align 8
; call core::slice::<impl [T]>::as_ptr
  %ptr = call { [0 x i8]*, i64 }* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$6as_ptr17hc6755259d457db3eE"([0 x { [0 x i8]*, i64 }]* nonnull align 8 %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::const_ptr::<impl *const T>::is_null
  %_6 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h9e44fece413638e1E"({ [0 x i8]*, i64 }* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %3 = icmp eq i64 16, 0
  br i1 %3, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %_11 = bitcast { [0 x i8]*, i64 }* %ptr to i8*
  %4 = getelementptr i8, i8* %_11, i64 %slice.1
  store i8* %4, i8** %1, align 8
  %5 = load i8*, i8** %1, align 8
  br label %bb6

bb7:                                              ; preds = %bb4
  %6 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %ptr, i64 %slice.1
  store { [0 x i8]*, i64 }* %6, { [0 x i8]*, i64 }** %0, align 8
  %7 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %0, align 8
  store { [0 x i8]*, i64 }* %7, { [0 x i8]*, i64 }** %end, align 8
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb6, %bb8
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %_18 = call nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3711560fb3466bfdE"({ [0 x i8]*, i64 }* %ptr)
  br label %bb10

bb6:                                              ; preds = %bb5
  %8 = bitcast i8* %5 to { [0 x i8]*, i64 }*
  store { [0 x i8]*, i64 }* %8, { [0 x i8]*, i64 }** %end, align 8
  br label %bb9

bb10:                                             ; preds = %bb9
  %_21 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %end, align 8
  %9 = bitcast { i64*, i64* }* %2 to i64**
  store i64* %_18, i64** %9, align 8
  %10 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %11 = bitcast i64** %10 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %_21, { [0 x i8]*, i64 }** %11, align 8
  %12 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8, !nonnull !8
  %14 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %2, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = insertvalue { i64*, i64* } undef, i64* %13, 0
  %17 = insertvalue { i64*, i64* } %16, i64* %15, 1
  ret { i64*, i64* } %17
}

; core::option::Option<T>::map
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$3map17h404368dac93b2d22E"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %0, i64* align 8 dereferenceable_or_null(8) %1, i64* align 8 dereferenceable(16) %f.0, i64* align 8 dereferenceable(8) %f.1) unnamed_addr #1 {
start:
  %_9 = alloca i8, align 1
  %_7 = alloca i64*, align 8
  %_5 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %self = alloca i64*, align 8
  store i64* %1, i64** %self, align 8
  store i8 0, i8* %_9, align 1
  store i8 1, i8* %_9, align 1
  %2 = bitcast i64** %self to {}**
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
  %5 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %0, i32 0, i32 1
  store {}* null, {}** %5, align 8
  br label %bb7

bb3:                                              ; preds = %start
  %6 = bitcast i64** %self to i64***
  %x = load i64**, i64*** %6, align 8, !nonnull !8
  store i8 0, i8* %_9, align 1
  %7 = bitcast i64** %_7 to i64***
  store i64** %x, i64*** %7, align 8
  %8 = load i64*, i64** %_7, align 8, !nonnull !8
  %9 = bitcast i64* %8 to i64**
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::ascend::{{closure}}
  call void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend28_$u7b$$u7b$closure$u7d$$u7d$17h8b5ed82cf0a626a1E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_5, i64* align 8 dereferenceable(16) %f.0, i64* align 8 dereferenceable(8) %f.1, i64** align 8 dereferenceable(8) %9)
  br label %bb4

bb4:                                              ; preds = %bb3
  %10 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %11 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"* %10 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"*
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %11 to i8*
  %13 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  br label %bb7

bb7:                                              ; preds = %bb1, %bb4
  %14 = load i8, i8* %_9, align 1, !range !9
  %15 = trunc i8 %14 to i1
  br i1 %15, label %bb6, label %bb5

bb5:                                              ; preds = %bb6, %bb7
  ret void

bb6:                                              ; preds = %bb7
  br label %bb5
}

; core::option::Option<T>::take
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$4take17h28dd70c89255d41bE"(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %_3 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3 to i64*
  store i64 2, i64* %1, align 8
; call core::mem::replace
  call void @_ZN4core3mem7replace17h8f19b1c87b21bf29E(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* align 8 dereferenceable(32) %self, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; core::option::Option<T>::take
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, i64* } @"_ZN4core6option15Option$LT$T$GT$4take17h606b20b8c8ffbee5E"({ i64, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %_3 = alloca { i64, i64* }, align 8
  %0 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 1
  %1 = bitcast i64** %0 to {}**
  store {}* null, {}** %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 1
  %5 = load i64*, i64** %4, align 8
; call core::mem::replace
  %6 = call { i64, i64* } @_ZN4core3mem7replace17h59cf3c6c4b24d026E({ i64, i64* }* align 8 dereferenceable(16) %self, i64 %3, i64* %5)
  %7 = extractvalue { i64, i64* } %6, 0
  %8 = extractvalue { i64, i64* } %6, 1
  br label %bb1

bb1:                                              ; preds = %start
  %9 = insertvalue { i64, i64* } undef, i64 %7, 0
  %10 = insertvalue { i64, i64* } %9, i64* %8, 1
  ret { i64, i64* } %10
}

; core::option::Option<T>::ok_or
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h7cd365dd8410c1d7E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture dereferenceable(24) %self, i64 %err.0, i64* nonnull %err.1) unnamed_addr #1 {
start:
  %_7 = alloca i8, align 1
  %_5 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %v = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  store i8 0, i8* %_7, align 1
  store i8 1, i8* %_7, align 1
  %1 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %self, i32 0, i32 1
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_3 = select i1 %3, i64 0, i64 1
  switch i64 %_3, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  store i8 0, i8* %_7, align 1
  %4 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %0 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Err"*
  %5 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Err", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Err"* %4, i32 0, i32 1
  %6 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 0
  store i64 %err.0, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 1
  store i64* %err.1, i64** %7, align 8
  %8 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %0 to i64*
  store i64 1, i64* %8, align 8
  br label %bb6

bb3:                                              ; preds = %start
  %9 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %self to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %10 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"* %9 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %v to i8*
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_5 to i8*
  %14 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
  %15 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %0 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok"*
  %16 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok"* %15, i32 0, i32 1
  %17 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %16 to i8*
  %18 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 24, i1 false)
  %19 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %0 to i64*
  store i64 0, i64* %19, align 8
  br label %bb6

bb6:                                              ; preds = %bb1, %bb3
  %20 = load i8, i8* %_7, align 1, !range !9
  %21 = trunc i8 %20 to i1
  br i1 %21, label %bb5, label %bb4

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::option::Option<T>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable_or_null(8) i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h3c53255f70e531c1E"(i64** align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca i64*, align 8
  %1 = bitcast i64** %self to {}**
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %4 = bitcast i64** %0 to {}**
  store {}* null, {}** %4, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %5 = bitcast i64** %0 to i64***
  store i64** %self, i64*** %5, align 8
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  %6 = load i64*, i64** %0, align 8
  ret i64* %6
}

; core::option::Option<T>::unwrap
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6option15Option$LT$T$GT$6unwrap17h436b1027cf8640c9E"({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* noalias nocapture sret({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }) dereferenceable(48) %val, %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* noalias nocapture dereferenceable(48) %self, %"core::panic::location::Location"* align 8 dereferenceable(24) %0) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* %self, i32 0, i32 1
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_2 = select i1 %3, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [43 x i8] }>* @alloc83 to [0 x i8]*), i64 43, %"core::panic::location::Location"* align 8 dereferenceable(24) %0) #9
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* %self to %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>::Some"*
  %5 = bitcast %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>::Some"* %4 to { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }*
  %6 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %val to i8*
  %7 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 48, i1 false)
  ret void
}

; core::option::Option<T>::unwrap
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable(24) %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* @"_ZN4core6option15Option$LT$T$GT$6unwrap17h85f4a1e085cfb941E"(i64* align 8 dereferenceable_or_null(24) %0, %"core::panic::location::Location"* align 8 dereferenceable(24) %1) unnamed_addr #1 {
start:
  %self = alloca i64*, align 8
  store i64* %0, i64** %self, align 8
  %2 = bitcast i64** %self to {}**
  %3 = load {}*, {}** %2, align 8
  %4 = icmp eq {}* %3, null
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [43 x i8] }>* @alloc83 to [0 x i8]*), i64 43, %"core::panic::location::Location"* align 8 dereferenceable(24) %1) #9
  unreachable

bb3:                                              ; preds = %start
  %5 = bitcast i64** %self to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"**
  %val = load %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"** %5, align 8, !nonnull !8
  ret %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %val
}

; core::result::Result<T,E>::ok
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h6a2a20e3db6b1a3fE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %0, %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #1 {
start:
  %_4 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %x = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %1 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %self to i64*
  %_2 = load i64, i64* %1, align 8, !range !71
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %2 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %self to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok"*
  %3 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>::Ok"* %2, i32 0, i32 1
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %x to i8*
  %5 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  %6 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_4 to i8*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %x to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %9 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"* %8 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"*
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %9 to i8*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
  br label %bb6

bb1:                                              ; preds = %start
  %12 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %0, i32 0, i32 1
  store {}* null, {}** %12, align 8
  br label %bb6

bb6:                                              ; preds = %bb3, %bb1
  %13 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* %self to i64*
  %_5 = load i64, i64* %13, align 8, !range !71
  %14 = icmp eq i64 %_5, 0
  br i1 %14, label %bb4, label %bb5

bb4:                                              ; preds = %bb5, %bb6
  ret void

bb5:                                              ; preds = %bb6
  br label %bb4
}

; core::result::Result<T,E>::unwrap
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b091428e2da39afE"(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture dereferenceable(24) %self, %"core::panic::location::Location"* align 8 dereferenceable(24) %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca { i8*, i32 }, align 8
  %e = alloca %"std::io::error::Error", align 8
  %2 = bitcast %"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* %self to i32*
  %3 = load i32, i32* %2, align 8, !range !72
  %_2 = zext i32 %3 to i64
  switch i64 %_2, label %bb2 [
    i64 0, label %bb3
    i64 1, label %bb1
  ]

bb2:                                              ; preds = %start
  unreachable

bb3:                                              ; preds = %start
  %4 = bitcast %"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* %self to %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Ok"*
  %5 = getelementptr inbounds %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Ok", %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Ok"* %4, i32 0, i32 1
  %t = load i32, i32* %5, align 4
  ret i32 %t

bb1:                                              ; preds = %start
  %6 = bitcast %"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* %self to %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Err"*
  %7 = getelementptr inbounds %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Err", %"core::result::Result<std::process::ExitStatus, std::io::error::Error>::Err"* %6, i32 0, i32 1
  %8 = bitcast %"std::io::error::Error"* %e to i8*
  %9 = bitcast %"std::io::error::Error"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 16, i1 false)
  %_6.0 = bitcast %"std::io::error::Error"* %e to {}*
; invoke core::result::unwrap_failed
  invoke void @_ZN4core6result13unwrap_failed17hddb26cddfa4f23d4E([0 x i8]* nonnull align 1 bitcast (<{ [43 x i8] }>* @alloc84 to [0 x i8]*), i64 43, {}* nonnull align 1 %_6.0, [3 x i64]* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8], i8*, [0 x i8] }>* @vtable.1 to [3 x i64]*), %"core::panic::location::Location"* align 8 dereferenceable(24) %0) #9
          to label %unreachable unwind label %cleanup

unreachable:                                      ; preds = %bb1
  unreachable

bb4:                                              ; preds = %cleanup
; call core::ptr::drop_in_place<std::io::error::Error>
  call void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h69c1f2da8cb094e7E"(%"std::io::error::Error"* %e) #10
  br label %bb5

cleanup:                                          ; preds = %bb1
  %10 = landingpad { i8*, i32 }
          cleanup
  %11 = extractvalue { i8*, i32 } %10, 0
  %12 = extractvalue { i8*, i32 } %10, 1
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 0
  store i8* %11, i8** %13, align 8
  %14 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  store i32 %12, i32* %14, align 8
  br label %bb4

bb5:                                              ; preds = %bb4
  %15 = bitcast { i8*, i32 }* %1 to i8**
  %16 = load i8*, i8** %15, align 8
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %1, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = insertvalue { i8*, i32 } undef, i8* %16, 0
  %20 = insertvalue { i8*, i32 } %19, i32 %18, 1
  resume { i8*, i32 } %20
}

; core::convert::num::<impl core::convert::From<u16> for usize>::from
; Function Attrs: inlinehint nonlazybind uwtable
define internal i64 @"_ZN4core7convert3num66_$LT$impl$u20$core..convert..From$LT$u16$GT$$u20$for$u20$usize$GT$4from17h6420ebcfdc098c4bE"(i16 %small) unnamed_addr #1 {
start:
  %0 = zext i16 %small to i64
  ret i64 %0
}

; <T as core::convert::Into<U>>::into
; Function Attrs: nonlazybind uwtable
define internal nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %self) unnamed_addr #0 {
start:
; call <core::ptr::non_null::NonNull<T> as core::convert::From<core::ptr::unique::Unique<T>>>::from
  %0 = call nonnull i8* @"_ZN119_$LT$core..ptr..non_null..NonNull$LT$T$GT$$u20$as$u20$core..convert..From$LT$core..ptr..unique..Unique$LT$T$GT$$GT$$GT$4from17h4abdbfacce8f7ca0E"(i8* nonnull %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %0
}

; <() as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN54_$LT$$LP$$RP$$u20$as$u20$std..process..Termination$GT$6report17h2815b891a5791b02E"() unnamed_addr #1 {
start:
; call <std::process::ExitCode as std::process::Termination>::report
  %0 = call i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h300cdf2a6e77ec92E"(i8 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %0
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h19e63a4dcdc1b1a1E"({ %"std::path::Path"*, i64 }** align 8 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %_2 = load { %"std::path::Path"*, i64 }*, { %"std::path::Path"*, i64 }** %self, align 8, !nonnull !8
; call <&T as core::convert::AsRef<U>>::as_ref
  %0 = call { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h54f974ff96110393E"({ %"std::path::Path"*, i64 }* align 8 dereferenceable(16) %_2)
  %1 = extractvalue { %"std::path::Path"*, i64 } %0, 0
  %2 = extractvalue { %"std::path::Path"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %1, 0
  %4 = insertvalue { %"std::path::Path"*, i64 } %3, i64 %2, 1
  ret { %"std::path::Path"*, i64 } %4
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h39452bda5febc3aeE"({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 0
  %_2.0 = load [0 x i8]*, [0 x i8]** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %self, i32 0, i32 1
  %_2.1 = load i64, i64* %1, align 8
; call std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for str>::as_ref
  %2 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str85_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$str$GT$6as_ref17h2c9aa3aecbe854f4E"([0 x i8]* nonnull align 1 %_2.0, i64 %_2.1)
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 0
  %4 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %3, 0
  %6 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %5, i64 %4, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %6
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h49e5a6825bdfbeddE"({ [0 x i8]*, i64 }** align 8 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %_2 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %self, align 8, !nonnull !8
; call <&T as core::convert::AsRef<U>>::as_ref
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h39452bda5febc3aeE"({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %_2)
  %1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %1, 0
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %3, i64 %2, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %4
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h4c8d49e292f315ffE"(%"alloc::string::String"** align 8 dereferenceable(8) %self) unnamed_addr #0 {
start:
  %_2 = load %"alloc::string::String"*, %"alloc::string::String"** %self, align 8, !nonnull !8
; call std::ffi::os_str::<impl core::convert::AsRef<std::ffi::os_str::OsStr> for alloc::string::String>::as_ref
  %0 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN3std3ffi6os_str103_$LT$impl$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$u20$for$u20$alloc..string..String$GT$6as_ref17h7cfc1b057f04ce29E"(%"alloc::string::String"* align 8 dereferenceable(24) %_2)
  %1 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 0
  %2 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
  %3 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %1, 0
  %4 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %3, i64 %2, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %4
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h54f974ff96110393E"({ %"std::path::Path"*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 0
  %_2.0 = load %"std::path::Path"*, %"std::path::Path"** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { %"std::path::Path"*, i64 }, { %"std::path::Path"*, i64 }* %self, i32 0, i32 1
  %_2.1 = load i64, i64* %1, align 8
; call <std::path::Path as core::convert::AsRef<std::path::Path>>::as_ref
  %2 = call { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17hb1ab4102b86bca57E"(%"std::path::Path"* nonnull align 1 %_2.0, i64 %_2.1)
  %3 = extractvalue { %"std::path::Path"*, i64 } %2, 0
  %4 = extractvalue { %"std::path::Path"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %3, 0
  %6 = insertvalue { %"std::path::Path"*, i64 } %5, i64 %4, 1
  ret { %"std::path::Path"*, i64 } %6
}

; <&T as core::convert::AsRef<U>>::as_ref
; Function Attrs: nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h6cf7ca62022daf60E"({ %"std::ffi::os_str::OsStr"*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { %"std::ffi::os_str::OsStr"*, i64 }, { %"std::ffi::os_str::OsStr"*, i64 }* %self, i32 0, i32 0
  %_2.0 = load %"std::ffi::os_str::OsStr"*, %"std::ffi::os_str::OsStr"** %0, align 8, !nonnull !8
  %1 = getelementptr inbounds { %"std::ffi::os_str::OsStr"*, i64 }, { %"std::ffi::os_str::OsStr"*, i64 }* %self, i32 0, i32 1
  %_2.1 = load i64, i64* %1, align 8
; call <std::ffi::os_str::OsStr as core::convert::AsRef<std::ffi::os_str::OsStr>>::as_ref
  %2 = call { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN95_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$GT$6as_ref17h269868daed2eaaa7E"(%"std::ffi::os_str::OsStr"* nonnull align 1 %_2.0, i64 %_2.1)
  %3 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 0
  %4 = extractvalue { %"std::ffi::os_str::OsStr"*, i64 } %2, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %3, 0
  %6 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %5, i64 %4, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %6
}

; alloc::collections::btree::map::IntoIter<K,V>::dying_next
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree3map21IntoIter$LT$K$C$V$GT$10dying_next17h9024bd3ec2a135beE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>") dereferenceable(24) %0, %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(72) %self) unnamed_addr #0 {
start:
  %_5 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %1 = getelementptr inbounds %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self, i32 0, i32 1
  %_2 = load i64, i64* %1, align 8
  %2 = icmp eq i64 %_2, 0
  br i1 %2, label %bb1, label %bb3

bb1:                                              ; preds = %start
  %_4 = bitcast %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
; call alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::deallocating_end
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h8618c5f1aa0051f5E"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %_4)
  br label %bb2

bb3:                                              ; preds = %start
  %3 = getelementptr inbounds %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self, i32 0, i32 1
  %4 = getelementptr inbounds %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = sub i64 %5, 1
  store i64 %6, i64* %3, align 8
  %_6 = bitcast %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
; call alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::deallocating_next_unchecked
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea3848b65e9ed603E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %_5, %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %_6)
  br label %bb4

bb4:                                              ; preds = %bb3
  %7 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %0 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"*
  %8 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"* %7 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"*
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %8 to i8*
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 24, i1 false)
  br label %bb5

bb5:                                              ; preds = %bb2, %bb4
  ret void

bb2:                                              ; preds = %bb1
  %11 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %0, i32 0, i32 1
  store {}* null, {}** %11, align 8
  br label %bb5
}

; alloc::collections::btree::mem::replace
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc11collections5btree3mem7replace17h893181304b76343eE(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %ret, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* align 8 dereferenceable(24) %v) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_18 = alloca i8, align 1
  %_17 = alloca i8, align 1
  %_16 = alloca i8, align 1
  %_13 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_10 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_9 = alloca { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }, align 8
  %_7 = alloca { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }, align 8
  %new_value = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %value = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %guard = alloca %"alloc::collections::btree::mem::replace::PanicGuard", align 1
  store i8 0, i8* %_18, align 1
  store i8 0, i8* %_16, align 1
  store i8 0, i8* %_17, align 1
  store i8 1, i8* %_18, align 1
  store i8 1, i8* %_17, align 1
; invoke core::ptr::read
  invoke void @_ZN4core3ptr4read17he24f1e86ca35f018E(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %value, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %v)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  store i8 0, i8* %_18, align 1
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_10 to i8*
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  %3 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }* %_9 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %3 to i8*
  %5 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 24, i1 false)
  %6 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>" }* %_9 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
; invoke alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next_unchecked::{{closure}}
  invoke void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked28_$u7b$$u7b$closure$u7d$$u7d$17hddcd35fced8cc225E"({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* noalias nocapture sret({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }) dereferenceable(48) %_7, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %6)
          to label %bb2 unwind label %cleanup

bb11:                                             ; preds = %bb8, %bb9, %cleanup
  %7 = load i8, i8* %_17, align 1, !range !9
  %8 = trunc i8 %7 to i1
  br i1 %8, label %bb10, label %bb6

cleanup:                                          ; preds = %bb1, %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb11

bb2:                                              ; preds = %bb1
  store i8 1, i8* %_16, align 1
  %14 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %_7 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %15 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %new_value to i8*
  %16 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = getelementptr inbounds { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }, { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %_7, i32 0, i32 1
  %18 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %ret to i8*
  %19 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  store i8 0, i8* %_16, align 1
  %20 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_13 to i8*
  %21 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %new_value to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
; invoke core::ptr::write
  invoke void @_ZN4core3ptr5write17h8818aec7509e4a8dE(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %v, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_13)
          to label %bb3 unwind label %cleanup1

bb3:                                              ; preds = %bb2
  store i8 0, i8* %_17, align 1
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17h6e2ea7c5ba9c127cE()
          to label %bb4 unwind label %cleanup1

bb5:                                              ; preds = %cleanup1
  br label %bb9

cleanup1:                                         ; preds = %bb3, %bb2
  %22 = landingpad { i8*, i32 }
          cleanup
  %23 = extractvalue { i8*, i32 } %22, 0
  %24 = extractvalue { i8*, i32 } %22, 1
  %25 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %23, i8** %25, align 8
  %26 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %24, i32* %26, align 8
  br label %bb5

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_16, align 1
  store i8 0, i8* %_17, align 1
  ret void

bb9:                                              ; preds = %bb5
  %27 = load i8, i8* %_16, align 1, !range !9
  %28 = trunc i8 %27 to i1
  br i1 %28, label %bb8, label %bb11

bb8:                                              ; preds = %bb9
  br label %bb11

bb6:                                              ; preds = %bb10, %bb11
  %29 = load i8, i8* %_18, align 1, !range !9
  %30 = trunc i8 %29 to i1
  br i1 %30, label %bb12, label %bb7

bb10:                                             ; preds = %bb11
; call core::ptr::drop_in_place<alloc::collections::btree::mem::replace::PanicGuard>
  call void @"_ZN4core3ptr72drop_in_place$LT$alloc..collections..btree..mem..replace..PanicGuard$GT$17hd9f45c4a53c0e3eaE"(%"alloc::collections::btree::mem::replace::PanicGuard"* %guard) #10
  br label %bb6

bb7:                                              ; preds = %bb12, %bb6
  %31 = bitcast { i8*, i32 }* %0 to i8**
  %32 = load i8*, i8** %31, align 8
  %33 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = insertvalue { i8*, i32 } undef, i8* %32, 0
  %36 = insertvalue { i8*, i32 } %35, i32 %34, 1
  resume { i8*, i32 } %36

bb12:                                             ; preds = %bb6
  br label %bb7
}

; alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::deallocate_and_ascend
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node127NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$21deallocate_and_ascend17h18b70585ca7d3affE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %ret, i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
  %_10 = alloca { i64, i64 }, align 8
  %_4 = alloca %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>", align 8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::ascend
  call void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend17ha70fff35f2607461E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>") dereferenceable(32) %_4, i64 %self.0, i64* nonnull %self.1)
  br label %bb1

bb1:                                              ; preds = %start
; call core::result::Result<T,E>::ok
  call void @"_ZN4core6result19Result$LT$T$C$E$GT$2ok17h6a2a20e3db6b1a3fE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %ret, %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture dereferenceable(32) %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::cast
  %_8 = call nonnull i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17hc3f6e0c9a4c871d5E"(i64* nonnull %self.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_11 = icmp ugt i64 %self.0, 0
  br i1 %_11, label %bb4, label %bb5

bb5:                                              ; preds = %bb3
; call core::alloc::layout::Layout::new
  %0 = call { i64, i64 } @_ZN4core5alloc6layout6Layout3new17h81411665f8d3cf23E()
  store { i64, i64 } %0, { i64, i64 }* %_10, align 8
  br label %bb6

bb4:                                              ; preds = %bb3
; call core::alloc::layout::Layout::new
  %1 = call { i64, i64 } @_ZN4core5alloc6layout6Layout3new17hf1e7690a78da110dE()
  store { i64, i64 } %1, { i64, i64 }* %_10, align 8
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 0
  %3 = load i64, i64* %2, align 8
  %4 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %_10, i32 0, i32 1
  %5 = load i64, i64* %4, align 8, !range !10
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 bitcast (<{ [0 x i8] }>* @alloc41 to %"alloc::alloc::Global"*), i8* nonnull %_8, i64 %3, i64 %5)
  br label %bb7

bb7:                                              ; preds = %bb6
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::right_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$10right_edge17hd7278c62f3d78518E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %self to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %_2.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %_2.1 = load i64*, i64** %3, align 8, !nonnull !8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_4 = load i64, i64* %4, align 8
  %_3 = add i64 %_4, 1
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17he935d9e7c1b1e24aE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %_2.0, i64* nonnull %_2.1, i64 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::right_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$10right_edge17he0580229f6390ae8E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %self to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %_2.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %_2.1 = load i64*, i64** %3, align 8, !nonnull !8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_4 = load i64, i64* %4, align 8
  %_3 = add i64 %_4, 1
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17h459c6191c623c3f3E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %_2.0, i64* nonnull %_2.1, i64 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::new_kv
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$6new_kv17h2c92d9b5685d0c90E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, i64 %node.0, i64* nonnull %node.1, i64 %idx) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %0 to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  store i64 %node.0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  store i64* %node.1, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %0, i32 0, i32 2
  store i64 %idx, i64* %4, align 8
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17h459c6191c623c3f3E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %node.0, i64* nonnull %node.1, i64 %idx) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %0 to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  store i64 %node.0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  store i64* %node.1, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %0, i32 0, i32 2
  store i64 %idx, i64* %4, align 8
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17haca0be51f694f2e8E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %node.0, i64* nonnull %node.1, i64 %idx) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %0 to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  store i64 %node.0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  store i64* %node.1, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %0, i32 0, i32 2
  store i64 %idx, i64* %4, align 8
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17he935d9e7c1b1e24aE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %node.0, i64* nonnull %node.1, i64 %idx) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %0 to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  store i64 %node.0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  store i64* %node.1, i64** %3, align 8
  %4 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %0, i32 0, i32 2
  store i64 %idx, i64* %4, align 8
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::right_kv
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8right_kv17ha1a7a802b47d1805E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(32) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_9 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %1 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self, i32 0, i32 2
  %_3 = load i64, i64* %1, align 8
  %_5 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::len
  %_4 = call i64 @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$3len17hcc884fde9a7b5bfbE"({ i64, i64* }* align 8 dereferenceable(16) %_5)
  br label %bb1

bb1:                                              ; preds = %start
  %_2 = icmp ult i64 %_3, %_4
  br i1 %_2, label %bb2, label %bb4

bb4:                                              ; preds = %bb1
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_9 to i8*
  %3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
  %4 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err"*
  %5 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err"* %4, i32 0, i32 1
  %6 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %5 to i8*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %0 to i64*
  store i64 1, i64* %8, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
  %10 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 0
  %_7.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %9, i32 0, i32 1
  %_7.1 = load i64*, i64** %11, align 8, !nonnull !8
  %12 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self, i32 0, i32 2
  %_8 = load i64, i64* %12, align 8
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::new_kv
  call void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$6new_kv17h2c92d9b5685d0c90E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %_6, i64 %_7.0, i64* nonnull %_7.1, i64 %_8)
  br label %bb3

bb3:                                              ; preds = %bb2
  %13 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok"*
  %14 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok"* %13, i32 0, i32 1
  %15 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %14 to i8*
  %16 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %0 to i64*
  store i64 0, i64* %17, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb3
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>,Type>::force
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node145Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$Type$GT$5force17hd365a5d8c8797922E"(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* noalias nocapture sret(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>") dereferenceable(32) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_10 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>", align 8
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>", align 8
  %_2 = alloca %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>", align 8
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %_3.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %_3.1 = load i64*, i64** %3, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::force
  call void @"_ZN5alloc11collections5btree4node91NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$5force17hd754400ac1fd911dE"(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* noalias nocapture sret(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>") dereferenceable(24) %_2, i64 %_3.0, i64* nonnull %_3.1)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_2 to i64*
  %_4 = load i64, i64* %4, align 8, !range !71
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %5 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_2 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"*
  %6 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"* %5, i32 0, i32 1
  %7 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %6, i32 0, i32 0
  %node.01 = load i64, i64* %7, align 8
  %8 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %6, i32 0, i32 1
  %node.12 = load i64*, i64** %8, align 8, !nonnull !8
  %9 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_8 = load i64, i64* %9, align 8
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %_6 to { i64, i64* }*
  %11 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %10, i32 0, i32 0
  store i64 %node.01, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %10, i32 0, i32 1
  store i64* %node.12, i64** %12, align 8
  %13 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %_6, i32 0, i32 2
  store i64 %_8, i64* %13, align 8
  %14 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %0 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf"*
  %15 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf"* %14, i32 0, i32 1
  %16 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %15 to i8*
  %17 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
  %18 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %0 to i64*
  store i64 0, i64* %18, align 8
  br label %bb5

bb2:                                              ; preds = %bb1
  %19 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_2 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"*
  %20 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"* %19, i32 0, i32 1
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 0
  %node.0 = load i64, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %20, i32 0, i32 1
  %node.1 = load i64*, i64** %22, align 8, !nonnull !8
  %23 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_12 = load i64, i64* %23, align 8
  %24 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %_10 to { i64, i64* }*
  %25 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %24, i32 0, i32 0
  store i64 %node.0, i64* %25, align 8
  %26 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %24, i32 0, i32 1
  store i64* %node.1, i64** %26, align 8
  %27 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %_10, i32 0, i32 2
  store i64 %_12, i64* %27, align 8
  %28 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %0 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal"*
  %29 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal"* %28, i32 0, i32 1
  %30 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %29 to i8*
  %31 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 24, i1 false)
  %32 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %0 to i64*
  store i64 1, i64* %32, align 8
  br label %bb5

bb5:                                              ; preds = %bb4, %bb2
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::drop_key_val
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h7ca9a627ad296dd4E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self to { i64, i64* }*
; call alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,Type>::as_leaf_dying
  %leaf = call align 8 dereferenceable(544) %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node76NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$Type$GT$13as_leaf_dying17he2113e7933a49299E"({ i64, i64* }* align 8 dereferenceable(16) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %_8 = getelementptr inbounds %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %leaf, i32 0, i32 1
  %_7.0 = bitcast [11 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* %_8 to [0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]*
  %0 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_9 = load i64, i64* %0, align 8
; call core::slice::<impl [T]>::get_unchecked_mut
  %_6 = call align 8 dereferenceable(24) %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h15784cd36df92122E"([0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* nonnull align 8 %_7.0, i64 11, i64 %_9)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::mem::maybe_uninit::MaybeUninit<T>::assume_init_drop
  call void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$16assume_init_drop17h8be5db87850b27d7E"(%"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* align 8 dereferenceable(24) %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  %_14 = getelementptr inbounds %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %leaf, i32 0, i32 2
  %_13.0 = bitcast [11 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* %_14 to [0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]*
  %1 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self, i32 0, i32 2
  %_15 = load i64, i64* %1, align 8
; call core::slice::<impl [T]>::get_unchecked_mut
  %_12 = call align 8 dereferenceable(24) %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17h83c569141cdb76bbE"([0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* nonnull align 8 %_13.0, i64 11, i64 %_15)
  br label %bb4

bb4:                                              ; preds = %bb3
; call core::mem::maybe_uninit::MaybeUninit<T>::assume_init_drop
  call void @"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$16assume_init_drop17hb9d0d74c40016e1fE"(%"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(24) %_12)
  br label %bb5

bb5:                                              ; preds = %bb4
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>::forget_node_type
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node176Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17hc189c7cf64f2cd4cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %_3.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %_3.1 = load i64*, i64** %3, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Leaf>::forget_type
  %4 = call { i64, i64* } @"_ZN5alloc11collections5btree4node81NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$11forget_type17h17355adacc5f6128E"(i64 %_3.0, i64* nonnull %_3.1)
  %_2.0 = extractvalue { i64, i64* } %4, 0
  %_2.1 = extractvalue { i64, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %self, i32 0, i32 2
  %_4 = load i64, i64* %5, align 8
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17haca0be51f694f2e8E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %_2.0, i64* nonnull %_2.1, i64 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::forget_node_type
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17h0233644b769010fcE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 0
  %_3.0 = load i64, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %1, i32 0, i32 1
  %_3.1 = load i64*, i64** %3, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::forget_type
  %4 = call { i64, i64* } @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$11forget_type17h06abbd6a68edbae9E"(i64 %_3.0, i64* nonnull %_3.1)
  %_2.0 = extractvalue { i64, i64* } %4, 0
  %_2.1 = extractvalue { i64, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %self, i32 0, i32 2
  %_4 = load i64, i64* %5, align 8
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17haca0be51f694f2e8E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %_2.0, i64* nonnull %_2.1, i64 %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::descend
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h8ec8fb82790e365cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
  %_5 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::as_internal_ptr
  %parent_ptr = call %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$15as_internal_ptr17hfc9eacacc2ffd1acE"({ i64, i64* }* align 8 dereferenceable(16) %_5)
  br label %bb3

bb1:                                              ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [47 x i8] }>* @alloc93 to [0 x i8]*), i64 47, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc90 to %"core::panic::location::Location"*)) #9
  unreachable

bb3:                                              ; preds = %bb2
  %_10 = getelementptr inbounds %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %parent_ptr, i32 0, i32 1
  %_9.0 = bitcast [12 x i8*]* %_10 to [0 x i8*]*
  %1 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %self, i32 0, i32 2
  %_11 = load i64, i64* %1, align 8
; call core::slice::<impl [T]>::get_unchecked
  %_8 = call align 8 dereferenceable(8) i8** @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$13get_unchecked17ha3a36caaafc179d8E"([0 x i8*]* nonnull align 8 %_9.0, i64 12, i64 %_11)
  br label %bb4

bb4:                                              ; preds = %bb3
  %2 = bitcast i8** %_8 to i64**
; call core::ptr::const_ptr::<impl *const T>::read
  %3 = call nonnull i64* @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$4read17h88f8ba57afefb6f7E"(i64** %2)
  br label %bb5

bb5:                                              ; preds = %bb4
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
  %5 = bitcast { i64, i64* }* %4 to i64*
  %_14 = load i64, i64* %5, align 8
  %_13 = sub i64 %_14, 1
  %6 = bitcast { i64, i64* }* %0 to i64*
  store i64 %_13, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  store i64* %3, i64** %7, align 8
  %8 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8, !nonnull !8
  %12 = insertvalue { i64, i64* } undef, i64 %9, 0
  %13 = insertvalue { i64, i64* } %12, i64* %11, 1
  ret { i64, i64* } %13
}

; alloc::collections::btree::node::Handle<Node,Type>::into_node
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node25Handle$LT$Node$C$Type$GT$9into_node17h3ca98a8c2fa07035E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %0 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %self to { i64, i64* }*
  %1 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %2 = load i64, i64* %1, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %4 = load i64*, i64** %3, align 8, !nonnull !8
  %5 = insertvalue { i64, i64* } undef, i64 %2, 0
  %6 = insertvalue { i64, i64* } %5, i64* %4, 1
  ret { i64, i64* } %6
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::first_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$10first_edge17h3c6931b4808d641aE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17he935d9e7c1b1e24aE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1, i64 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::first_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$10first_edge17hea8b64f42ef793ccE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::new_edge
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8new_edge17h459c6191c623c3f3E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1, i64 0)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::as_leaf_ptr
; Function Attrs: nonlazybind uwtable
define internal %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$11as_leaf_ptr17h24d249c68d41ecedE"({ i64, i64* }* align 8 dereferenceable(16) %this) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %this, i32 0, i32 1
  %_2 = load i64*, i64** %0, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %1 = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h189f0de3c3213841E"(i64* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %1
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::len
; Function Attrs: nonlazybind uwtable
define internal i64 @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$3len17hcc884fde9a7b5bfbE"({ i64, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::as_leaf_ptr
  %_3 = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$11as_leaf_ptr17h24d249c68d41ecedE"({ i64, i64* }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_3, i32 0, i32 4
  %_2 = load i16, i16* %0, align 2
; call core::convert::num::<impl core::convert::From<u16> for usize>::from
  %1 = call i64 @"_ZN4core7convert3num66_$LT$impl$u20$core..convert..From$LT$u16$GT$$u20$for$u20$usize$GT$4from17h6420ebcfdc098c4bE"(i16 %_2)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i64 %1
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::ascend
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend17ha70fff35f2607461E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>") dereferenceable(32) %0, i64 %1, i64* nonnull %2) unnamed_addr #0 {
start:
  %_11 = alloca { i64*, i64* }, align 8
  %_10 = alloca i64*, align 8
  %_7 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", align 8
  %leaf_ptr = alloca %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*, align 8
  %self = alloca { i64, i64* }, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 1
  store i64* %2, i64** %4, align 8
  br i1 false, label %bb1, label %bb2

bb2:                                              ; preds = %start
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::as_leaf_ptr
  %_4 = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$11as_leaf_ptr17h24d249c68d41ecedE"({ i64, i64* }* align 8 dereferenceable(16) %self)
  br label %bb3

bb1:                                              ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1 bitcast (<{ [47 x i8] }>* @alloc93 to [0 x i8]*), i64 47, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc95 to %"core::panic::location::Location"*)) #9
  unreachable

bb3:                                              ; preds = %bb2
  store %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4, %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %leaf_ptr, align 8
  %5 = load %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*, %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %leaf_ptr, align 8
  %6 = bitcast %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %5 to i64**
  %7 = load i64*, i64** %6, align 8
  store i64* %7, i64** %_10, align 8
; call core::option::Option<T>::as_ref
  %_8 = call align 8 dereferenceable_or_null(8) i64* @"_ZN4core6option15Option$LT$T$GT$6as_ref17h3c53255f70e531c1E"(i64** align 8 dereferenceable(8) %_10)
  br label %bb4

bb4:                                              ; preds = %bb3
  %8 = bitcast { i64*, i64* }* %_11 to { i64, i64* }**
  store { i64, i64* }* %self, { i64, i64* }** %8, align 8
  %9 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %10 = bitcast i64** %9 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"***
  store %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %leaf_ptr, %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*** %10, align 8
  %11 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8, !nonnull !8
  %13 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %_11, i32 0, i32 1
  %14 = load i64*, i64** %13, align 8, !nonnull !8
; call core::option::Option<T>::map
  call void @"_ZN4core6option15Option$LT$T$GT$3map17h404368dac93b2d22E"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %_7, i64* align 8 dereferenceable_or_null(8) %_8, i64* align 8 dereferenceable(16) %12, i64* align 8 dereferenceable(8) %14)
  br label %bb5

bb5:                                              ; preds = %bb4
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 0
  %_14.0 = load i64, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 1
  %_14.1 = load i64*, i64** %16, align 8, !nonnull !8
; call core::option::Option<T>::ok_or
  call void @"_ZN4core6option15Option$LT$T$GT$5ok_or17h7cd365dd8410c1d7E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture dereferenceable(24) %_7, i64 %_14.0, i64* nonnull %_14.1)
  br label %bb6

bb6:                                              ; preds = %bb5
  ret void
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::ascend::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$6ascend28_$u7b$$u7b$closure$u7d$$u7d$17h8b5ed82cf0a626a1E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64* align 8 dereferenceable(16) %_1.0, i64* align 8 dereferenceable(8) %_1.1, i64** align 8 dereferenceable(8) %parent) unnamed_addr #1 {
start:
  %_4 = load i64*, i64** %parent, align 8, !nonnull !8
  %1 = bitcast i64* %_1.0 to { i64, i64* }*
  %2 = bitcast i64* %_1.0 to { i64, i64* }*
  %3 = bitcast { i64, i64* }* %2 to i64*
  %_6 = load i64, i64* %3, align 8
  %_5 = add i64 %_6, 1
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::from_internal
  %4 = call { i64, i64* } @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$13from_internal17hc5c510a580dace57E"(i64* nonnull %_4, i64 %_5)
  %_3.0 = extractvalue { i64, i64* } %4, 0
  %_3.1 = extractvalue { i64, i64* } %4, 1
  br label %bb1

bb1:                                              ; preds = %start
  %5 = bitcast i64* %_1.1 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  %6 = bitcast i64* %_1.1 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  %7 = bitcast i64* %_1.1 to %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  %8 = load %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*, %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %7, align 8
  %9 = getelementptr inbounds %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %8, i32 0, i32 3
  %_9 = load i16, i16* %9, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::convert::num::<impl core::convert::From<u16> for usize>::from
  %_7 = call i64 @"_ZN4core7convert3num66_$LT$impl$u20$core..convert..From$LT$u16$GT$$u20$for$u20$usize$GT$4from17h6420ebcfdc098c4bE"(i16 %_9)
  br label %bb3

bb3:                                              ; preds = %bb2
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %0 to { i64, i64* }*
  %11 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %10, i32 0, i32 0
  store i64 %_3.0, i64* %11, align 8
  %12 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %10, i32 0, i32 1
  store i64* %_3.1, i64** %12, align 8
  %13 = getelementptr inbounds %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %0, i32 0, i32 2
  store i64 %_7, i64* %13, align 8
  ret void
}

; alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,Type>::as_leaf_dying
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(544) %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node76NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$Type$GT$13as_leaf_dying17he2113e7933a49299E"({ i64, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::as_leaf_ptr
  %ptr = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$11as_leaf_ptr17h24d249c68d41ecedE"({ i64, i64* }* align 8 dereferenceable(16) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %ptr
}

; alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Owned,K,V,Type>::into_dying
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node76NodeRef$LT$alloc..collections..btree..node..marker..Owned$C$K$C$V$C$Type$GT$10into_dying17h98d21bc7683db8dfE"(i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
  %1 = bitcast { i64, i64* }* %0 to i64*
  store i64 %self.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  store i64* %self.1, i64** %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !8
  %7 = insertvalue { i64, i64* } undef, i64 %4, 0
  %8 = insertvalue { i64, i64* } %7, i64* %6, 1
  ret { i64, i64* } %8
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Leaf>::forget_type
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node81NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$11forget_type17h17355adacc5f6128E"(i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
  %1 = bitcast { i64, i64* }* %0 to i64*
  store i64 %self.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  store i64* %self.1, i64** %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !8
  %7 = insertvalue { i64, i64* } undef, i64 %4, 0
  %8 = insertvalue { i64, i64* } %7, i64* %6, 1
  ret { i64, i64* } %8
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::forget_type
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$11forget_type17h06abbd6a68edbae9E"(i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
  %1 = bitcast { i64, i64* }* %0 to i64*
  store i64 %self.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  store i64* %self.1, i64** %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !8
  %7 = insertvalue { i64, i64* } undef, i64 %4, 0
  %8 = insertvalue { i64, i64* } %7, i64* %6, 1
  ret { i64, i64* } %8
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::from_internal
; Function Attrs: nonlazybind uwtable
define internal { i64, i64* } @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$13from_internal17hc5c510a580dace57E"(i64* nonnull %node, i64 %height) unnamed_addr #0 {
start:
  %0 = alloca { i64, i64* }, align 8
; call core::ptr::non_null::NonNull<T>::cast
  %_4 = call nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17he2f68f08861ac11cE"(i64* nonnull %node)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast { i64, i64* }* %0 to i64*
  store i64 %height, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  store i64* %_4, i64** %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 0
  %4 = load i64, i64* %3, align 8
  %5 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %0, i32 0, i32 1
  %6 = load i64*, i64** %5, align 8, !nonnull !8
  %7 = insertvalue { i64, i64* } undef, i64 %4, 0
  %8 = insertvalue { i64, i64* } %7, i64* %6, 1
  ret { i64, i64* } %8
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>::as_internal_ptr
; Function Attrs: nonlazybind uwtable
define internal %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN5alloc11collections5btree4node85NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$15as_internal_ptr17hfc9eacacc2ffd1acE"({ i64, i64* }* align 8 dereferenceable(16) %this) unnamed_addr #0 {
start:
  %0 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %this, i32 0, i32 1
  %_3 = load i64*, i64** %0, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_2 = call %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h189f0de3c3213841E"(i64* nonnull %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = bitcast %"alloc::collections::btree::node::LeafNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2 to %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  ret %"alloc::collections::btree::node::InternalNode<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %1
}

; alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::force
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree4node91NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$5force17hd754400ac1fd911dE"(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* noalias nocapture sret(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1) unnamed_addr #0 {
start:
  %_6 = alloca { i64, i64* }, align 8
  %_3 = alloca { i64, i64* }, align 8
  %1 = icmp eq i64 %self.0, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %start
  %2 = bitcast { i64, i64* }* %_3 to i64*
  store i64 %self.0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 1
  store i64* %self.1, i64** %3, align 8
  %4 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %0 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"*
  %5 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"* %4, i32 0, i32 1
  %6 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_3, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8, !nonnull !8
  %10 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 0
  store i64 %7, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %5, i32 0, i32 1
  store i64* %9, i64** %11, align 8
  %12 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %0 to i64*
  store i64 0, i64* %12, align 8
  br label %bb3

bb2:                                              ; preds = %start
  %13 = bitcast { i64, i64* }* %_6 to i64*
  store i64 %self.0, i64* %13, align 8
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_6, i32 0, i32 1
  store i64* %self.1, i64** %14, align 8
  %15 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %0 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"*
  %16 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"* %15, i32 0, i32 1
  %17 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_6, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %_6, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8, !nonnull !8
  %21 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 0
  store i64 %18, i64* %21, align 8
  %22 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %16, i32 0, i32 1
  store i64* %20, i64** %22, align 8
  %23 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %0 to i64*
  store i64 1, i64* %23, align 8
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  ret void
}

; alloc::collections::btree::navigate::full_range
; Function Attrs: nonlazybind uwtable
define internal void @_ZN5alloc11collections5btree8navigate10full_range17hc7a4f2055e8b9b66E(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %0, i64 %root1.0, i64* nonnull %root1.1, i64 %root2.0, i64* nonnull %root2.1) unnamed_addr #0 {
start:
  %_7 = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_6 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %_4 = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_3 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %1 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"*
  %2 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"* %1, i32 0, i32 1
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %2, i32 0, i32 0
  store i64 %root1.0, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %2, i32 0, i32 1
  store i64* %root1.1, i64** %4, align 8
  %5 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4 to i64*
  store i64 0, i64* %5, align 8
  %6 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %7 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %6 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %8 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %7 to i8*
  %9 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"*
  %11 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %11, i32 0, i32 0
  store i64 %root2.0, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %11, i32 0, i32 1
  store i64* %root2.1, i64** %13, align 8
  %14 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to i64*
  store i64 0, i64* %14, align 8
  %15 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %16 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %15 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %17 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %16 to i8*
  %18 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 32, i1 false)
  %19 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %20 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %19 to i8*
  %21 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 32, i1 false)
  %22 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0, i32 0, i32 1
  %23 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %22 to i8*
  %24 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 32, i1 false)
  ret void
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::first_leaf_edge
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$15first_leaf_edge17h55c941eac78a7033E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %self.0, i64* nonnull %self.1) unnamed_addr #1 {
start:
  %_10 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_3 = alloca %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>", align 8
  %node = alloca { i64, i64* }, align 8
  %1 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 0
  store i64 %self.0, i64* %1, align 8
  %2 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 1
  store i64* %self.1, i64** %2, align 8
  br label %bb1

bb1:                                              ; preds = %bb8, %start
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 0
  %_4.0 = load i64, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 1
  %_4.1 = load i64*, i64** %4, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::force
  call void @"_ZN5alloc11collections5btree4node91NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$5force17hd754400ac1fd911dE"(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* noalias nocapture sret(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>") dereferenceable(24) %_3, i64 %_4.0, i64* nonnull %_4.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  %5 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_3 to i64*
  %_5 = load i64, i64* %5, align 8, !range !71
  switch i64 %_5, label %bb4 [
    i64 0, label %bb5
    i64 1, label %bb3
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb5:                                              ; preds = %bb2
  %6 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_3 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"*
  %7 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Leaf"* %6, i32 0, i32 1
  %8 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %7, i32 0, i32 0
  %leaf.0 = load i64, i64* %8, align 8
  %9 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %7, i32 0, i32 1
  %leaf.1 = load i64*, i64** %9, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::first_edge
  call void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$10first_edge17hea8b64f42ef793ccE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %leaf.0, i64* nonnull %leaf.1)
  br label %bb6

bb3:                                              ; preds = %bb2
  %10 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>"* %_3 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"*
  %11 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>>::Internal"* %10, i32 0, i32 1
  %12 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %11, i32 0, i32 0
  %internal.0 = load i64, i64* %12, align 8
  %13 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %11, i32 0, i32 1
  %internal.1 = load i64*, i64** %13, align 8, !nonnull !8
; call alloc::collections::btree::node::NodeRef<BorrowType,K,V,Type>::first_edge
  call void @"_ZN5alloc11collections5btree4node40NodeRef$LT$BorrowType$C$K$C$V$C$Type$GT$10first_edge17h3c6931b4808d641aE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_10, i64 %internal.0, i64* nonnull %internal.1)
  br label %bb7

bb7:                                              ; preds = %bb3
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::descend
  %14 = call { i64, i64* } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h8ec8fb82790e365cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_10)
  %_9.0 = extractvalue { i64, i64* } %14, 0
  %_9.1 = extractvalue { i64, i64* } %14, 1
  br label %bb8

bb8:                                              ; preds = %bb7
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 0
  store i64 %_9.0, i64* %15, align 8
  %16 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %node, i32 0, i32 1
  store i64* %_9.1, i64** %16, align 8
  br label %bb1

bb6:                                              ; preds = %bb5
  ret void
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::full_range
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate178_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$10full_range17h724775f31bc67eaeE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %0, i64 %1, i64* nonnull %2) unnamed_addr #0 {
start:
  %self = alloca { i64, i64* }, align 8
  %3 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 0
  store i64 %1, i64* %3, align 8
  %4 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 1
  store i64* %2, i64** %4, align 8
; call core::ptr::read
  %5 = call { i64, i64* } @_ZN4core3ptr4read17h8001469bddcea459E({ i64, i64* }* %self)
  %self2.0 = extractvalue { i64, i64* } %5, 0
  %self2.1 = extractvalue { i64, i64* } %5, 1
  br label %bb1

bb1:                                              ; preds = %start
  %6 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 0
  %_5.0 = load i64, i64* %6, align 8
  %7 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %self, i32 0, i32 1
  %_5.1 = load i64*, i64** %7, align 8, !nonnull !8
; call alloc::collections::btree::navigate::full_range
  call void @_ZN5alloc11collections5btree8navigate10full_range17hc7a4f2055e8b9b66E(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %0, i64 %_5.0, i64* nonnull %_5.1, i64 %self2.0, i64* nonnull %self2.1)
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>,alloc::collections::btree::node::marker::KV>>::next_leaf_edge
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h2fea6b652450eca4E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_11 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_9 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>", align 8
  %next_internal_edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %internal_kv = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>", align 8
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>", align 8
  %leaf_kv = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>", align 8
  %_3 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_2 = alloca %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>", align 8
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_3 to i8*
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>,Type>::force
  call void @"_ZN5alloc11collections5btree4node145Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$Type$GT$5force17hd365a5d8c8797922E"(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* noalias nocapture sret(%"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>") dereferenceable(32) %_2, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  %3 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %_2 to i64*
  %_4 = load i64, i64* %3, align 8, !range !71
  switch i64 %_4, label %bb3 [
    i64 0, label %bb4
    i64 1, label %bb2
  ]

bb3:                                              ; preds = %bb1
  unreachable

bb4:                                              ; preds = %bb1
  %4 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %_2 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf"*
  %5 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Leaf"* %4, i32 0, i32 1
  %6 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %leaf_kv to i8*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %_6 to i8*
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* %leaf_kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::right_edge
  call void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$10right_edge17he0580229f6390ae8E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_6)
  br label %bb5

bb2:                                              ; preds = %bb1
  %10 = bitcast %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>"* %_2 to %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal"*
  %11 = getelementptr inbounds %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal", %"alloc::collections::btree::node::ForceResult<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>>::Internal"* %10, i32 0, i32 1
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %internal_kv to i8*
  %13 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %_9 to i8*
  %15 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* %internal_kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::right_edge
  call void @"_ZN5alloc11collections5btree4node137Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$10right_edge17hd7278c62f3d78518E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %next_internal_edge, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_9)
  br label %bb6

bb6:                                              ; preds = %bb2
  %16 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_11 to i8*
  %17 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %next_internal_edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::descend
  %18 = call { i64, i64* } @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$7descend17h8ec8fb82790e365cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_11)
  %_10.0 = extractvalue { i64, i64* } %18, 0
  %_10.1 = extractvalue { i64, i64* } %18, 1
  br label %bb7

bb7:                                              ; preds = %bb6
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::first_leaf_edge
  call void @"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$15first_leaf_edge17h55c941eac78a7033E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %0, i64 %_10.0, i64* nonnull %_10.1)
  br label %bb8

bb8:                                              ; preds = %bb7
  br label %bb9

bb9:                                              ; preds = %bb5, %bb8
  ret void

bb5:                                              ; preds = %bb4
  br label %bb9
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_end
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hc28d3eaa4c1e7cd5E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_10 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_9 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %parent_edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_4 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", align 8
  %_3 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %0 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_3 to i8*
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>::forget_node_type
  call void @"_ZN5alloc11collections5btree4node176Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17hc189c7cf64f2cd4cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %edge, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb6, %bb1
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_6 to i8*
  %3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<Node,Type>::into_node
  %4 = call { i64, i64* } @"_ZN5alloc11collections5btree4node25Handle$LT$Node$C$Type$GT$9into_node17h3ca98a8c2fa07035E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_6)
  %_5.0 = extractvalue { i64, i64* } %4, 0
  %_5.1 = extractvalue { i64, i64* } %4, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::deallocate_and_ascend
  call void @"_ZN5alloc11collections5btree4node127NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$21deallocate_and_ascend17h18b70585ca7d3affE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %_4, i64 %_5.0, i64* nonnull %_5.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %5 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %_4, i32 0, i32 1
  %6 = load {}*, {}** %5, align 8
  %7 = icmp eq {}* %6, null
  %_7 = select i1 %7, i64 0, i64 1
  %8 = icmp eq i64 %_7, 1
  br i1 %8, label %bb5, label %bb7

bb5:                                              ; preds = %bb4
  %9 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %_4 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %10 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"* %9 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %parent_edge to i8*
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 24, i1 false)
  %13 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_10 to i8*
  %14 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %parent_edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::forget_node_type
  call void @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17h0233644b769010fcE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_9, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_10)
  br label %bb6

bb7:                                              ; preds = %bb4
  ret void

bb6:                                              ; preds = %bb5
  %15 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  %16 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  br label %bb2
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$17deallocating_next17haa942e116fa81f8bE"(%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* noalias nocapture sret(%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>") dereferenceable(48) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_21 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %parent_edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_18 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_16 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", align 8
  %last_edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_14 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_11 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_10 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_9 = alloca { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }, align 8
  %kv = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_5 = alloca %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>", align 8
  %_4 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %_3 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>", align 8
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_3 to i8*
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>::forget_node_type
  call void @"_ZN5alloc11collections5btree4node176Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17hc189c7cf64f2cd4cE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %edge, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb1

bb1:                                              ; preds = %start
  br label %bb2

bb2:                                              ; preds = %bb14, %bb1
  %3 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_6 to i8*
  %4 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,NodeType>,alloc::collections::btree::node::marker::Edge>::right_kv
  call void @"_ZN5alloc11collections5btree4node139Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..Edge$GT$8right_kv17ha1a7a802b47d1805E"(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(32) %_5, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_6)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %_5 to i64*
  %_7 = load i64, i64* %5, align 8, !range !71
  switch i64 %_7, label %bb5 [
    i64 0, label %bb6
    i64 1, label %bb4
  ]

bb5:                                              ; preds = %bb3
  unreachable

bb6:                                              ; preds = %bb3
  %6 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %_5 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok"*
  %7 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Ok"* %6, i32 0, i32 1
  %8 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
; call core::ptr::read
  call void @_ZN4core3ptr4read17h444823e36d058d91E(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %_11, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv)
  br label %bb7

bb4:                                              ; preds = %bb3
  %10 = bitcast %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>"* %_5 to %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err"*
  %11 = getelementptr inbounds %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err", %"core::result::Result<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>>::Err"* %10, i32 0, i32 1
  %12 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %last_edge to i8*
  %13 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 24, i1 false)
  %14 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_18 to i8*
  %15 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %last_edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<Node,Type>::into_node
  %16 = call { i64, i64* } @"_ZN5alloc11collections5btree4node25Handle$LT$Node$C$Type$GT$9into_node17h3ca98a8c2fa07035E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_18)
  %_17.0 = extractvalue { i64, i64* } %16, 0
  %_17.1 = extractvalue { i64, i64* } %16, 1
  br label %bb9

bb9:                                              ; preds = %bb4
; call alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::LeafOrInternal>::deallocate_and_ascend
  call void @"_ZN5alloc11collections5btree4node127NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$21deallocate_and_ascend17h18b70585ca7d3affE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %_16, i64 %_17.0, i64* nonnull %_17.1)
  br label %bb10

bb10:                                             ; preds = %bb9
  %17 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %_16, i32 0, i32 1
  %18 = load {}*, {}** %17, align 8
  %19 = icmp eq {}* %18, null
  %_19 = select i1 %19, i64 0, i64 1
  switch i64 %_19, label %bb12 [
    i64 0, label %bb11
    i64 1, label %bb13
  ]

bb12:                                             ; preds = %bb10
  unreachable

bb11:                                             ; preds = %bb10
  %20 = getelementptr inbounds %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* %0, i32 0, i32 1
  store {}* null, {}** %20, align 8
  br label %bb15

bb13:                                             ; preds = %bb10
  %21 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>"* %_16 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %22 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>>::Some"* %21 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"*
  %23 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %parent_edge to i8*
  %24 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %23, i8* align 8 %24, i64 24, i1 false)
  %25 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %_21 to i8*
  %26 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* %parent_edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 24, i1 false)
; call alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::Internal>,alloc::collections::btree::node::marker::Edge>::forget_node_type
  call void @"_ZN5alloc11collections5btree4node180Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..Internal$GT$$C$alloc..collections..btree..node..marker..Edge$GT$16forget_node_type17h0233644b769010fcE"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_4, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Internal>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_21)
  br label %bb14

bb14:                                             ; preds = %bb13
  %27 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  %28 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::Edge>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 24, i1 false)
  br label %bb2

bb15:                                             ; preds = %bb8, %bb11
  ret void

bb7:                                              ; preds = %bb6
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>,alloc::collections::btree::node::marker::KV>>::next_leaf_edge
  call void @"_ZN5alloc11collections5btree8navigate235_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$C$alloc..collections..btree..node..marker..KV$GT$$GT$14next_leaf_edge17h2fea6b652450eca4E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_10, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_11)
  br label %bb8

bb8:                                              ; preds = %bb7
  %29 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_14 to i8*
  %30 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 24, i1 false)
  %31 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %_9 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %32 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %31 to i8*
  %33 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 24, i1 false)
  %34 = getelementptr inbounds { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }, { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %_9, i32 0, i32 1
  %35 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %34 to i8*
  %36 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %35, i8* align 8 %36, i64 24, i1 false)
  %37 = bitcast %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* %0 to %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>::Some"*
  %38 = bitcast %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>::Some"* %37 to { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }*
  %39 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %38 to i8*
  %40 = bitcast { %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* %_9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %39, i8* align 8 %40, i64 48, i1 false)
  br label %bb15
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next_unchecked
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked17hcc60553d89ec1d62E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::collections::btree::mem::replace
  call void @_ZN5alloc11collections5btree3mem7replace17h893181304b76343eE(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next_unchecked::{{closure}}
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked28_$u7b$$u7b$closure$u7d$$u7d$17hddcd35fced8cc225E"({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* noalias nocapture sret({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }) dereferenceable(48) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %leaf_edge) unnamed_addr #1 {
start:
  %_4 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_3 = alloca %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>", align 8
  %1 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_4 to i8*
  %2 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %leaf_edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next
  call void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$17deallocating_next17haa942e116fa81f8bE"(%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* noalias nocapture sret(%"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>") dereferenceable(48) %_3, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_4)
  br label %bb1

bb1:                                              ; preds = %start
; call core::option::Option<T>::unwrap
  call void @"_ZN4core6option15Option$LT$T$GT$6unwrap17h436b1027cf8640c9E"({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }* noalias nocapture sret({ %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>" }) dereferenceable(48) %0, %"core::option::Option<(alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>, alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>)>"* noalias nocapture dereferenceable(48) %_3, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc99 to %"core::panic::location::Location"*))
  br label %bb2

bb2:                                              ; preds = %bb1
  ret void
}

; alloc::collections::btree::navigate::LazyLeafRange<BorrowType,K,V>::init_front
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable_or_null(24) i64* @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8560c6cd61dbbb3cE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self) unnamed_addr #0 {
start:
  %_8 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_7 = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_6 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %0 = alloca i64*, align 8
  %_2 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_2 to i64*
  %2 = load i64, i64* %1, align 8, !range !73
  %3 = sub i64 %2, 2
  %4 = icmp eq i64 %3, 0
  %_4 = select i1 %4, i64 0, i64 1
  %5 = icmp eq i64 %_4, 1
  br i1 %5, label %bb1, label %bb5

bb1:                                              ; preds = %start
  %6 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_2 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %7 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %6 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %8 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %7 to i64*
  %_3 = load i64, i64* %8, align 8, !range !71
  %9 = icmp eq i64 %_3, 0
  br i1 %9, label %bb2, label %bb5

bb5:                                              ; preds = %bb4, %bb1, %start
  %_11 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %10 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_11 to i64*
  %11 = load i64, i64* %10, align 8, !range !73
  %12 = sub i64 %11, 2
  %13 = icmp eq i64 %12, 0
  %_13 = select i1 %13, i64 0, i64 1
  switch i64 %_13, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb6
  ]

bb2:                                              ; preds = %bb1
  %14 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_2 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %15 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %14 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %16 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %15 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"*
  %root = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"* %16, i32 0, i32 1
; call core::ptr::read
  %17 = call { i64, i64* } @_ZN4core3ptr4read17h8001469bddcea459E({ i64, i64* }* %root)
  %_9.0 = extractvalue { i64, i64* } %17, 0
  %_9.1 = extractvalue { i64, i64* } %17, 1
  br label %bb3

bb3:                                              ; preds = %bb2
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::first_leaf_edge
  call void @"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$15first_leaf_edge17h55c941eac78a7033E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_8, i64 %_9.0, i64* nonnull %_9.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  %18 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"*
  %19 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"* %18, i32 0, i32 1
  %20 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %19 to i8*
  %21 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to i64*
  store i64 1, i64* %22, align 8
  %23 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %24 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %23 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %25 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %24 to i8*
  %26 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 32, i1 false)
  %27 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %28 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %27 to i8*
  %29 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 32, i1 false)
  br label %bb5

bb8:                                              ; preds = %bb6, %bb5
  unreachable

bb9:                                              ; preds = %bb5
  %30 = bitcast i64** %0 to {}**
  store {}* null, {}** %30, align 8
  br label %bb11

bb6:                                              ; preds = %bb5
  %31 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_11 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %32 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %31 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %33 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %32 to i64*
  %_12 = load i64, i64* %33, align 8, !range !71
  switch i64 %_12, label %bb8 [
    i64 0, label %bb7
    i64 1, label %bb10
  ]

bb7:                                              ; preds = %bb6
; call core::hint::unreachable_unchecked
  call void @_ZN4core4hint21unreachable_unchecked17hcf11f951a5ff9bebE() #9
  unreachable

bb10:                                             ; preds = %bb6
  %34 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_11 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %35 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %34 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %36 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %35 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"*
  %edge = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"* %36, i32 0, i32 1
  %37 = bitcast i64** %0 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"**
  store %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %edge, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"** %37, align 8
  br label %bb11

bb11:                                             ; preds = %bb9, %bb10
  %38 = load i64*, i64** %0, align 8
  ret i64* %38
}

; alloc::collections::btree::navigate::LazyLeafRange<BorrowType,K,V>::none
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$4none17h5edb4c4ab1718d7fE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(64) %0) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %_1 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_1 to i64*
  store i64 2, i64* %1, align 8
  %2 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_2 to i64*
  store i64 2, i64* %2, align 8
  %3 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0 to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
  %4 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %3 to i8*
  %5 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 %5, i64 32, i1 false)
  %6 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %0, i32 0, i32 1
  %7 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %6 to i8*
  %8 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  ret void
}

; alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::take_front
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17hd7f4f2f1baf5e353E"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %0, %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self) unnamed_addr #0 {
start:
  %_15 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %edge = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_12 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %val = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_4 = alloca %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %_3 = alloca %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>", align 8
  %_2 = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_5 = bitcast %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"*
; call core::option::Option<T>::take
  call void @"_ZN4core6option15Option$LT$T$GT$4take17h28dd70c89255d41bE"(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %_4, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* align 8 dereferenceable(32) %_5)
  br label %bb1

bb1:                                              ; preds = %start
; call <core::option::Option<T> as core::ops::try_trait::Try>::branch
  call void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h01fb8c4a09e73217E"(%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %_3, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %_4)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3 to i64*
  %2 = load i64, i64* %1, align 8, !range !73
  %3 = sub i64 %2, 2
  %4 = icmp eq i64 %3, 0
  %_6 = select i1 %4, i64 1, i64 0
  switch i64 %_6, label %bb4 [
    i64 0, label %bb3
    i64 1, label %bb5
  ]

bb4:                                              ; preds = %bb2
  unreachable

bb3:                                              ; preds = %bb2
  %5 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %_3 to %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Continue"*
  %6 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Continue"* %5 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %7 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %val to i8*
  %8 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 32, i1 false)
  %9 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2 to i8*
  %10 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %val to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %9, i8* align 8 %10, i64 32, i1 false)
  %11 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2 to i64*
  %_10 = load i64, i64* %11, align 8, !range !71
  switch i64 %_10, label %bb8 [
    i64 0, label %bb9
    i64 1, label %bb7
  ]

bb5:                                              ; preds = %bb2
; call <core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual
  call void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hb9cde76c19eee81fE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %0)
  br label %bb6

bb6:                                              ; preds = %bb5
  br label %bb12

bb12:                                             ; preds = %bb11, %bb6
  ret void

bb8:                                              ; preds = %bb3
  unreachable

bb9:                                              ; preds = %bb3
  %12 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"*
  %13 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Root"* %12, i32 0, i32 1
  %14 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 0
  %root.0 = load i64, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64* }, { i64, i64* }* %13, i32 0, i32 1
  %root.1 = load i64*, i64** %15, align 8, !nonnull !8
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::NodeRef<BorrowType,K,V,alloc::collections::btree::node::marker::LeafOrInternal>>::first_leaf_edge
  call void @"_ZN5alloc11collections5btree8navigate142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$15first_leaf_edge17h55c941eac78a7033E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>") dereferenceable(24) %_12, i64 %root.0, i64* nonnull %root.1)
  br label %bb10

bb7:                                              ; preds = %bb3
  %16 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_2 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"*
  %17 = getelementptr inbounds %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge", %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>::Edge"* %16, i32 0, i32 1
  %18 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  %19 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %18, i8* align 8 %19, i64 24, i1 false)
  %20 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_15 to i8*
  %21 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %edge to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %23 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"* %22 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %24 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %23 to i8*
  %25 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 24, i1 false)
  br label %bb11

bb11:                                             ; preds = %bb10, %bb7
  br label %bb12

bb10:                                             ; preds = %bb9
  %26 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %0 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %27 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"* %26 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %28 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %27 to i8*
  %29 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 24, i1 false)
  br label %bb11
}

; alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::deallocating_end
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h8618c5f1aa0051f5E"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %_6 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %front = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>", align 8
  %_2 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", align 8
; call alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::take_front
  call void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$10take_front17hd7f4f2f1baf5e353E"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %_2, %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_2, i32 0, i32 1
  %1 = load {}*, {}** %0, align 8
  %2 = icmp eq {}* %1, null
  %_4 = select i1 %2, i64 0, i64 1
  %3 = icmp eq i64 %_4, 1
  br i1 %3, label %bb2, label %bb4

bb2:                                              ; preds = %bb1
  %4 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %_2 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"*
  %5 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>::Some"* %4 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"*
  %6 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %front to i8*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %6, i8* align 8 %7, i64 24, i1 false)
  %8 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %_6 to i8*
  %9 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* %front to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 24, i1 false)
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_end
  call void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hc28d3eaa4c1e7cd5E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* noalias nocapture dereferenceable(24) %_6)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying,K,V>::deallocating_next_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea3848b65e9ed603E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, %"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
; call alloc::collections::btree::navigate::LazyLeafRange<BorrowType,K,V>::init_front
  %_3 = call align 8 dereferenceable_or_null(24) i64* @"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h8560c6cd61dbbb3cE"(%"alloc::collections::btree::navigate::LazyLeafRange<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(64) %self)
  br label %bb1

bb1:                                              ; preds = %start
; call core::option::Option<T>::unwrap
  %front = call align 8 dereferenceable(24) %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* @"_ZN4core6option15Option$LT$T$GT$6unwrap17h85f4a1e085cfb941E"(i64* align 8 dereferenceable_or_null(24) %_3, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc101 to %"core::panic::location::Location"*))
  br label %bb2

bb2:                                              ; preds = %bb1
; call alloc::collections::btree::navigate::<impl alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,alloc::collections::btree::node::marker::Leaf>,alloc::collections::btree::node::marker::Edge>>::deallocating_next_unchecked
  call void @"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$27deallocating_next_unchecked17hcc60553d89ec1d62E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture sret(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>") dereferenceable(24) %0, %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>"* align 8 dereferenceable(24) %front)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 }* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h16da32b3706d0f9fE"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<std::ffi::c_str::CString>"* %self to { i64*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call { i8*, i64 }* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2783ddd15db4cf7eE"({ i64*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcf202f7411056b72E"({ i8*, i64 }* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret { i8*, i64 }* %ptr
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* }* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h59bdd2977eea6ba3E"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %self to { i64*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call { {}*, [3 x i64]* }* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h31fb60f73536d33bE"({ i64*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17h35938b1c82772645E"({ {}*, [3 x i64]* }* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret { {}*, [3 x i64]* }* %ptr
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h73a5550a1ed1cfa5E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h35073fa4ff50dba1E"({ i8*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcbae12bbc8209857E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::vec::Vec<T,A>::as_mut_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8** @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h816593b104e3fa1dE"(%"alloc::vec::Vec<*const i8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"alloc::vec::Vec<*const i8>"* %self to { i64*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8** @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hed399bcd4362471fE"({ i64*, i64 }* align 8 dereferenceable(16) %_2)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_5 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17he92ac48fb1a10a67E"(i8** %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_4 = xor i1 %_5, true
  call void @llvm.assume(i1 %_4)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8** %ptr
}

; alloc::vec::Vec<T,A>::as_ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h4db76eb6028335d8E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_3 = bitcast %"alloc::vec::Vec<u8>"* %self to { i8*, i64 }*
; call alloc::raw_vec::RawVec<T,A>::ptr
  %ptr = call i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h35073fa4ff50dba1E"({ i8*, i64 }* align 8 dereferenceable(16) %_3)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_6 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hcbae12bbc8209857E"(i8* %ptr)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_5 = xor i1 %_6, true
  call void @llvm.assume(i1 %_5)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret i8* %ptr
}

; alloc::alloc::dealloc
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc7dealloc17hb3b0ce5498584f7eE(i8* %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h524543aeb6548ce3E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
; call core::alloc::layout::Layout::align
  %_6 = call i64 @_ZN4core5alloc6layout6Layout5align17h3283a9952e6bb655E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb2

bb2:                                              ; preds = %bb1
  call void @__rust_dealloc(i8* %ptr, i64 %_4, i64 %_6) #11
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h3b063d10e7346068E(i8* nonnull %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64 }, align 8
  %5 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %ptr, i32 0, i32 1
  store i64 %1, i64* %6, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %7 = invoke { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h54c836a3467add55E"({ i8*, i64 }* align 8 dereferenceable(16) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i8]*, i64 } %7, 0
  %_5.1 = extractvalue { [0 x i8]*, i64 } %7, 1
  %8 = mul i64 %_5.1, 1
  store i64 %8, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %14 = invoke { [0 x i8]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h54c836a3467add55E"({ i8*, i64 }* align 8 dereferenceable(16) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { [0 x i8]*, i64 } %14, 0
  %_9.1 = extractvalue { [0 x i8]*, i64 } %14, 1
  %15 = mul i64 %_9.1, 1
  store i64 1, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %16 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %16, 0
  %layout.1 = extractvalue { i64, i64 } %16, 1
  %17 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %17, align 8, !nonnull !8
  %18 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %ptr, i32 0, i32 1
  %_17.1 = load i64, i64* %18, align 8
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hd3ad7022a8bee419E"(i8* nonnull %_17.0, i64 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %19 = bitcast { i8*, i32 }* %4 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb8
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17h451e53515c61aaa1E(i8* nonnull %0, i64* align 8 dereferenceable(24) %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9f7aaafa98924375E"({ i8*, i64* }* align 8 dereferenceable(16) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %8 = bitcast [3 x i64]* %_5.1 to i64*
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8, !invariant.load !8
  %11 = bitcast [3 x i64]* %_5.1 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  %13 = load i64, i64* %12, align 8, !range !10, !invariant.load !8
  store i64 %10, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h9f7aaafa98924375E"({ i8*, i64* }* align 8 dereferenceable(16) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !8
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !10, !invariant.load !8
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !8
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !8
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h3983083cbd72c4e7E"(i8* nonnull %_17.0, i64* align 8 dereferenceable(24) %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17ha003506c3e06779bE(i8* nonnull %0, i64* align 8 dereferenceable(24) %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i8*, i64* }, align 8
  %5 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  store i8* %0, i8** %5, align 8
  %6 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  store i64* %1, i64** %6, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %7 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h4e65567cd16c4c2aE"({ i8*, i64* }* align 8 dereferenceable(16) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { {}*, [3 x i64]* } %7, 0
  %_5.1 = extractvalue { {}*, [3 x i64]* } %7, 1
  %8 = bitcast [3 x i64]* %_5.1 to i64*
  %9 = getelementptr inbounds i64, i64* %8, i64 1
  %10 = load i64, i64* %9, align 8, !invariant.load !8
  %11 = bitcast [3 x i64]* %_5.1 to i64*
  %12 = getelementptr inbounds i64, i64* %11, i64 2
  %13 = load i64, i64* %12, align 8, !range !10, !invariant.load !8
  store i64 %10, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %19 = invoke { {}*, [3 x i64]* } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h4e65567cd16c4c2aE"({ i8*, i64* }* align 8 dereferenceable(16) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { {}*, [3 x i64]* } %19, 0
  %_9.1 = extractvalue { {}*, [3 x i64]* } %19, 1
  %20 = bitcast [3 x i64]* %_9.1 to i64*
  %21 = getelementptr inbounds i64, i64* %20, i64 1
  %22 = load i64, i64* %21, align 8, !invariant.load !8
  %23 = bitcast [3 x i64]* %_9.1 to i64*
  %24 = getelementptr inbounds i64, i64* %23, i64 2
  %25 = load i64, i64* %24, align 8, !range !10, !invariant.load !8
  store i64 %25, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %26 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %26, 0
  %layout.1 = extractvalue { i64, i64 } %26, 1
  %27 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 0
  %_17.0 = load i8*, i8** %27, align 8, !nonnull !8
  %28 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %ptr, i32 0, i32 1
  %_17.1 = load i64*, i64** %28, align 8, !nonnull !8
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h0ca7220dc523d8efE"(i8* nonnull %_17.0, i64* align 8 dereferenceable(24) %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %29 = bitcast { i8*, i32 }* %4 to i8**
  %30 = load i8*, i8** %29, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = insertvalue { i8*, i32 } undef, i8* %30, 0
  %34 = insertvalue { i8*, i32 } %33, i32 %32, 1
  resume { i8*, i32 } %34

bb9:                                              ; preds = %bb8
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17haeb91c6883c6de9dE(i32* nonnull %0, i64 %1) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca { i32*, i64 }, align 8
  %5 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %ptr, i32 0, i32 0
  store i32* %0, i32** %5, align 8
  %6 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %ptr, i32 0, i32 1
  store i64 %1, i64* %6, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %7 = invoke { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfd953f485a90e2b5E"({ i32*, i64 }* align 8 dereferenceable(16) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  %_5.0 = extractvalue { [0 x i32]*, i64 } %7, 0
  %_5.1 = extractvalue { [0 x i32]*, i64 } %7, 1
  %8 = mul i64 %_5.1, 4
  store i64 %8, i64* %3, align 8
  %size = load i64, i64* %3, align 8
  br label %bb2

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = extractvalue { i8*, i32 } %9, 0
  %11 = extractvalue { i8*, i32 } %9, 1
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 0
  store i8* %10, i8** %12, align 8
  %13 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  store i32 %11, i32* %13, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %14 = invoke { [0 x i32]*, i64 } @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17hfd953f485a90e2b5E"({ i32*, i64 }* align 8 dereferenceable(16) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  %_9.0 = extractvalue { [0 x i32]*, i64 } %14, 0
  %_9.1 = extractvalue { [0 x i32]*, i64 } %14, 1
  %15 = mul i64 %_9.1, 4
  store i64 4, i64* %2, align 8
  %align = load i64, i64* %2, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %16 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %16, 0
  %layout.1 = extractvalue { i64, i64 } %16, 1
  %17 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %ptr, i32 0, i32 0
  %_17.0 = load i32*, i32** %17, align 8, !nonnull !8
  %18 = getelementptr inbounds { i32*, i64 }, { i32*, i64 }* %ptr, i32 0, i32 1
  %_17.1 = load i64, i64* %18, align 8
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h24460321a73e549aE"(i32* nonnull %_17.0, i64 %_17.1)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %19 = bitcast { i8*, i32 }* %4 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %4, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb9:                                              ; preds = %bb8
  ret void
}

; alloc::alloc::box_free
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_ZN5alloc5alloc8box_free17hf590a1652b171c3bE(i64* nonnull %0) unnamed_addr #1 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %1 = alloca i64, align 8
  %2 = alloca i64, align 8
  %3 = alloca { i8*, i32 }, align 8
  %alloc = alloca %"alloc::alloc::Global", align 1
  %ptr = alloca i64*, align 8
  store i64* %0, i64** %ptr, align 8
; invoke core::ptr::unique::Unique<T>::as_ref
  %_5 = invoke align 8 dereferenceable(24) %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h804e3408c7685746E"(i64** align 8 dereferenceable(8) %ptr)
          to label %bb1 unwind label %cleanup

bb1:                                              ; preds = %start
  store i64 24, i64* %2, align 8
  %size = load i64, i64* %2, align 8
  br label %bb2

bb10:                                             ; preds = %cleanup
  br label %bb11

cleanup:                                          ; preds = %bb7, %bb6, %bb5, %bb4, %bb2, %start
  %4 = landingpad { i8*, i32 }
          cleanup
  %5 = extractvalue { i8*, i32 } %4, 0
  %6 = extractvalue { i8*, i32 } %4, 1
  %7 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 0
  store i8* %5, i8** %7, align 8
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  br label %bb10

bb2:                                              ; preds = %bb1
; invoke core::ptr::unique::Unique<T>::as_ref
  %_9 = invoke align 8 dereferenceable(24) %"std::io::error::Custom"* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ref17h804e3408c7685746E"(i64** align 8 dereferenceable(8) %ptr)
          to label %bb3 unwind label %cleanup

bb3:                                              ; preds = %bb2
  store i64 8, i64* %1, align 8
  %align = load i64, i64* %1, align 8
  br label %bb4

bb4:                                              ; preds = %bb3
; invoke core::alloc::layout::Layout::from_size_align_unchecked
  %9 = invoke { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 %align)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %layout.0 = extractvalue { i64, i64 } %9, 0
  %layout.1 = extractvalue { i64, i64 } %9, 1
  %_17 = load i64*, i64** %ptr, align 8, !nonnull !8
; invoke core::ptr::unique::Unique<T>::cast
  %_16 = invoke nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf106972347f7faf8E"(i64* nonnull %_17)
          to label %bb6 unwind label %cleanup

bb6:                                              ; preds = %bb5
; invoke <T as core::convert::Into<U>>::into
  %_15 = invoke nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_16)
          to label %bb7 unwind label %cleanup

bb7:                                              ; preds = %bb6
; invoke <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  invoke void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %alloc, i8* nonnull %_15, i64 %layout.0, i64 %layout.1)
          to label %bb8 unwind label %cleanup

bb8:                                              ; preds = %bb7
  br label %bb9

bb11:                                             ; preds = %bb10
  %10 = bitcast { i8*, i32 }* %3 to i8**
  %11 = load i8*, i8** %10, align 8
  %12 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %3, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = insertvalue { i8*, i32 } undef, i8* %11, 0
  %15 = insertvalue { i8*, i32 } %14, i32 %13, 1
  resume { i8*, i32 } %15

bb9:                                              ; preds = %bb8
  ret void
}

; alloc::raw_vec::RawVec<T,A>::current_memory
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h168e72451f8f6a99E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_13 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 16, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !9
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
  %7 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_9 = load i64, i64* %7, align 8
  %size = mul i64 16, %_9
; call core::alloc::layout::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 8)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i64*, i64 }* %self to i64**
  %_16 = load i64*, i64** %9, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h8f7586d274f75012E"(i64* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_15)
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
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha4b7c21e28979604E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
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
  %4 = load i8, i8* %_2, align 1, !range !9
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
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 1)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i8*, i64 }* %self to i8**
  %_16 = load i8*, i8** %9, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h4bd1c17473a01d8dE"(i8* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_15)
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
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hc59e24d165f369cbE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_13 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 8, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !9
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
  %7 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_9 = load i64, i64* %7, align 8
  %size = mul i64 8, %_9
; call core::alloc::layout::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 8)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i64*, i64 }* %self to i64**
  %_16 = load i64*, i64** %9, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17hf79a608fd740f897E"(i64* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_15)
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
define internal void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he5f02b592a48e03fE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %0, { i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_13 = alloca { i8*, { i64, i64 } }, align 8
  %_2 = alloca i8, align 1
  br label %bb4

bb4:                                              ; preds = %start
  %1 = icmp eq i64 16, 0
  br i1 %1, label %bb1, label %bb2

bb1:                                              ; preds = %bb4
  store i8 1, i8* %_2, align 1
  br label %bb3

bb2:                                              ; preds = %bb4
  %2 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_5 = load i64, i64* %2, align 8
  %_4 = icmp eq i64 %_5, 0
  %3 = zext i1 %_4 to i8
  store i8 %3, i8* %_2, align 1
  br label %bb3

bb3:                                              ; preds = %bb1, %bb2
  %4 = load i8, i8* %_2, align 1, !range !9
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
  %7 = getelementptr inbounds { i64*, i64 }, { i64*, i64 }* %self, i32 0, i32 1
  %_9 = load i64, i64* %7, align 8
  %size = mul i64 16, %_9
; call core::alloc::layout::Layout::from_size_align_unchecked
  %8 = call { i64, i64 } @_ZN4core5alloc6layout6Layout25from_size_align_unchecked17ha7beee7a9b038b31E(i64 %size, i64 8)
  %layout.0 = extractvalue { i64, i64 } %8, 0
  %layout.1 = extractvalue { i64, i64 } %8, 1
  br label %bb9

bb9:                                              ; preds = %bb8
  %9 = bitcast { i64*, i64 }* %self to i64**
  %_16 = load i64*, i64** %9, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::cast
  %_15 = call nonnull i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$4cast17h0e089315399d1f62E"(i64* nonnull %_16)
  br label %bb10

bb10:                                             ; preds = %bb9
; call <T as core::convert::Into<U>>::into
  %_14 = call nonnull i8* @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h10d8a43a0baa551cE"(i8* nonnull %_15)
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

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { i8*, i64 }* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h2783ddd15db4cf7eE"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call { i8*, i64 }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17h3399302d36c552c3E"(i64* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret { i8*, i64 }* %1
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal { {}*, [3 x i64]* }* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h31fb60f73536d33bE"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call { {}*, [3 x i64]* }* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hee30d7d8690b684cE"(i64* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret { {}*, [3 x i64]* }* %1
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17h35073fa4ff50dba1E"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to i8**
  %_2 = load i8*, i8** %0, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8* @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17hd1ed3c26fb28268cE"(i8* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8* %1
}

; alloc::raw_vec::RawVec<T,A>::ptr
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8** @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$3ptr17hed399bcd4362471fE"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i64*, i64 }* %self to i64**
  %_2 = load i64*, i64** %0, align 8, !nonnull !8
; call core::ptr::unique::Unique<T>::as_ptr
  %1 = call i8** @"_ZN4core3ptr6unique15Unique$LT$T$GT$6as_ptr17he6d2b2fcab365ab5E"(i64* nonnull %_2)
  br label %bb1

bb1:                                              ; preds = %start
  ret i8** %1
}

; <alloc::alloc::Global as core::alloc::Allocator>::deallocate
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %self, i8* nonnull %ptr, i64 %0, i64 %1) unnamed_addr #1 {
start:
  %layout = alloca { i64, i64 }, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  store i64 %0, i64* %2, align 8
  %3 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  store i64 %1, i64* %3, align 8
; call core::alloc::layout::Layout::size
  %_4 = call i64 @_ZN4core5alloc6layout6Layout4size17h524543aeb6548ce3E({ i64, i64 }* align 8 dereferenceable(16) %layout)
  br label %bb1

bb1:                                              ; preds = %start
  %4 = icmp eq i64 %_4, 0
  br i1 %4, label %bb5, label %bb2

bb5:                                              ; preds = %bb1
  br label %bb6

bb2:                                              ; preds = %bb1
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_6 = call i8* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17h38ce35e994a9b731E"(i8* nonnull %ptr)
  br label %bb3

bb3:                                              ; preds = %bb2
  %5 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 0
  %_8.0 = load i64, i64* %5, align 8
  %6 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %layout, i32 0, i32 1
  %_8.1 = load i64, i64* %6, align 8, !range !10
; call alloc::alloc::dealloc
  call void @_ZN5alloc5alloc7dealloc17hb3b0ce5498584f7eE(i8* %_6, i64 %_8.0, i64 %_8.1)
  br label %bb4

bb4:                                              ; preds = %bb3
  br label %bb6

bb6:                                              ; preds = %bb5, %bb4
  ret void
}

; <alloc::string::String as core::ops::deref::Deref>::deref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h787e3f32d3efdbf8E"(%"alloc::string::String"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %_5 = bitcast %"alloc::string::String"* %self to %"alloc::vec::Vec<u8>"*
; call <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
  %0 = call { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3ebc310d5fad98bcE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %_5)
  %_3.0 = extractvalue { [0 x i8]*, i64 } %0, 0
  %_3.1 = extractvalue { [0 x i8]*, i64 } %0, 1
  br label %bb1

bb1:                                              ; preds = %start
; call core::str::converts::from_utf8_unchecked
  %1 = call { [0 x i8]*, i64 } @_ZN4core3str8converts19from_utf8_unchecked17h5cb46599a852364aE([0 x i8]* nonnull align 1 %_3.0, i64 %_3.1)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; <std::ffi::c_str::CString as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN66_$LT$std..ffi..c_str..CString$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7b4e6bbe2dc2d1aaE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = bitcast { i8*, i64 }* %self to { [0 x i8]*, i64 }*
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 0
  %_3.0 = load [0 x i8]*, [0 x i8]** %1, align 8, !nonnull !8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %0, i32 0, i32 1
  %_3.1 = load i64, i64* %2, align 8
; call core::slice::<impl [T]>::get_unchecked_mut
  %_2 = call align 1 dereferenceable(1) i8* @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$17get_unchecked_mut17hcce8050cf2f4beacE"([0 x i8]* nonnull align 1 %_3.0, i64 %_3.1, i64 0)
  br label %bb1

bb1:                                              ; preds = %start
  store i8 0, i8* %_2, align 1
  ret void
}

; <std::process::ExitCode as std::process::Termination>::report
; Function Attrs: inlinehint nonlazybind uwtable
define internal i32 @"_ZN68_$LT$std..process..ExitCode$u20$as$u20$std..process..Termination$GT$6report17h300cdf2a6e77ec92E"(i8 %0) unnamed_addr #1 {
start:
  %self = alloca i8, align 1
  store i8 %0, i8* %self, align 1
; call std::sys::unix::process::process_common::ExitCode::as_i32
  %1 = call i32 @_ZN3std3sys4unix7process14process_common8ExitCode6as_i3217h7fc4ea2fd52c37c3E(i8* align 1 dereferenceable(1) %self)
  br label %bb1

bb1:                                              ; preds = %start
  ret i32 %1
}

; <std::os::fd::owned::OwnedFd as core::ops::drop::Drop>::drop
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN69_$LT$std..os..fd..owned..OwnedFd$u20$as$u20$core..ops..drop..Drop$GT$4drop17hb781a99c7e96c762E"(i32* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %_3 = load i32, i32* %self, align 4
  %_2 = call i32 @close(i32 %_3)
  br label %bb1

bb1:                                              ; preds = %start
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h611d870ceededbcfE"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call { {}*, [3 x i64]* }* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h59bdd2977eea6ba3E"(%"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>", %"alloc::vec::Vec<alloc::boxed::Box<dyn core::ops::function::FnMut() -> core::result::Result<(), std::io::error::Error> + core::marker::Send + core::marker::Sync>>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x { {}*, [3 x i64]* }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h36e8c05943e8543dE({ {}*, [3 x i64]* }* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x { {}*, [3 x i64]* }]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::drop_in_place<[alloc::boxed::Box<dyn core::ops::function::FnMut<()>+Output = core::result::Result<(),std::io::error::Error>+core::marker::Send+core::marker::Sync>]>
  call void @"_ZN4core3ptr238drop_in_place$LT$$u5b$alloc..boxed..Box$LT$dyn$u20$core..ops..function..FnMut$LT$$LP$$RP$$GT$$u2b$Output$u20$$u3d$$u20$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$u2b$core..marker..Send$u2b$core..marker..Sync$GT$$u5d$$GT$17h235f01aa8df138e4E"([0 x { {}*, [3 x i64]* }]* %_2.0, i64 %_2.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h76cf9a8aa5c17269E"(%"alloc::vec::Vec<*const i8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i8** @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h816593b104e3fa1dE"(%"alloc::vec::Vec<*const i8>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<*const i8>", %"alloc::vec::Vec<*const i8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i8*]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h4f19338e6b07185fE(i8** %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8*]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8*]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h9bc020eb8214f930E"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call { i8*, i64 }* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h16da32b3706d0f9fE"(%"alloc::vec::Vec<std::ffi::c_str::CString>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<std::ffi::c_str::CString>", %"alloc::vec::Vec<std::ffi::c_str::CString>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x { i8*, i64 }]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17h5a1f4397bbaf4eabE({ i8*, i64 }* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x { i8*, i64 }]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::ptr::drop_in_place<[std::ffi::c_str::CString]>
  call void @"_ZN4core3ptr55drop_in_place$LT$$u5b$std..ffi..c_str..CString$u5d$$GT$17ha5c36145151522d9E"([0 x { i8*, i64 }]* %_2.0, i64 %_2.1)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd0ab2afc1333a572E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_mut_ptr
  %_3 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$10as_mut_ptr17h73a5550a1ed1cfa5E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_5 = load i64, i64* %0, align 8
; call core::ptr::slice_from_raw_parts_mut
  %1 = call { [0 x i8]*, i64 } @_ZN4core3ptr24slice_from_raw_parts_mut17hd630885702ab707dE(i8* %_3, i64 %_5)
  %_2.0 = extractvalue { [0 x i8]*, i64 } %1, 0
  %_2.1 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::vec::Vec<T,A> as core::ops::deref::Deref>::deref
; Function Attrs: nonlazybind uwtable
define internal { [0 x i8]*, i64 } @"_ZN72_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h3ebc310d5fad98bcE"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
; call alloc::vec::Vec<T,A>::as_ptr
  %_2 = call i8* @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6as_ptr17h4db76eb6028335d8E"(%"alloc::vec::Vec<u8>"* align 8 dereferenceable(24) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = getelementptr inbounds %"alloc::vec::Vec<u8>", %"alloc::vec::Vec<u8>"* %self, i32 0, i32 1
  %_4 = load i64, i64* %0, align 8
; call core::slice::raw::from_raw_parts
  %1 = call { [0 x i8]*, i64 } @_ZN4core5slice3raw14from_raw_parts17h3a0418ea29930fd1E(i8* %_2, i64 %_4)
  %2 = extractvalue { [0 x i8]*, i64 } %1, 0
  %3 = extractvalue { [0 x i8]*, i64 } %1, 1
  br label %bb2

bb2:                                              ; preds = %bb1
  %4 = insertvalue { [0 x i8]*, i64 } undef, [0 x i8]* %2, 0
  %5 = insertvalue { [0 x i8]*, i64 } %4, i64 %3, 1
  ret { [0 x i8]*, i64 } %5
}

; <core::option::Option<T> as core::ops::try_trait::Try>::branch
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN75_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h01fb8c4a09e73217E"(%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture sret(%"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>") dereferenceable(32) %0, %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* noalias nocapture dereferenceable(32) %self) unnamed_addr #1 {
start:
  %_4 = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %v = alloca %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %1 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %self to i64*
  %2 = load i64, i64* %1, align 8, !range !73
  %3 = sub i64 %2, 2
  %4 = icmp eq i64 %3, 0
  %_2 = select i1 %4, i64 0, i64 1
  switch i64 %_2, label %bb2 [
    i64 0, label %bb1
    i64 1, label %bb3
  ]

bb2:                                              ; preds = %start
  unreachable

bb1:                                              ; preds = %start
  %5 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %0 to i64*
  store i64 2, i64* %5, align 8
  br label %bb4

bb3:                                              ; preds = %start
  %6 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %self to %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"*
  %7 = bitcast %"core::option::Option<alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Some"* %6 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %8 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %v to i8*
  %9 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 32, i1 false)
  %10 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4 to i8*
  %11 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %v to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 32, i1 false)
  %12 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>"* %0 to %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Continue"*
  %13 = bitcast %"core::ops::control_flow::ControlFlow<core::option::Option<core::convert::Infallible>, alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>>::Continue"* %12 to %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"*
  %14 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %13 to i8*
  %15 = bitcast %"alloc::collections::btree::navigate::LazyLeafHandle<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %_4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 32, i1 false)
  br label %bb4

bb4:                                              ; preds = %bb1, %bb3
  ret void
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8** @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$13get_unchecked17hb218084f845f444cE"(i64 %self, [0 x i8*]* %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca i8**, align 8
; call core::ptr::const_ptr::<impl *const [T]>::as_ptr
  %_3 = call i8** @"_ZN4core3ptr9const_ptr43_$LT$impl$u20$$BP$const$u20$$u5b$T$u5d$$GT$6as_ptr17hca47e72daa22ad98E"([0 x i8*]* %slice.0, i64 %slice.1)
  br label %bb1

bb1:                                              ; preds = %start
  %1 = getelementptr inbounds i8*, i8** %_3, i64 %self
  store i8** %1, i8*** %0, align 8
  %2 = load i8**, i8*** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8** %2
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17h6c5f03ffaea33587E"(i64 %self, [0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"*, align 8
  %1 = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"]* %slice.0 to %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>", %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* %1, i64 %self
  store %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* %2, %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"** %0, align 8
  %_3.i = load %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"*, %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"core::mem::maybe_uninit::MaybeUninit<std::ffi::os_str::OsString>"* %_3.i
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hb0b2f13a6470653bE"(i64 %self, [0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"*, align 8
  %1 = bitcast [0 x %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"]* %slice.0 to %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>", %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* %1, i64 %self
  store %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* %2, %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"** %0, align 8
  %_3.i = load %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"*, %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret %"core::mem::maybe_uninit::MaybeUninit<core::option::Option<std::ffi::os_str::OsString>>"* %_3.i
}

; <usize as core::slice::index::SliceIndex<[T]>>::get_unchecked_mut
; Function Attrs: inlinehint nonlazybind uwtable
define internal i8* @"_ZN75_$LT$usize$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$17get_unchecked_mut17hc4681402a00f73d1E"(i64 %self, [0 x i8]* %slice.0, i64 %slice.1) unnamed_addr #1 {
start:
  %0 = alloca i8*, align 8
  %1 = bitcast [0 x i8]* %slice.0 to i8*
  br label %bb1

bb1:                                              ; preds = %start
  %2 = getelementptr inbounds i8, i8* %1, i64 %self
  store i8* %2, i8** %0, align 8
  %_3.i = load i8*, i8** %0, align 8
  br label %bb2

bb2:                                              ; preds = %bb1
  ret i8* %_3.i
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h8ead766496d29c8bE"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17h168e72451f8f6a99E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i64*, i64 }* align 8 dereferenceable(16) %self)
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
  %ptr = load i8*, i8** %6, align 8, !nonnull !8
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hce955083615d2d9fE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17ha4b7c21e28979604E"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i8*, i64 }* align 8 dereferenceable(16) %self)
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
  %ptr = load i8*, i8** %6, align 8, !nonnull !8
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10
  %_7 = bitcast { i8*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd2d12204e01dad91E"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17hc59e24d165f369cbE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i64*, i64 }* align 8 dereferenceable(16) %self)
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
  %ptr = load i8*, i8** %6, align 8, !nonnull !8
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <alloc::raw_vec::RawVec<T,A> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17he33d13827f24ac21E"({ i64*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #0 {
start:
  %_2 = alloca %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>", align 8
; call alloc::raw_vec::RawVec<T,A>::current_memory
  call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$14current_memory17he5f02b592a48e03fE"(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* noalias nocapture sret(%"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>") dereferenceable(24) %_2, { i64*, i64 }* align 8 dereferenceable(16) %self)
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
  %ptr = load i8*, i8** %6, align 8, !nonnull !8
  %7 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>"* %_2 to %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"*
  %8 = bitcast %"core::option::Option<(core::ptr::non_null::NonNull<u8>, core::alloc::layout::Layout)>::Some"* %7 to { i8*, { i64, i64 } }*
  %9 = getelementptr inbounds { i8*, { i64, i64 } }, { i8*, { i64, i64 } }* %8, i32 0, i32 1
  %10 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 0
  %layout.0 = load i64, i64* %10, align 8
  %11 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %9, i32 0, i32 1
  %layout.1 = load i64, i64* %11, align 8, !range !10
  %_7 = bitcast { i64*, i64 }* %self to %"alloc::alloc::Global"*
; call <alloc::alloc::Global as core::alloc::Allocator>::deallocate
  call void @"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h62cc5e5bb0b9f4b0E"(%"alloc::alloc::Global"* nonnull align 1 %_7, i8* nonnull %ptr, i64 %layout.0, i64 %layout.1)
  br label %bb3

bb4:                                              ; preds = %bb3, %bb1
  ret void

bb3:                                              ; preds = %bb2
  br label %bb4
}

; <std::path::Path as core::convert::AsRef<std::path::Path>>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::path::Path"*, i64 } @"_ZN79_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..path..Path$GT$$GT$6as_ref17hb1ab4102b86bca57E"(%"std::path::Path"* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { %"std::path::Path"*, i64 } undef, %"std::path::Path"* %self.0, 0
  %1 = insertvalue { %"std::path::Path"*, i64 } %0, i64 %self.1, 1
  ret { %"std::path::Path"*, i64 } %1
}

; <core::option::Option<T> as core::ops::try_trait::FromResidual>::from_residual
; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN84_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..ops..try_trait..FromResidual$GT$13from_residual17hb9cde76c19eee81fE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>") dereferenceable(24) %0) unnamed_addr #1 {
start:
  %1 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::Leaf>, alloc::collections::btree::node::marker::Edge>>"* %0, i32 0, i32 1
  store {}* null, {}** %1, align 8
  ret void
}

; <std::path::Path as core::convert::AsRef<std::ffi::os_str::OsStr>>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN87_$LT$std..path..Path$u20$as$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$GT$6as_ref17hef1c817df61ad700E"(%"std::path::Path"* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = mul i64 %self.1, 1
  %1 = add i64 0, %0
  %2 = add i64 %1, 0
  %3 = add i64 0, %2
  %4 = add i64 %3, 0
  %5 = bitcast %"std::path::Path"* %self.0 to i8*
  %6 = getelementptr i8, i8* %5, i64 0
  %7 = bitcast i8* %6 to %"std::ffi::os_str::OsStr"*
  %8 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %7, 0
  %9 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %8, i64 %self.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %9
}

; <core::slice::iter::Iter<T> as core::iter::traits::iterator::Iterator>::next
; Function Attrs: inlinehint nonlazybind uwtable
define internal align 8 dereferenceable_or_null(16) i64* @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h53af9fdeeb8fb827E"({ i64*, i64* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca { [0 x i8]*, i64 }*, align 8
  %1 = alloca { [0 x i8]*, i64 }*, align 8
  %2 = alloca i64*, align 8
  %3 = bitcast { i64*, i64* }* %self to i64**
  %_6 = load i64*, i64** %3, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_5 = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfac7eda727aaa2afE"(i64* nonnull %_6)
  br label %bb1

bb1:                                              ; preds = %start
; call core::ptr::mut_ptr::<impl *mut T>::is_null
  %_4 = call zeroext i1 @"_ZN4core3ptr7mut_ptr31_$LT$impl$u20$$BP$mut$u20$T$GT$7is_null17hefc5581b98e24a7fE"({ [0 x i8]*, i64 }* %_5)
  br label %bb2

bb2:                                              ; preds = %bb1
  %_3 = xor i1 %_4, true
  call void @llvm.assume(i1 %_3)
  br label %bb3

bb3:                                              ; preds = %bb2
  br label %bb4

bb4:                                              ; preds = %bb3
  %4 = icmp eq i64 16, 0
  br i1 %4, label %bb8, label %bb5

bb8:                                              ; preds = %bb4
  br label %bb9

bb5:                                              ; preds = %bb4
  %5 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %6 = bitcast i64** %5 to { [0 x i8]*, i64 }**
  %_11 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %6, align 8
; call core::ptr::const_ptr::<impl *const T>::is_null
  %_10 = call zeroext i1 @"_ZN4core3ptr9const_ptr33_$LT$impl$u20$$BP$const$u20$T$GT$7is_null17h9e44fece413638e1E"({ [0 x i8]*, i64 }* %_11)
  br label %bb6

bb6:                                              ; preds = %bb5
  %_9 = xor i1 %_10, true
  call void @llvm.assume(i1 %_9)
  br label %bb7

bb7:                                              ; preds = %bb6
  br label %bb9

bb9:                                              ; preds = %bb8, %bb7
  %7 = bitcast { i64*, i64* }* %self to i64**
  %_15 = load i64*, i64** %7, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_14 = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfac7eda727aaa2afE"(i64* nonnull %_15)
  br label %bb10

bb10:                                             ; preds = %bb9
  %8 = getelementptr inbounds { i64*, i64* }, { i64*, i64* }* %self, i32 0, i32 1
  %9 = bitcast i64** %8 to { [0 x i8]*, i64 }**
  %_16 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %9, align 8
  %_12 = icmp eq { [0 x i8]*, i64 }* %_14, %_16
  br i1 %_12, label %bb11, label %bb12

bb12:                                             ; preds = %bb10
  %10 = bitcast { i64*, i64* }* %self to i64**
  %_12.i = load i64*, i64** %10, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %old.i = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfac7eda727aaa2afE"(i64* nonnull %_12.i)
  %11 = bitcast { i64*, i64* }* %self to i64**
  %_16.i = load i64*, i64** %11, align 8, !nonnull !8
; call core::ptr::non_null::NonNull<T>::as_ptr
  %_15.i = call { [0 x i8]*, i64 }* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$6as_ptr17hfac7eda727aaa2afE"(i64* nonnull %_16.i)
  %12 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %_15.i, i64 1
  store { [0 x i8]*, i64 }* %12, { [0 x i8]*, i64 }** %0, align 8
  %_3.i.i = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %0, align 8
; call core::ptr::non_null::NonNull<T>::new_unchecked
  %_13.i = call nonnull i64* @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$13new_unchecked17h3711560fb3466bfdE"({ [0 x i8]*, i64 }* %_3.i.i)
  %13 = bitcast { i64*, i64* }* %self to i64**
  store i64* %_13.i, i64** %13, align 8
  store { [0 x i8]*, i64 }* %old.i, { [0 x i8]*, i64 }** %1, align 8
  %14 = load { [0 x i8]*, i64 }*, { [0 x i8]*, i64 }** %1, align 8
  br label %bb13

bb11:                                             ; preds = %bb10
  %15 = bitcast i64** %2 to {}**
  store {}* null, {}** %15, align 8
  br label %bb14

bb14:                                             ; preds = %bb13, %bb11
  %16 = load i64*, i64** %2, align 8
  ret i64* %16

bb13:                                             ; preds = %bb12
  %17 = bitcast i64** %2 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %14, { [0 x i8]*, i64 }** %17, align 8
  br label %bb14
}

; <alloc::collections::btree::map::BTreeMap<K,V> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN95_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc57a40bb97f9d5efE"(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(24) %self) unnamed_addr #0 {
start:
  %_3 = alloca %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
  %_2 = alloca %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>", align 8
; call core::ptr::read
  call void @_ZN4core3ptr4read17h275ab10500d25c06E(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(24) %_3, %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self)
  br label %bb1

bb1:                                              ; preds = %start
; call <alloc::collections::btree::map::BTreeMap<K,V> as core::iter::traits::collect::IntoIterator>::into_iter
  call void @"_ZN115_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17habafdac253f91bc9E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture sret(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>") dereferenceable(72) %_2, %"alloc::collections::btree::map::BTreeMap<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture dereferenceable(24) %_3)
  br label %bb2

bb2:                                              ; preds = %bb1
; call core::mem::drop
  call void @_ZN4core3mem4drop17hf7c62f846d3863e2E(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* noalias nocapture dereferenceable(72) %_2)
  br label %bb3

bb3:                                              ; preds = %bb2
  ret void
}

; <alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
define internal void @"_ZN95_$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h249287db843d4796E"(%"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(72) %self) unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_12 = alloca i8, align 1
  %_9 = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %guard = alloca i64*, align 8
  %kv = alloca %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>", align 8
  %_2 = alloca %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", align 8
  store i8 0, i8* %_12, align 1
  br label %bb1

bb1:                                              ; preds = %bb5, %start
; call alloc::collections::btree::map::IntoIter<K,V>::dying_next
  call void @"_ZN5alloc11collections5btree3map21IntoIter$LT$K$C$V$GT$10dying_next17h9024bd3ec2a135beE"(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* noalias nocapture sret(%"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>") dereferenceable(24) %_2, %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* align 8 dereferenceable(72) %self)
  br label %bb2

bb2:                                              ; preds = %bb1
  %1 = getelementptr inbounds %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>", %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_2, i32 0, i32 1
  %2 = load {}*, {}** %1, align 8
  %3 = icmp eq {}* %2, null
  %_4 = select i1 %3, i64 0, i64 1
  %4 = icmp eq i64 %_4, 1
  br i1 %4, label %bb3, label %bb6

bb3:                                              ; preds = %bb2
  %5 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>"* %_2 to %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"*
  %6 = bitcast %"core::option::Option<alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>>::Some"* %5 to %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"*
  %7 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  %8 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 24, i1 false)
  store i8 1, i8* %_12, align 1
  %9 = bitcast i64** %guard to %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"**
  store %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"* %self, %"alloc::collections::btree::map::IntoIter<std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>>"** %9, align 8
  %10 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %_9 to i8*
  %11 = bitcast %"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* %kv to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 24, i1 false)
; invoke alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying,K,V,NodeType>,alloc::collections::btree::node::marker::KV>::drop_key_val
  invoke void @"_ZN5alloc11collections5btree4node173Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$NodeType$GT$$C$alloc..collections..btree..node..marker..KV$GT$12drop_key_val17h7ca9a627ad296dd4E"(%"alloc::collections::btree::node::Handle<alloc::collections::btree::node::NodeRef<alloc::collections::btree::node::marker::Dying, std::ffi::os_str::OsString, core::option::Option<std::ffi::os_str::OsString>, alloc::collections::btree::node::marker::LeafOrInternal>, alloc::collections::btree::node::marker::KV>"* noalias nocapture dereferenceable(24) %_9)
          to label %bb4 unwind label %cleanup

bb6:                                              ; preds = %bb2
  ret void

bb4:                                              ; preds = %bb3
  store i8 0, i8* %_12, align 1
  %_11 = load i64*, i64** %guard, align 8, !nonnull !8
; invoke core::mem::forget
  invoke void @_ZN4core3mem6forget17h5860663d941616e9E(i64* align 8 dereferenceable(72) %_11)
          to label %bb5 unwind label %cleanup

bb9:                                              ; preds = %cleanup
  %12 = load i8, i8* %_12, align 1, !range !9
  %13 = trunc i8 %12 to i1
  br i1 %13, label %bb8, label %bb7

cleanup:                                          ; preds = %bb4, %bb3
  %14 = landingpad { i8*, i32 }
          cleanup
  %15 = extractvalue { i8*, i32 } %14, 0
  %16 = extractvalue { i8*, i32 } %14, 1
  %17 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %15, i8** %17, align 8
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %16, i32* %18, align 8
  br label %bb9

bb5:                                              ; preds = %bb4
  store i8 0, i8* %_12, align 1
  br label %bb1

bb7:                                              ; preds = %bb8, %bb9
  %19 = bitcast { i8*, i32 }* %0 to i8**
  %20 = load i8*, i8** %19, align 8
  %21 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = insertvalue { i8*, i32 } undef, i8* %20, 0
  %24 = insertvalue { i8*, i32 } %23, i32 %22, 1
  resume { i8*, i32 } %24

bb8:                                              ; preds = %bb9
; call core::ptr::drop_in_place<<alloc::collections::btree::map::IntoIter<K,V> as core::ops::drop::Drop>::drop::DropGuard<std::ffi::os_str::OsString,core::option::Option<std::ffi::os_str::OsString>>>
  call void @"_ZN4core3ptr223drop_in_place$LT$$LT$alloc..collections..btree..map..IntoIter$LT$K$C$V$GT$$u20$as$u20$core..ops..drop..Drop$GT$..drop..DropGuard$LT$std..ffi..os_str..OsString$C$core..option..Option$LT$std..ffi..os_str..OsString$GT$$GT$$GT$17hbc93ea7af0008604E"(i64** %guard) #10
  br label %bb7
}

; <std::ffi::os_str::OsStr as core::convert::AsRef<std::ffi::os_str::OsStr>>::as_ref
; Function Attrs: inlinehint nonlazybind uwtable
define internal { %"std::ffi::os_str::OsStr"*, i64 } @"_ZN95_$LT$std..ffi..os_str..OsStr$u20$as$u20$core..convert..AsRef$LT$std..ffi..os_str..OsStr$GT$$GT$6as_ref17h269868daed2eaaa7E"(%"std::ffi::os_str::OsStr"* nonnull align 1 %self.0, i64 %self.1) unnamed_addr #1 {
start:
  %0 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } undef, %"std::ffi::os_str::OsStr"* %self.0, 0
  %1 = insertvalue { %"std::ffi::os_str::OsStr"*, i64 } %0, i64 %self.1, 1
  ret { %"std::ffi::os_str::OsStr"*, i64 } %1
}

; build_script_build::main
; Function Attrs: nonlazybind uwtable
define internal void @_ZN18build_script_build4main17h819b899e7c1a58f7E() unnamed_addr #0 personality i32 (i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*)* @rust_eh_personality {
start:
  %0 = alloca { i8*, i32 }, align 8
  %_66 = alloca %"core::fmt::Arguments", align 8
  %_57 = alloca %"core::fmt::Arguments", align 8
  %_50 = alloca i64*, align 8
  %_49 = alloca [1 x { i8*, i64* }], align 8
  %_42 = alloca %"core::fmt::Arguments", align 8
  %_38 = alloca { %"std::path::Path"*, i64 }, align 8
  %_35 = alloca %"std::process::Command", align 8
  %_29 = alloca %"core::result::Result<std::process::ExitStatus, std::io::error::Error>", align 8
  %_22 = alloca i64*, align 8
  %_21 = alloca [1 x { i8*, i64* }], align 8
  %_14 = alloca %"core::fmt::Arguments", align 8
  %res = alloca %"alloc::string::String", align 8
  %_12 = alloca %"alloc::string::String", align 8
  %_9 = alloca %"std::process::Command", align 8
  %_3 = alloca %"core::result::Result<std::process::ExitStatus, std::io::error::Error>", align 8
  %out_dir = alloca { [0 x i8]*, i64 }, align 8
  %1 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %out_dir, i32 0, i32 0
  store [0 x i8]* bitcast (<{ [3 x i8] }>* @alloc28 to [0 x i8]*), [0 x i8]** %1, align 8
  %2 = getelementptr inbounds { [0 x i8]*, i64 }, { [0 x i8]*, i64 }* %out_dir, i32 0, i32 1
  store i64 3, i64* %2, align 8
; call std::process::Command::new
  call void @_ZN3std7process7Command3new17hf0eaddd09feb1f27E(%"std::process::Command"* noalias nocapture sret(%"std::process::Command") dereferenceable(200) %_9, [0 x i8]* nonnull align 1 bitcast (<{ [7 x i8] }>* @alloc103 to [0 x i8]*), i64 7)
  br label %bb1

bb1:                                              ; preds = %start
; invoke std::process::Command::args
  %_7 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command4args17h79200e129226803eE(%"std::process::Command"* align 8 dereferenceable(200) %_9, [5 x { [0 x i8]*, i64 }]* align 8 dereferenceable(80) bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc10 to [5 x { [0 x i8]*, i64 }]*))
          to label %bb2 unwind label %cleanup

bb2:                                              ; preds = %bb1
  %3 = bitcast i64** %_22 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* %out_dir, { [0 x i8]*, i64 }** %3, align 8
  %_args = load i64*, i64** %_22, align 8, !nonnull !8
  %_26 = bitcast i64* %_args to { [0 x i8]*, i64 }*
; invoke core::fmt::ArgumentV1::new
  %4 = invoke { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h667cdc2e451b5a6dE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %_26, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb8e796f6bde7428cE")
          to label %bb3 unwind label %cleanup

bb27:                                             ; preds = %bb26, %cleanup
; call core::ptr::drop_in_place<std::process::Command>
  call void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h67437dcc678cfeceE"(%"std::process::Command"* %_9) #10
  br label %bb28

cleanup:                                          ; preds = %bb8, %bb4, %bb3, %bb2, %bb1
  %5 = landingpad { i8*, i32 }
          cleanup
  %6 = extractvalue { i8*, i32 } %5, 0
  %7 = extractvalue { i8*, i32 } %5, 1
  %8 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %6, i8** %8, align 8
  %9 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %7, i32* %9, align 8
  br label %bb27

bb3:                                              ; preds = %bb2
  %_25.0 = extractvalue { i8*, i64* } %4, 0
  %_25.1 = extractvalue { i8*, i64* } %4, 1
  %10 = bitcast [1 x { i8*, i64* }]* %_21 to { i8*, i64* }*
  %11 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 0
  store i8* %_25.0, i8** %11, align 8
  %12 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %10, i32 0, i32 1
  store i64* %_25.1, i64** %12, align 8
  %_18.0 = bitcast [1 x { i8*, i64* }]* %_21 to [0 x { i8*, i64* }]*
; invoke core::fmt::Arguments::new_v1
  invoke void @_ZN4core3fmt9Arguments6new_v117hb08dc7d5e9fd9b66E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_14, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc13 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_18.0, i64 1)
          to label %bb4 unwind label %cleanup

bb4:                                              ; preds = %bb3
; invoke alloc::fmt::format
  invoke void @_ZN5alloc3fmt6format17hcd0bdb8070c69bf3E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24) %res, %"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_14)
          to label %bb5 unwind label %cleanup

bb5:                                              ; preds = %bb4
  %13 = bitcast %"alloc::string::String"* %_12 to i8*
  %14 = bitcast %"alloc::string::String"* %res to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 24, i1 false)
; invoke std::process::Command::arg
  %_5 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command3arg17hb12ee4c981eff6ceE(%"std::process::Command"* align 8 dereferenceable(200) %_7, %"alloc::string::String"* align 8 dereferenceable(24) %_12)
          to label %bb6 unwind label %cleanup1

bb6:                                              ; preds = %bb5
; invoke std::process::Command::status
  invoke void @_ZN3std7process7Command6status17h9b1e07181360821dE(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture sret(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>") dereferenceable(24) %_3, %"std::process::Command"* align 8 dereferenceable(200) %_5)
          to label %bb7 unwind label %cleanup1

bb26:                                             ; preds = %cleanup1
; call core::ptr::drop_in_place<alloc::string::String>
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17head2a4d4be799173E"(%"alloc::string::String"* %_12) #10
  br label %bb27

cleanup1:                                         ; preds = %bb7, %bb6, %bb5
  %15 = landingpad { i8*, i32 }
          cleanup
  %16 = extractvalue { i8*, i32 } %15, 0
  %17 = extractvalue { i8*, i32 } %15, 1
  %18 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %16, i8** %18, align 8
  %19 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %17, i32* %19, align 8
  br label %bb26

bb7:                                              ; preds = %bb6
; invoke core::result::Result<T,E>::unwrap
  %_2 = invoke i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b091428e2da39afE"(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture dereferenceable(24) %_3, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc105 to %"core::panic::location::Location"*))
          to label %bb8 unwind label %cleanup1

bb8:                                              ; preds = %bb7
; invoke core::ptr::drop_in_place<alloc::string::String>
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17head2a4d4be799173E"(%"alloc::string::String"* %_12)
          to label %bb9 unwind label %cleanup

bb9:                                              ; preds = %bb8
; call core::ptr::drop_in_place<std::process::Command>
  call void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h67437dcc678cfeceE"(%"std::process::Command"* %_9)
  br label %bb10

bb28:                                             ; preds = %bb25, %bb27
  %20 = bitcast { i8*, i32 }* %0 to i8**
  %21 = load i8*, i8** %20, align 8
  %22 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = insertvalue { i8*, i32 } undef, i8* %21, 0
  %25 = insertvalue { i8*, i32 } %24, i32 %23, 1
  resume { i8*, i32 } %25

bb10:                                             ; preds = %bb9
; call std::process::Command::new
  call void @_ZN3std7process7Command3new17hf0eaddd09feb1f27E(%"std::process::Command"* noalias nocapture sret(%"std::process::Command") dereferenceable(200) %_35, [0 x i8]* nonnull align 1 bitcast (<{ [2 x i8] }>* @alloc106 to [0 x i8]*), i64 2)
  br label %bb11

bb11:                                             ; preds = %bb10
; invoke std::process::Command::args
  %_33 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command4args17h9b1258da4b692e0fE(%"std::process::Command"* align 8 dereferenceable(200) %_35, [3 x { [0 x i8]*, i64 }]* align 8 dereferenceable(48) bitcast (<{ i8*, [8 x i8], i8*, [8 x i8], i8*, [8 x i8] }>* @alloc22 to [3 x { [0 x i8]*, i64 }]*))
          to label %bb12 unwind label %cleanup2

bb12:                                             ; preds = %bb11
; invoke std::path::Path::new
  %26 = invoke { %"std::path::Path"*, i64 } @_ZN3std4path4Path3new17h42ee6cfa432b08f9E({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %out_dir)
          to label %bb13 unwind label %cleanup2

bb25:                                             ; preds = %cleanup2
; call core::ptr::drop_in_place<std::process::Command>
  call void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h67437dcc678cfeceE"(%"std::process::Command"* %_35) #10
  br label %bb28

cleanup2:                                         ; preds = %bb15, %bb14, %bb13, %bb12, %bb11
  %27 = landingpad { i8*, i32 }
          cleanup
  %28 = extractvalue { i8*, i32 } %27, 0
  %29 = extractvalue { i8*, i32 } %27, 1
  %30 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 0
  store i8* %28, i8** %30, align 8
  %31 = getelementptr inbounds { i8*, i32 }, { i8*, i32 }* %0, i32 0, i32 1
  store i32 %29, i32* %31, align 8
  br label %bb25

bb13:                                             ; preds = %bb12
  store { %"std::path::Path"*, i64 } %26, { %"std::path::Path"*, i64 }* %_38, align 8
; invoke std::process::Command::current_dir
  %_31 = invoke align 8 dereferenceable(200) %"std::process::Command"* @_ZN3std7process7Command11current_dir17h714ef204f1a75e04E(%"std::process::Command"* align 8 dereferenceable(200) %_33, { %"std::path::Path"*, i64 }* align 8 dereferenceable(16) %_38)
          to label %bb14 unwind label %cleanup2

bb14:                                             ; preds = %bb13
; invoke std::process::Command::status
  invoke void @_ZN3std7process7Command6status17h9b1e07181360821dE(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture sret(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>") dereferenceable(24) %_29, %"std::process::Command"* align 8 dereferenceable(200) %_31)
          to label %bb15 unwind label %cleanup2

bb15:                                             ; preds = %bb14
; invoke core::result::Result<T,E>::unwrap
  %_28 = invoke i32 @"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h2b091428e2da39afE"(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture dereferenceable(24) %_29, %"core::panic::location::Location"* align 8 dereferenceable(24) bitcast (<{ i8*, [16 x i8] }>* @alloc108 to %"core::panic::location::Location"*))
          to label %bb16 unwind label %cleanup2

bb16:                                             ; preds = %bb15
; call core::ptr::drop_in_place<std::process::Command>
  call void @"_ZN4core3ptr42drop_in_place$LT$std..process..Command$GT$17h67437dcc678cfeceE"(%"std::process::Command"* %_35)
  br label %bb17

bb17:                                             ; preds = %bb16
  %32 = bitcast i64** %_50 to { [0 x i8]*, i64 }**
  store { [0 x i8]*, i64 }* bitcast (<{ i8*, [8 x i8] }>* @alloc29 to { [0 x i8]*, i64 }*), { [0 x i8]*, i64 }** %32, align 8
  %_args3 = load i64*, i64** %_50, align 8, !nonnull !8
  %_54 = bitcast i64* %_args3 to { [0 x i8]*, i64 }*
; call core::fmt::ArgumentV1::new
  %33 = call { i8*, i64* } @_ZN4core3fmt10ArgumentV13new17h667cdc2e451b5a6dE({ [0 x i8]*, i64 }* align 8 dereferenceable(16) %_54, i1 ({ [0 x i8]*, i64 }*, %"core::fmt::Formatter"*)* nonnull @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hb8e796f6bde7428cE")
  %_53.0 = extractvalue { i8*, i64* } %33, 0
  %_53.1 = extractvalue { i8*, i64* } %33, 1
  br label %bb18

bb18:                                             ; preds = %bb17
  %34 = bitcast [1 x { i8*, i64* }]* %_49 to { i8*, i64* }*
  %35 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 0
  store i8* %_53.0, i8** %35, align 8
  %36 = getelementptr inbounds { i8*, i64* }, { i8*, i64* }* %34, i32 0, i32 1
  store i64* %_53.1, i64** %36, align 8
  %_46.0 = bitcast [1 x { i8*, i64* }]* %_49 to [0 x { i8*, i64* }]*
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hb08dc7d5e9fd9b66E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_42, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8], i8*, [8 x i8] }>* @alloc25 to [0 x { [0 x i8]*, i64 }]*), i64 2, [0 x { i8*, i64* }]* nonnull align 8 %_46.0, i64 1)
  br label %bb19

bb19:                                             ; preds = %bb18
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_42)
  br label %bb20

bb20:                                             ; preds = %bb19
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hb08dc7d5e9fd9b66E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_57, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc34 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc41 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb21

bb21:                                             ; preds = %bb20
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_57)
  br label %bb22

bb22:                                             ; preds = %bb21
; call core::fmt::Arguments::new_v1
  call void @_ZN4core3fmt9Arguments6new_v117hb08dc7d5e9fd9b66E(%"core::fmt::Arguments"* noalias nocapture sret(%"core::fmt::Arguments") dereferenceable(48) %_66, [0 x { [0 x i8]*, i64 }]* nonnull align 8 bitcast (<{ i8*, [8 x i8] }>* @alloc39 to [0 x { [0 x i8]*, i64 }]*), i64 1, [0 x { i8*, i64* }]* nonnull align 8 bitcast (<{ [0 x i8] }>* @alloc41 to [0 x { i8*, i64* }]*), i64 0)
  br label %bb23

bb23:                                             ; preds = %bb22
; call std::io::stdio::_print
  call void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48) %_66)
  br label %bb24

bb24:                                             ; preds = %bb23
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nonlazybind uwtable
declare i32 @rust_eh_personality(i32, i32, i64, %"unwind::libunwind::_Unwind_Exception"*, %"unwind::libunwind::_Unwind_Context"*) unnamed_addr #0

; std::rt::lang_start_internal
; Function Attrs: nonlazybind uwtable
declare i64 @_ZN3std2rt19lang_start_internal17h75965f95c98f11d8E({}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), i64, i8**) unnamed_addr #0

; std::sys::unix::process::process_common::Command::cwd
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix7process14process_common7Command3cwd17haf50923600ab8befE(%"std::sys::unix::process::process_common::Command"* align 8 dereferenceable(200), %"std::ffi::os_str::OsStr"* nonnull align 1, i64) unnamed_addr #0

; std::sys::unix::process::process_common::Command::arg
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix7process14process_common7Command3arg17h81c66916bc915c6aE(%"std::sys::unix::process::process_common::Command"* align 8 dereferenceable(200), %"std::ffi::os_str::OsStr"* nonnull align 1, i64) unnamed_addr #0

; std::sys::unix::process::process_common::Command::new
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std3sys4unix7process14process_common7Command3new17h1e558472110c8f47E(%"std::sys::unix::process::process_common::Command"* noalias nocapture sret(%"std::sys::unix::process::process_common::Command") dereferenceable(200), %"std::ffi::os_str::OsStr"* nonnull align 1, i64) unnamed_addr #0

; <str as core::fmt::Display>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17h4fb653153270e40aE"([0 x i8]* nonnull align 1, i64, %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #0

; core::panicking::panic
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking5panic17hac91d6d33ac66361E([0 x i8]* nonnull align 1, i64, %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #5

; <alloc::collections::btree::mem::replace::PanicGuard as core::ops::drop::Drop>::drop
; Function Attrs: nonlazybind uwtable
declare void @"_ZN93_$LT$alloc..collections..btree..mem..replace..PanicGuard$u20$as$u20$core..ops..drop..Drop$GT$4drop17h765cebd554f135e0E"(%"alloc::collections::btree::mem::replace::PanicGuard"* nonnull align 1) unnamed_addr #0

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.assume(i1 noundef) #6

; <std::io::error::Error as core::fmt::Debug>::fmt
; Function Attrs: nonlazybind uwtable
declare zeroext i1 @"_ZN58_$LT$std..io..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h7ced4ac19d2a5261E"(%"std::io::error::Error"* align 8 dereferenceable(16), %"core::fmt::Formatter"* align 8 dereferenceable(64)) unnamed_addr #0

; core::result::unwrap_failed
; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17hddb26cddfa4f23d4E([0 x i8]* nonnull align 1, i64, {}* nonnull align 1, [3 x i64]* align 8 dereferenceable(24), %"core::panic::location::Location"* align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind nonlazybind uwtable
declare void @__rust_dealloc(i8*, i64, i64) unnamed_addr #7

; Function Attrs: nonlazybind uwtable
declare i32 @close(i32) unnamed_addr #0

; alloc::fmt::format
; Function Attrs: nonlazybind uwtable
declare void @_ZN5alloc3fmt6format17hcd0bdb8070c69bf3E(%"alloc::string::String"* noalias nocapture sret(%"alloc::string::String") dereferenceable(24), %"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #0

; std::process::Command::status
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std7process7Command6status17h9b1e07181360821dE(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>"* noalias nocapture sret(%"core::result::Result<std::process::ExitStatus, std::io::error::Error>") dereferenceable(24), %"std::process::Command"* align 8 dereferenceable(200)) unnamed_addr #0

; std::io::stdio::_print
; Function Attrs: nonlazybind uwtable
declare void @_ZN3std2io5stdio6_print17h68c20082d25e6dc7E(%"core::fmt::Arguments"* noalias nocapture dereferenceable(48)) unnamed_addr #0

; Function Attrs: nonlazybind
define i32 @main(i32 %0, i8** %1) unnamed_addr #8 {
top:
  %2 = sext i32 %0 to i64
; call std::rt::lang_start
  %3 = call i64 @_ZN3std2rt10lang_start17hc379b5df810145e1E(void ()* @_ZN18build_script_build4main17h819b899e7c1a58f7E, i64 %2, i8** %1)
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #6

attributes #0 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { inlinehint nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { noinline nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #3 = { inlinehint noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #4 = { argmemonly nofree nounwind willreturn }
attributes #5 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #6 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #7 = { nounwind nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #8 = { nonlazybind "target-cpu"="x86-64" }
attributes #9 = { noreturn }
attributes #10 = { noinline }
attributes #11 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 2, !"RtLibUseGOT", i32 1}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17he75b4f8efdd85587E: argument 0"}
!5 = distinct !{!5, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17he75b4f8efdd85587E"}
!6 = !{!7}
!7 = distinct !{!7, !5, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$3new17he75b4f8efdd85587E: %value"}
!8 = !{}
!9 = !{i8 0, i8 2}
!10 = !{i64 1, i64 0}
!11 = !{i8 0, i8 4}
!12 = !{!13}
!13 = distinct !{!13, !14, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h37eb6fcce57d1864E: argument 0"}
!14 = distinct !{!14, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h37eb6fcce57d1864E"}
!15 = !{!16}
!16 = distinct !{!16, !17, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17hc572220138fada83E: argument 0"}
!17 = distinct !{!17, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17hc572220138fada83E"}
!18 = !{!19}
!19 = distinct !{!19, !17, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17hc572220138fada83E: %self"}
!20 = !{!21}
!21 = distinct !{!21, !22, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h78def3ca65459e8fE: argument 0"}
!22 = distinct !{!22, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h78def3ca65459e8fE"}
!23 = !{!24}
!24 = distinct !{!24, !22, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h78def3ca65459e8fE: %slot"}
!25 = !{!21, !24}
!26 = !{!27}
!27 = distinct !{!27, !28, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h675ee8e067898109E: argument 0"}
!28 = distinct !{!28, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h675ee8e067898109E"}
!29 = !{!30}
!30 = distinct !{!30, !31, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h67718b055413ce52E: argument 0"}
!31 = distinct !{!31, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h67718b055413ce52E"}
!32 = !{!33}
!33 = distinct !{!33, !31, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h67718b055413ce52E: %self"}
!34 = !{!35}
!35 = distinct !{!35, !36, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h8d06b98f77525231E: argument 0"}
!36 = distinct !{!36, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h8d06b98f77525231E"}
!37 = !{!38}
!38 = distinct !{!38, !36, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h8d06b98f77525231E: %slot"}
!39 = !{!35, !38}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h41c99010181a8197E: argument 0"}
!42 = distinct !{!42, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17h41c99010181a8197E"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h7ba9584fdca4f515E: argument 0"}
!45 = distinct !{!45, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h7ba9584fdca4f515E"}
!46 = !{!47}
!47 = distinct !{!47, !45, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h7ba9584fdca4f515E: %self"}
!48 = !{!49}
!49 = distinct !{!49, !50, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h16eb5ab55f56b8bdE: argument 0"}
!50 = distinct !{!50, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h16eb5ab55f56b8bdE"}
!51 = !{!52}
!52 = distinct !{!52, !50, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17h16eb5ab55f56b8bdE: %slot"}
!53 = !{!49, !52}
!54 = !{!55}
!55 = distinct !{!55, !56, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17hdf167a0d219d3fcdE: argument 0"}
!56 = distinct !{!56, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$6uninit17hdf167a0d219d3fcdE"}
!57 = !{!58}
!58 = distinct !{!58, !59, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h2ac5775ebb1b5391E: argument 0"}
!59 = distinct !{!59, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h2ac5775ebb1b5391E"}
!60 = !{!61}
!61 = distinct !{!61, !59, !"_ZN4core3mem12maybe_uninit20MaybeUninit$LT$T$GT$11assume_init17h2ac5775ebb1b5391E: %self"}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17hd9730478b6e2e9fdE: argument 0"}
!64 = distinct !{!64, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17hd9730478b6e2e9fdE"}
!65 = !{!66}
!66 = distinct !{!66, !64, !"_ZN4core3mem13manually_drop21ManuallyDrop$LT$T$GT$10into_inner17hd9730478b6e2e9fdE: %slot"}
!67 = !{!63, !66}
!68 = !{i32 0, i32 4}
!69 = !{i32 0, i32 5}
!70 = !{i32 3193984}
!71 = !{i64 0, i64 2}
!72 = !{i32 0, i32 2}
!73 = !{i64 0, i64 3}

; ModuleID = 'libc.36f189fe-cgu.0'
source_filename = "libc.36f189fe-cgu.0"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"unix::DIR" = type { [0 x i8] }
%"unix::FILE" = type { [0 x i8] }
%"unix::fpos_t" = type { [0 x i8] }
%"unix::group" = type { i8*, i8*, i32, [1 x i32], i8** }
%"unix::rusage" = type { { i64, i64 }, { i64, i64 }, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%"unix::ipv6_mreq" = type { %"unix::align::in6_addr", i32 }
%"unix::align::in6_addr" = type { [16 x i8] }
%"unix::hostent" = type { i8*, i8**, i32, i32, i8** }
%"unix::pollfd" = type { i32, i16, i16 }
%"unix::winsize" = type { i16, i16, i16, i16 }
%"unix::sigval" = type { i8* }
%"unix::itimerval" = type { { i64, i64 }, { i64, i64 } }
%"unix::tms" = type { i64, i64, i64, i64 }
%"unix::servent" = type { i8*, i8**, i32, [1 x i32], i8* }
%"unix::protoent" = type { i8*, i8**, i32, [1 x i32] }
%"unix::linux_like::timezone" = type { [0 x i8] }
%"unix::linux_like::in_addr" = type { i32 }
%"unix::linux_like::ip_mreq" = type { %"unix::linux_like::in_addr", %"unix::linux_like::in_addr" }
%"unix::linux_like::ip_mreqn" = type { %"unix::linux_like::in_addr", %"unix::linux_like::in_addr", i32 }
%"unix::linux_like::ip_mreq_source" = type { %"unix::linux_like::in_addr", %"unix::linux_like::in_addr", %"unix::linux_like::in_addr" }
%"unix::linux_like::sockaddr" = type { i16, [14 x i8] }
%"unix::linux_like::sockaddr_in" = type { i16, i16, %"unix::linux_like::in_addr", [8 x i8] }
%"unix::linux_like::sockaddr_in6" = type { i16, i16, i32, %"unix::align::in6_addr", i32 }
%"unix::linux_like::addrinfo" = type { i32, i32, i32, i32, i32, [1 x i32], %"unix::linux_like::sockaddr"*, i8*, %"unix::linux_like::addrinfo"* }
%"unix::linux_like::sockaddr_ll" = type { i16, i16, i32, i16, i8, i8, [8 x i8] }
%"unix::linux_like::fd_set" = type { [16 x i64] }
%"unix::linux_like::tm" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, [1 x i32], i64, i8* }
%"unix::linux_like::sched_param" = type { i32 }
%"unix::linux_like::Dl_info" = type { i8*, i8*, i8*, i8* }
%"unix::linux_like::lconv" = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [2 x i8] }
%"unix::linux_like::in_pktinfo" = type { i32, %"unix::linux_like::in_addr", %"unix::linux_like::in_addr" }
%"unix::linux_like::ifaddrs" = type { %"unix::linux_like::ifaddrs"*, i8*, i32, [1 x i32], %"unix::linux_like::sockaddr"*, %"unix::linux_like::sockaddr"*, %"unix::linux_like::sockaddr"*, i8* }
%"unix::linux_like::in6_rtmsg" = type { %"unix::align::in6_addr", %"unix::align::in6_addr", %"unix::align::in6_addr", i32, i16, i16, i32, [1 x i32], i64, i32, i32 }
%"unix::linux_like::arpreq" = type { %"unix::linux_like::sockaddr", %"unix::linux_like::sockaddr", i32, %"unix::linux_like::sockaddr", [16 x i8] }
%"unix::linux_like::arpreq_old" = type { %"unix::linux_like::sockaddr", %"unix::linux_like::sockaddr", i32, %"unix::linux_like::sockaddr" }
%"unix::linux_like::arphdr" = type { i16, i16, i8, i8, i16 }
%"unix::linux_like::mmsghdr" = type { %"unix::linux_like::linux::gnu::msghdr", i32, [1 x i32] }
%"unix::linux_like::linux::gnu::msghdr" = type { i8*, i32, [1 x i32], { i8*, i64 }*, i64, i8*, i64, i32, [1 x i32] }
%"unix::linux_like::epoll_event" = type <{ i32, i64 }>
%"unix::linux_like::sockaddr_un" = type { i16, [108 x i8] }
%"unix::linux_like::sockaddr_storage" = type { i16, [3 x i16], i64, [112 x i8] }
%"unix::linux_like::utsname" = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%"unix::linux_like::sigevent" = type { %"unix::sigval", i32, i32, i32, [11 x i32] }
%"unix::linux_like::linux::fpos64_t" = type { [0 x i8] }
%"unix::linux_like::linux::glob_t" = type { i64, i8**, i64, i32, [1 x i32], i8*, i8*, i8*, i8*, i8* }
%"unix::linux_like::linux::passwd" = type { i8*, i8*, i32, i32, i8*, i8*, i8* }
%"unix::linux_like::linux::spwd" = type { i8*, i8*, i64, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::dqblk" = type { i64, i64, i64, i64, i64, i64, i64, i64, i32, [1 x i32] }
%"unix::linux_like::linux::signalfd_siginfo" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i16, i16, i32, i64, i32, [28 x i8] }
%"unix::linux_like::linux::itimerspec" = type { { i64, i64 }, { i64, i64 } }
%"unix::linux_like::linux::fsid_t" = type { [2 x i32] }
%"unix::linux_like::linux::packet_mreq" = type { i32, i16, i16, [8 x i8] }
%"unix::linux_like::linux::cpu_set_t" = type { [16 x i64] }
%"unix::linux_like::linux::msginfo" = type { i32, i32, i32, i32, i32, i32, i32, i16, [1 x i16] }
%"unix::linux_like::linux::sembuf" = type { i16, i16, i16 }
%"unix::linux_like::linux::input_event" = type { { i64, i64 }, i16, i16, i32 }
%"unix::linux_like::linux::input_id" = type { i16, i16, i16, i16 }
%"unix::linux_like::linux::input_absinfo" = type { i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::input_keymap_entry" = type { i8, i8, i16, i32, [32 x i8] }
%"unix::linux_like::linux::input_mask" = type { i32, i32, i64 }
%"unix::linux_like::linux::ff_envelope" = type { i16, i16, i16, i16 }
%"unix::linux_like::linux::ff_constant_effect" = type { i16, %"unix::linux_like::linux::ff_envelope" }
%"unix::linux_like::linux::ff_ramp_effect" = type { i16, i16, %"unix::linux_like::linux::ff_envelope" }
%"unix::linux_like::linux::ff_condition_effect" = type { i16, i16, i16, i16, i16, i16 }
%"unix::linux_like::linux::ff_periodic_effect" = type { i16, i16, i16, i16, i16, %"unix::linux_like::linux::ff_envelope", [1 x i16], i32, i16* }
%"unix::linux_like::linux::ff_effect" = type { i16, i16, i16, { i16, i16 }, { i16, i16 }, [1 x i16], [4 x i64] }
%"unix::linux_like::linux::uinput_ff_upload" = type { i32, i32, %"unix::linux_like::linux::ff_effect", %"unix::linux_like::linux::ff_effect" }
%"unix::linux_like::linux::uinput_ff_erase" = type { i32, i32, i32 }
%"unix::linux_like::linux::uinput_abs_setup" = type { i16, [1 x i16], %"unix::linux_like::linux::input_absinfo" }
%"unix::linux_like::linux::dl_phdr_info" = type { i64, i8*, %"unix::linux_like::linux::Elf64_Phdr"*, i16, [3 x i16], i64, i64, i64, i8* }
%"unix::linux_like::linux::Elf64_Phdr" = type { i32, i32, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::Elf32_Ehdr" = type { [16 x i8], i16, i16, i32, i32, i32, i32, i32, i16, i16, i16, i16, i16, i16 }
%"unix::linux_like::linux::Elf64_Ehdr" = type { [16 x i8], i16, i16, i32, i64, i64, i64, i32, i16, i16, i16, i16, i16, i16 }
%"unix::linux_like::linux::Elf32_Sym" = type { i32, i32, i32, i8, i8, i16 }
%"unix::linux_like::linux::Elf64_Sym" = type { i32, i8, i8, i16, i64, i64 }
%"unix::linux_like::linux::Elf32_Phdr" = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::Elf32_Shdr" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::Elf64_Shdr" = type { i32, i32, i64, i64, i64, i64, i32, i32, i64, i64 }
%"unix::linux_like::linux::ucred" = type { i32, i32, i32 }
%"unix::linux_like::linux::mntent" = type { i8*, i8*, i8*, i8*, i32, i32 }
%"unix::linux_like::linux::posix_spawn_file_actions_t" = type { i32, i32, i32*, [16 x i32] }
%"unix::linux_like::linux::posix_spawnattr_t" = type { i16, [1 x i16], i32, %"unix::linux_like::linux::gnu::b64::sigset_t", %"unix::linux_like::linux::gnu::b64::sigset_t", %"unix::linux_like::sched_param", i32, [16 x i32] }
%"unix::linux_like::linux::gnu::b64::sigset_t" = type { [16 x i64] }
%"unix::linux_like::linux::genlmsghdr" = type { i8, i8, i16 }
%"unix::linux_like::linux::in6_pktinfo" = type { %"unix::align::in6_addr", i32 }
%"unix::linux_like::linux::arpd_request" = type { i16, [1 x i16], i32, i64, i64, i64, [7 x i8], [1 x i8] }
%"unix::linux_like::linux::inotify_event" = type { i32, i32, i32, i32 }
%"unix::linux_like::linux::sockaddr_vm" = type { i16, i16, i32, i32, [4 x i8] }
%"unix::linux_like::linux::sock_extended_err" = type { i32, i8, i8, i8, i8, i32, i32 }
%"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939" = type { i64, i32, i8, [3 x i8] }
%"unix::linux_like::linux::j1939_filter" = type { i64, i64, i32, i32, i8, i8, [6 x i8] }
%"unix::linux_like::linux::sock_filter" = type { i16, i8, i8, i32 }
%"unix::linux_like::linux::seccomp_data" = type { i32, i32, i64, [6 x i64] }
%"unix::linux_like::linux::nlmsghdr" = type { i32, i16, i16, i32, i32 }
%"unix::linux_like::linux::nlmsgerr" = type { i32, %"unix::linux_like::linux::nlmsghdr" }
%"unix::linux_like::linux::sockaddr_nl" = type { i16, i16, i32, i32 }
%"unix::linux_like::linux::dirent" = type { i64, i64, i16, i8, [256 x i8], [5 x i8] }
%"unix::linux_like::linux::dirent64" = type { i64, i64, i16, i8, [256 x i8], [5 x i8] }
%"unix::linux_like::linux::sockaddr_alg" = type { i16, [14 x i8], i32, i32, [64 x i8] }
%"unix::linux_like::linux::uinput_setup" = type { %"unix::linux_like::linux::input_id", [80 x i8], i32 }
%"unix::linux_like::linux::uinput_user_dev" = type { [80 x i8], %"unix::linux_like::linux::input_id", i32, [64 x i32], [64 x i32], [64 x i32], [64 x i32] }
%"unix::linux_like::linux::af_alg_iv" = type { i32, [0 x i8] }
%"unix::linux_like::linux::mq_attr" = type { i64, i64, i64, i64, [4 x i64] }
%"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr" = type { [2 x i64] }
%"unix::linux_like::linux::sockaddr_can" = type { i16, [1 x i16], i32, %"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr" }
%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t" = type { i32, i32, i32, [29 x i32], [0 x i64] }
%"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_addr::siginfo_sigfault" = type { i32, i32, i32, [1 x i32], i8* }
%"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_value::siginfo_timer" = type { i32, i32, i32, i32, i32, [1 x i32], %"unix::sigval" }
%"unix::linux_like::linux::gnu::statx" = type { i32, i32, i64, i32, i32, i32, i16, [1 x i16], i64, i64, i64, i64, %"unix::linux_like::linux::gnu::statx_timestamp", %"unix::linux_like::linux::gnu::statx_timestamp", %"unix::linux_like::linux::gnu::statx_timestamp", %"unix::linux_like::linux::gnu::statx_timestamp", i32, i32, i32, i32, i64, i64, [12 x i64] }
%"unix::linux_like::linux::gnu::statx_timestamp" = type { i64, i32, [1 x i32] }
%"unix::linux_like::linux::gnu::aiocb" = type { i32, i32, i32, [1 x i32], i8*, i64, %"unix::linux_like::sigevent", %"unix::linux_like::linux::gnu::aiocb"*, i32, i32, i32, [1 x i32], i64, i64, [32 x i8] }
%"unix::linux_like::linux::gnu::glob64_t" = type { i64, i8**, i64, i32, [1 x i32], i8*, i8*, i8*, i8*, i8* }
%"unix::linux_like::linux::gnu::cmsghdr" = type { i64, i32, i32 }
%"unix::linux_like::linux::gnu::termios" = type { i32, i32, i32, i32, i8, [32 x i8], [3 x i8], i32, i32 }
%"unix::linux_like::linux::gnu::mallinfo" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::gnu::mallinfo2" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::gnu::nl_pktinfo" = type { i32 }
%"unix::linux_like::linux::gnu::nl_mmap_req" = type { i32, i32, i32, i32 }
%"unix::linux_like::linux::gnu::nl_mmap_hdr" = type { i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::gnu::rtentry" = type { i64, %"unix::linux_like::sockaddr", %"unix::linux_like::sockaddr", %"unix::linux_like::sockaddr", i16, i16, [2 x i16], i64, i8, i8, [3 x i16], i16, [3 x i16], i8*, i64, i64, i16, [3 x i16] }
%"unix::linux_like::linux::gnu::timex" = type { i32, [1 x i32], i64, i64, i64, i64, i32, [1 x i32], i64, i64, i64, { i64, i64 }, i64, i64, i64, i32, [1 x i32], i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::gnu::ntptimeval" = type { { i64, i64 }, i64, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::gnu::regex_t" = type { i8*, i64, i64, i64, i8*, i8*, i64, i8, [7 x i8] }
%"unix::linux_like::linux::gnu::Elf64_Chdr" = type { i32, i32, i64, i64 }
%"unix::linux_like::linux::gnu::Elf32_Chdr" = type { i32, i32, i32 }
%"unix::linux_like::linux::gnu::seminfo" = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args" = type { i64, i32, i32 }
%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry" = type { i64, [6 x i64] }
%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp" = type { i64, [6 x i64], i32, [1 x i32] }
%"unix::linux_like::linux::gnu::ptrace_syscall_info" = type { i8, [3 x i8], i32, i64, i64, %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data" }
%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data" = type { [8 x i64] }
%"unix::linux_like::linux::gnu::sifields_sigchld" = type { i32, i32, i32, [1 x i32], i64, i64 }
%"unix::linux_like::linux::gnu::sifields" = type { [4 x i64] }
%"unix::linux_like::linux::gnu::siginfo_f" = type { [3 x i32], [1 x i32], %"unix::linux_like::linux::gnu::sifields" }
%"unix::linux_like::linux::gnu::utmpx" = type { i16, [1 x i16], i32, [32 x i8], [4 x i8], [32 x i8], [256 x i8], { i16, i16 }, i32, { i32, i32 }, [4 x i32], [20 x i8] }
%"unix::linux_like::linux::gnu::b64::sysinfo" = type { i64, [3 x i64], i64, i64, i64, i64, i64, i64, i16, i16, [2 x i16], i64, i64, i32, [0 x i8], [4 x i8] }
%"unix::linux_like::linux::gnu::b64::msqid_ds" = type { %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm", i64, i64, i64, i64, i64, i64, i32, i32, i64, i64 }
%"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm" = type { i32, i32, i32, i32, i32, i16, i16, i16, i16, [2 x i16], i64, i64 }
%"unix::linux_like::linux::gnu::b64::semid_ds" = type { %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm", i64, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::gnu::b64::x86_64::sigaction" = type { i64, %"unix::linux_like::linux::gnu::b64::sigset_t", i32, [1 x i32], i64* }
%"unix::linux_like::linux::gnu::b64::x86_64::statfs" = type { i64, i64, i64, i64, i64, i64, i64, %"unix::linux_like::linux::fsid_t", i64, i64, [5 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::flock" = type { i16, i16, [2 x i16], i64, i64, i32, [1 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::flock64" = type { i16, i16, [2 x i16], i64, i64, i32, [1 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::stack_t" = type { i8*, i32, [1 x i32], i64 }
%"unix::linux_like::linux::gnu::b64::x86_64::stat" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::stat64" = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [3 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::statfs64" = type { i64, i64, i64, i64, i64, i64, i64, %"unix::linux_like::linux::fsid_t", i64, i64, i64, [4 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::statvfs64" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t" = type { [7 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg" = type { [4 x i16], i16, [3 x i16] }
%"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg" = type { [4 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate" = type { i16, i16, i16, i16, i64, i64, i32, i32, [8 x %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg"], [16 x %"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg"], [12 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%"unix::linux_like::linux::gnu::b64::x86_64::user" = type { %"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct", i32, [1 x i32], %"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct", i64, i64, i64, i64, i64, i64, i32, [1 x i32], %"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct"*, %"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct"*, i64, [32 x i8], [8 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct" = type { i16, i16, i16, i16, i64, i64, i32, i32, [32 x i32], [64 x i32], [24 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t" = type { [23 x i64], %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate"*, [8 x i64] }
%"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds" = type { %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm", i64, i64, i64, i64, i32, i32, i64, i64, i64 }
%"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes" = type { i16, i16, i16 }
%"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t" = type { i64, %"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t"*, %"unix::linux_like::linux::gnu::b64::x86_64::stack_t", %"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t", %"unix::linux_like::linux::gnu::b64::sigset_t", [512 x i8] }
%"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [6 x i32] }
%"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t" = type { [4 x double] }
%"unix::linux_like::linux::gnu::align::sem_t" = type { [32 x i8] }
%"unix::linux_like::linux::arch::generic::termios2" = type { i32, i32, i32, i32, i8, [19 x i8], i32, i32 }
%"unix::linux_like::linux::pthread_mutexattr_t" = type { [4 x i8] }
%"unix::linux_like::linux::pthread_rwlockattr_t" = type { [8 x i8] }
%"unix::linux_like::linux::pthread_condattr_t" = type { [4 x i8] }
%"unix::linux_like::linux::fanotify_event_metadata" = type { i32, i8, i8, i16, i64, i32, i32 }
%"unix::linux_like::linux::pthread_cond_t" = type { [48 x i8] }
%"unix::linux_like::linux::pthread_mutex_t" = type { [40 x i8] }
%"unix::linux_like::linux::pthread_rwlock_t" = type { [56 x i8] }
%"unix::linux_like::linux::can_frame" = type { i32, i8, i8, i8, i8, [8 x i8] }
%"unix::linux_like::linux::canfd_frame" = type { i32, i8, i8, i8, i8, [64 x i8] }
%"unix::linux_like::linux::non_exhaustive::open_how" = type { i64, i64, i64 }

; <libc::unix::DIR as core::clone::Clone>::clone
; Function Attrs: noreturn nonlazybind uwtable
define void @"_ZN54_$LT$libc..unix..DIR$u20$as$u20$core..clone..Clone$GT$5clone17h7d1290df7081e7eeE"(%"unix::DIR"* nonnull align 1 %self) unnamed_addr #0 {
start:
  call void @llvm.trap()
  unreachable
}

; <libc::unix::FILE as core::clone::Clone>::clone
; Function Attrs: noreturn nonlazybind uwtable
define void @"_ZN55_$LT$libc..unix..FILE$u20$as$u20$core..clone..Clone$GT$5clone17hc73e34352e8859e9E"(%"unix::FILE"* nonnull align 1 %self) unnamed_addr #0 {
start:
  call void @llvm.trap()
  unreachable
}

; <libc::unix::fpos_t as core::clone::Clone>::clone
; Function Attrs: noreturn nonlazybind uwtable
define void @"_ZN57_$LT$libc..unix..fpos_t$u20$as$u20$core..clone..Clone$GT$5clone17h429590584592c6a7E"(%"unix::fpos_t"* nonnull align 1 %self) unnamed_addr #0 {
start:
  call void @llvm.trap()
  unreachable
}

; <libc::unix::group as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN56_$LT$libc..unix..group$u20$as$u20$core..clone..Clone$GT$5clone17h4d902fee78fb5eb3E"(%"unix::group"* noalias nocapture sret(%"unix::group") dereferenceable(32) %0, %"unix::group"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::group"* %0 to i8*
  %2 = bitcast %"unix::group"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::utimbuf as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN58_$LT$libc..unix..utimbuf$u20$as$u20$core..clone..Clone$GT$5clone17he6fe0d4e6e168223E"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <libc::unix::timeval as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN58_$LT$libc..unix..timeval$u20$as$u20$core..clone..Clone$GT$5clone17h87f92566f5e2c5abE"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <libc::unix::timespec as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN59_$LT$libc..unix..timespec$u20$as$u20$core..clone..Clone$GT$5clone17hd91a03b5595f33c0E"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <libc::unix::rlimit as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN57_$LT$libc..unix..rlimit$u20$as$u20$core..clone..Clone$GT$5clone17hf32e936630033a83E"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <libc::unix::rusage as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN57_$LT$libc..unix..rusage$u20$as$u20$core..clone..Clone$GT$5clone17h1e257b206174a516E"(%"unix::rusage"* noalias nocapture sret(%"unix::rusage") dereferenceable(144) %0, %"unix::rusage"* align 8 dereferenceable(144) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::rusage"* %0 to i8*
  %2 = bitcast %"unix::rusage"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 144, i1 false)
  ret void
}

; <libc::unix::ipv6_mreq as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN60_$LT$libc..unix..ipv6_mreq$u20$as$u20$core..clone..Clone$GT$5clone17he3f7472a9b98661eE"(%"unix::ipv6_mreq"* noalias nocapture sret(%"unix::ipv6_mreq") dereferenceable(20) %0, %"unix::ipv6_mreq"* align 4 dereferenceable(20) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::ipv6_mreq"* %0 to i8*
  %2 = bitcast %"unix::ipv6_mreq"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 20, i1 false)
  ret void
}

; <libc::unix::hostent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN58_$LT$libc..unix..hostent$u20$as$u20$core..clone..Clone$GT$5clone17he07b01f19967261eE"(%"unix::hostent"* noalias nocapture sret(%"unix::hostent") dereferenceable(32) %0, %"unix::hostent"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::hostent"* %0 to i8*
  %2 = bitcast %"unix::hostent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::iovec as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i8*, i64 } @"_ZN56_$LT$libc..unix..iovec$u20$as$u20$core..clone..Clone$GT$5clone17h8203b4c59eb5485bE"({ i8*, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 0
  %1 = load i8*, i8** %0, align 8
  %2 = getelementptr inbounds { i8*, i64 }, { i8*, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i8*, i64 } undef, i8* %1, 0
  %5 = insertvalue { i8*, i64 } %4, i64 %3, 1
  ret { i8*, i64 } %5
}

; <libc::unix::pollfd as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN57_$LT$libc..unix..pollfd$u20$as$u20$core..clone..Clone$GT$5clone17h2574360ea9b847d6E"(%"unix::pollfd"* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::pollfd", align 4
  %1 = bitcast %"unix::pollfd"* %0 to i8*
  %2 = bitcast %"unix::pollfd"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  %3 = bitcast %"unix::pollfd"* %0 to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; <libc::unix::winsize as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN58_$LT$libc..unix..winsize$u20$as$u20$core..clone..Clone$GT$5clone17hdff793b47488a5bdE"(%"unix::winsize"* align 2 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::winsize", align 2
  %1 = bitcast %"unix::winsize"* %0 to i8*
  %2 = bitcast %"unix::winsize"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 8, i1 false)
  %3 = bitcast %"unix::winsize"* %0 to i64*
  %4 = load i64, i64* %3, align 2
  ret i64 %4
}

; <libc::unix::linger as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN57_$LT$libc..unix..linger$u20$as$u20$core..clone..Clone$GT$5clone17h7adf3a11d7f806c6E"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::sigval as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN57_$LT$libc..unix..sigval$u20$as$u20$core..clone..Clone$GT$5clone17hee6ca79dc76aa99eE"(%"unix::sigval"* align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::sigval", align 8
  %1 = bitcast %"unix::sigval"* %0 to i8*
  %2 = bitcast %"unix::sigval"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"unix::sigval"* %0 to i64*
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; <libc::unix::itimerval as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN60_$LT$libc..unix..itimerval$u20$as$u20$core..clone..Clone$GT$5clone17h2d569f0c3a9cacecE"(%"unix::itimerval"* noalias nocapture sret(%"unix::itimerval") dereferenceable(32) %0, %"unix::itimerval"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::itimerval"* %0 to i8*
  %2 = bitcast %"unix::itimerval"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::tms as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN54_$LT$libc..unix..tms$u20$as$u20$core..clone..Clone$GT$5clone17hf754efa1ea5ea5c2E"(%"unix::tms"* noalias nocapture sret(%"unix::tms") dereferenceable(32) %0, %"unix::tms"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::tms"* %0 to i8*
  %2 = bitcast %"unix::tms"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::servent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN58_$LT$libc..unix..servent$u20$as$u20$core..clone..Clone$GT$5clone17h06f1a6cab0976c23E"(%"unix::servent"* noalias nocapture sret(%"unix::servent") dereferenceable(32) %0, %"unix::servent"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::servent"* %0 to i8*
  %2 = bitcast %"unix::servent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::protoent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN59_$LT$libc..unix..protoent$u20$as$u20$core..clone..Clone$GT$5clone17h86614a9f135fb216E"(%"unix::protoent"* noalias nocapture sret(%"unix::protoent") dereferenceable(24) %0, %"unix::protoent"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::protoent"* %0 to i8*
  %2 = bitcast %"unix::protoent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::timezone as core::clone::Clone>::clone
; Function Attrs: noreturn nonlazybind uwtable
define void @"_ZN71_$LT$libc..unix..linux_like..timezone$u20$as$u20$core..clone..Clone$GT$5clone17hf91de01af7678171E"(%"unix::linux_like::timezone"* nonnull align 1 %self) unnamed_addr #0 {
start:
  call void @llvm.trap()
  unreachable
}

; <libc::unix::linux_like::in_addr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN70_$LT$libc..unix..linux_like..in_addr$u20$as$u20$core..clone..Clone$GT$5clone17hc878822a7d568d25E"(%"unix::linux_like::in_addr"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::in_addr", align 4
  %1 = bitcast %"unix::linux_like::in_addr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::in_addr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::in_addr"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::ip_mreq as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN70_$LT$libc..unix..linux_like..ip_mreq$u20$as$u20$core..clone..Clone$GT$5clone17h579bfa01032675b1E"(%"unix::linux_like::ip_mreq"* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::ip_mreq", align 4
  %1 = bitcast %"unix::linux_like::ip_mreq"* %0 to i8*
  %2 = bitcast %"unix::linux_like::ip_mreq"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::ip_mreq"* %0 to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; <libc::unix::linux_like::ip_mreqn as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN71_$LT$libc..unix..linux_like..ip_mreqn$u20$as$u20$core..clone..Clone$GT$5clone17h68b664d2c89bfffbE"(%"unix::linux_like::ip_mreqn"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::ip_mreqn", align 4
  %1 = bitcast %"unix::linux_like::ip_mreqn"* %0 to i8*
  %2 = bitcast %"unix::linux_like::ip_mreqn"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::ip_mreqn"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::ip_mreq_source as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN77_$LT$libc..unix..linux_like..ip_mreq_source$u20$as$u20$core..clone..Clone$GT$5clone17hf78de9d59431ad74E"(%"unix::linux_like::ip_mreq_source"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::ip_mreq_source", align 4
  %1 = bitcast %"unix::linux_like::ip_mreq_source"* %0 to i8*
  %2 = bitcast %"unix::linux_like::ip_mreq_source"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::ip_mreq_source"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::sockaddr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN71_$LT$libc..unix..linux_like..sockaddr$u20$as$u20$core..clone..Clone$GT$5clone17h31d776a5f64602d1E"(%"unix::linux_like::sockaddr"* align 2 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::sockaddr", align 2
  %1 = bitcast %"unix::linux_like::sockaddr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::sockaddr"* %0 to i128*
  %4 = load i128, i128* %3, align 2
  ret i128 %4
}

; <libc::unix::linux_like::sockaddr_in as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN74_$LT$libc..unix..linux_like..sockaddr_in$u20$as$u20$core..clone..Clone$GT$5clone17h843ab62c5070b634E"(%"unix::linux_like::sockaddr_in"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::sockaddr_in", align 4
  %1 = bitcast %"unix::linux_like::sockaddr_in"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr_in"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::sockaddr_in"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::sockaddr_in6 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN75_$LT$libc..unix..linux_like..sockaddr_in6$u20$as$u20$core..clone..Clone$GT$5clone17h63dba12495a32460E"(%"unix::linux_like::sockaddr_in6"* noalias nocapture sret(%"unix::linux_like::sockaddr_in6") dereferenceable(28) %0, %"unix::linux_like::sockaddr_in6"* align 4 dereferenceable(28) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::sockaddr_in6"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr_in6"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 28, i1 false)
  ret void
}

; <libc::unix::linux_like::addrinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$libc..unix..linux_like..addrinfo$u20$as$u20$core..clone..Clone$GT$5clone17hb20b79575abbb27fE"(%"unix::linux_like::addrinfo"* noalias nocapture sret(%"unix::linux_like::addrinfo") dereferenceable(48) %0, %"unix::linux_like::addrinfo"* align 8 dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::addrinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::addrinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <libc::unix::linux_like::sockaddr_ll as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN74_$LT$libc..unix..linux_like..sockaddr_ll$u20$as$u20$core..clone..Clone$GT$5clone17he54fb47fe9754265E"(%"unix::linux_like::sockaddr_ll"* noalias nocapture sret(%"unix::linux_like::sockaddr_ll") dereferenceable(20) %0, %"unix::linux_like::sockaddr_ll"* align 4 dereferenceable(20) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::sockaddr_ll"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr_ll"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 20, i1 false)
  ret void
}

; <libc::unix::linux_like::fd_set as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN69_$LT$libc..unix..linux_like..fd_set$u20$as$u20$core..clone..Clone$GT$5clone17h9d79b588802b98c4E"(%"unix::linux_like::fd_set"* noalias nocapture sret(%"unix::linux_like::fd_set") dereferenceable(128) %0, %"unix::linux_like::fd_set"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::fd_set"* %0 to i8*
  %2 = bitcast %"unix::linux_like::fd_set"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::tm as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN65_$LT$libc..unix..linux_like..tm$u20$as$u20$core..clone..Clone$GT$5clone17hcf46fcd8f024a6a9E"(%"unix::linux_like::tm"* noalias nocapture sret(%"unix::linux_like::tm") dereferenceable(56) %0, %"unix::linux_like::tm"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::tm"* %0 to i8*
  %2 = bitcast %"unix::linux_like::tm"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::sched_param as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN74_$LT$libc..unix..linux_like..sched_param$u20$as$u20$core..clone..Clone$GT$5clone17h4bcf6c0fb1c0d235E"(%"unix::linux_like::sched_param"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::sched_param", align 4
  %1 = bitcast %"unix::linux_like::sched_param"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sched_param"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::sched_param"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::Dl_info as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$libc..unix..linux_like..Dl_info$u20$as$u20$core..clone..Clone$GT$5clone17h3210e84abdfed623E"(%"unix::linux_like::Dl_info"* noalias nocapture sret(%"unix::linux_like::Dl_info") dereferenceable(32) %0, %"unix::linux_like::Dl_info"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::Dl_info"* %0 to i8*
  %2 = bitcast %"unix::linux_like::Dl_info"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::lconv as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$libc..unix..linux_like..lconv$u20$as$u20$core..clone..Clone$GT$5clone17h3f13066b23d8cb21E"(%"unix::linux_like::lconv"* noalias nocapture sret(%"unix::linux_like::lconv") dereferenceable(96) %0, %"unix::linux_like::lconv"* align 8 dereferenceable(96) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::lconv"* %0 to i8*
  %2 = bitcast %"unix::linux_like::lconv"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 96, i1 false)
  ret void
}

; <libc::unix::linux_like::in_pktinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN73_$LT$libc..unix..linux_like..in_pktinfo$u20$as$u20$core..clone..Clone$GT$5clone17h37932736e342e934E"(%"unix::linux_like::in_pktinfo"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::in_pktinfo", align 4
  %1 = bitcast %"unix::linux_like::in_pktinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::in_pktinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::in_pktinfo"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::ifaddrs as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$libc..unix..linux_like..ifaddrs$u20$as$u20$core..clone..Clone$GT$5clone17h42d73afcb8ef4d85E"(%"unix::linux_like::ifaddrs"* noalias nocapture sret(%"unix::linux_like::ifaddrs") dereferenceable(56) %0, %"unix::linux_like::ifaddrs"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::ifaddrs"* %0 to i8*
  %2 = bitcast %"unix::linux_like::ifaddrs"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::in6_rtmsg as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN72_$LT$libc..unix..linux_like..in6_rtmsg$u20$as$u20$core..clone..Clone$GT$5clone17h590f38a5f211b777E"(%"unix::linux_like::in6_rtmsg"* noalias nocapture sret(%"unix::linux_like::in6_rtmsg") dereferenceable(80) %0, %"unix::linux_like::in6_rtmsg"* align 8 dereferenceable(80) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::in6_rtmsg"* %0 to i8*
  %2 = bitcast %"unix::linux_like::in6_rtmsg"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 80, i1 false)
  ret void
}

; <libc::unix::linux_like::arpreq as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN69_$LT$libc..unix..linux_like..arpreq$u20$as$u20$core..clone..Clone$GT$5clone17h16671d9b55c241cdE"(%"unix::linux_like::arpreq"* noalias nocapture sret(%"unix::linux_like::arpreq") dereferenceable(68) %0, %"unix::linux_like::arpreq"* align 4 dereferenceable(68) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::arpreq"* %0 to i8*
  %2 = bitcast %"unix::linux_like::arpreq"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 68, i1 false)
  ret void
}

; <libc::unix::linux_like::arpreq_old as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN73_$LT$libc..unix..linux_like..arpreq_old$u20$as$u20$core..clone..Clone$GT$5clone17hb05ecd56b9318fe3E"(%"unix::linux_like::arpreq_old"* noalias nocapture sret(%"unix::linux_like::arpreq_old") dereferenceable(52) %0, %"unix::linux_like::arpreq_old"* align 4 dereferenceable(52) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::arpreq_old"* %0 to i8*
  %2 = bitcast %"unix::linux_like::arpreq_old"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 52, i1 false)
  ret void
}

; <libc::unix::linux_like::arphdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN69_$LT$libc..unix..linux_like..arphdr$u20$as$u20$core..clone..Clone$GT$5clone17h1df70f5c83a4bed9E"(%"unix::linux_like::arphdr"* align 2 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::arphdr", align 2
  %1 = bitcast %"unix::linux_like::arphdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::arphdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::arphdr"* %0 to i64*
  %4 = load i64, i64* %3, align 2
  ret i64 %4
}

; <libc::unix::linux_like::mmsghdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$libc..unix..linux_like..mmsghdr$u20$as$u20$core..clone..Clone$GT$5clone17ha31407da55c8a139E"(%"unix::linux_like::mmsghdr"* noalias nocapture sret(%"unix::linux_like::mmsghdr") dereferenceable(64) %0, %"unix::linux_like::mmsghdr"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::mmsghdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::mmsghdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::epoll_event as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN74_$LT$libc..unix..linux_like..epoll_event$u20$as$u20$core..clone..Clone$GT$5clone17h6d7d44849ade973fE"(%"unix::linux_like::epoll_event"* align 1 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::epoll_event", align 1
  %1 = bitcast %"unix::linux_like::epoll_event"* %0 to i8*
  %2 = bitcast %"unix::linux_like::epoll_event"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::epoll_event"* %0 to i96*
  %4 = load i96, i96* %3, align 1
  ret i96 %4
}

; <libc::unix::linux_like::sockaddr_un as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN74_$LT$libc..unix..linux_like..sockaddr_un$u20$as$u20$core..clone..Clone$GT$5clone17h5b3d85eda7ba5a75E"(%"unix::linux_like::sockaddr_un"* noalias nocapture sret(%"unix::linux_like::sockaddr_un") dereferenceable(110) %0, %"unix::linux_like::sockaddr_un"* align 2 dereferenceable(110) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::sockaddr_un"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr_un"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 110, i1 false)
  ret void
}

; <libc::unix::linux_like::sockaddr_storage as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$libc..unix..linux_like..sockaddr_storage$u20$as$u20$core..clone..Clone$GT$5clone17hfebdd313d5c678d8E"(%"unix::linux_like::sockaddr_storage"* noalias nocapture sret(%"unix::linux_like::sockaddr_storage") dereferenceable(128) %0, %"unix::linux_like::sockaddr_storage"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::sockaddr_storage"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sockaddr_storage"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::utsname as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN70_$LT$libc..unix..linux_like..utsname$u20$as$u20$core..clone..Clone$GT$5clone17h97ff2841b57da7ecE"(%"unix::linux_like::utsname"* noalias nocapture sret(%"unix::linux_like::utsname") dereferenceable(390) %0, %"unix::linux_like::utsname"* align 1 dereferenceable(390) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::utsname"* %0 to i8*
  %2 = bitcast %"unix::linux_like::utsname"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %1, i8* align 1 %2, i64 390, i1 false)
  ret void
}

; <libc::unix::linux_like::sigevent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN71_$LT$libc..unix..linux_like..sigevent$u20$as$u20$core..clone..Clone$GT$5clone17h0789ed3271169c11E"(%"unix::linux_like::sigevent"* noalias nocapture sret(%"unix::linux_like::sigevent") dereferenceable(64) %0, %"unix::linux_like::sigevent"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::sigevent"* %0 to i8*
  %2 = bitcast %"unix::linux_like::sigevent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::fpos64_t as core::clone::Clone>::clone
; Function Attrs: noreturn nonlazybind uwtable
define void @"_ZN78_$LT$libc..unix..linux_like..linux..fpos64_t$u20$as$u20$core..clone..Clone$GT$5clone17ha2134ac5c1ef41eaE"(%"unix::linux_like::linux::fpos64_t"* nonnull align 1 %self) unnamed_addr #0 {
start:
  call void @llvm.trap()
  unreachable
}

; <libc::unix::linux_like::linux::rlimit64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i64 } @"_ZN78_$LT$libc..unix..linux_like..linux..rlimit64$u20$as$u20$core..clone..Clone$GT$5clone17hd2dda85849eb2c98E"({ i64, i64 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %self, i32 0, i32 1
  %3 = load i64, i64* %2, align 8
  %4 = insertvalue { i64, i64 } undef, i64 %1, 0
  %5 = insertvalue { i64, i64 } %4, i64 %3, 1
  ret { i64, i64 } %5
}

; <libc::unix::linux_like::linux::glob_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$libc..unix..linux_like..linux..glob_t$u20$as$u20$core..clone..Clone$GT$5clone17h0ee0b9be9038f50bE"(%"unix::linux_like::linux::glob_t"* noalias nocapture sret(%"unix::linux_like::linux::glob_t") dereferenceable(72) %0, %"unix::linux_like::linux::glob_t"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::glob_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::glob_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::passwd as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$libc..unix..linux_like..linux..passwd$u20$as$u20$core..clone..Clone$GT$5clone17h3da95773128487e4E"(%"unix::linux_like::linux::passwd"* noalias nocapture sret(%"unix::linux_like::linux::passwd") dereferenceable(48) %0, %"unix::linux_like::linux::passwd"* align 8 dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::passwd"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::passwd"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::spwd as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN74_$LT$libc..unix..linux_like..linux..spwd$u20$as$u20$core..clone..Clone$GT$5clone17he176fad81203a546E"(%"unix::linux_like::linux::spwd"* noalias nocapture sret(%"unix::linux_like::linux::spwd") dereferenceable(72) %0, %"unix::linux_like::linux::spwd"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::spwd"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::spwd"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::dqblk as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN75_$LT$libc..unix..linux_like..linux..dqblk$u20$as$u20$core..clone..Clone$GT$5clone17h0b7f64d430bbb159E"(%"unix::linux_like::linux::dqblk"* noalias nocapture sret(%"unix::linux_like::linux::dqblk") dereferenceable(72) %0, %"unix::linux_like::linux::dqblk"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::dqblk"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::dqblk"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::signalfd_siginfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$libc..unix..linux_like..linux..signalfd_siginfo$u20$as$u20$core..clone..Clone$GT$5clone17h6726dbb83a117190E"(%"unix::linux_like::linux::signalfd_siginfo"* noalias nocapture sret(%"unix::linux_like::linux::signalfd_siginfo") dereferenceable(128) %0, %"unix::linux_like::linux::signalfd_siginfo"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::signalfd_siginfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::signalfd_siginfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::itimerspec as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..itimerspec$u20$as$u20$core..clone..Clone$GT$5clone17h8753b4be1d96d31eE"(%"unix::linux_like::linux::itimerspec"* noalias nocapture sret(%"unix::linux_like::linux::itimerspec") dereferenceable(32) %0, %"unix::linux_like::linux::itimerspec"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::itimerspec"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::itimerspec"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::fsid_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN76_$LT$libc..unix..linux_like..linux..fsid_t$u20$as$u20$core..clone..Clone$GT$5clone17hb2dad69397d77fcfE"(%"unix::linux_like::linux::fsid_t"* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::fsid_t", align 4
  %1 = bitcast %"unix::linux_like::linux::fsid_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::fsid_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::linux::fsid_t"* %0 to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; <libc::unix::linux_like::linux::packet_mreq as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN81_$LT$libc..unix..linux_like..linux..packet_mreq$u20$as$u20$core..clone..Clone$GT$5clone17h66416e0674794881E"(%"unix::linux_like::linux::packet_mreq"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::packet_mreq", align 4
  %1 = bitcast %"unix::linux_like::linux::packet_mreq"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::packet_mreq"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::packet_mreq"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::cpu_set_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$libc..unix..linux_like..linux..cpu_set_t$u20$as$u20$core..clone..Clone$GT$5clone17h081669376bffb8b1E"(%"unix::linux_like::linux::cpu_set_t"* noalias nocapture sret(%"unix::linux_like::linux::cpu_set_t") dereferenceable(128) %0, %"unix::linux_like::linux::cpu_set_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::cpu_set_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::cpu_set_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::if_nameindex as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i8* } @"_ZN82_$LT$libc..unix..linux_like..linux..if_nameindex$u20$as$u20$core..clone..Clone$GT$5clone17h8c3923bbd3b32bd6E"({ i32, i8* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 8
  %2 = getelementptr inbounds { i32, i8* }, { i32, i8* }* %self, i32 0, i32 1
  %3 = load i8*, i8** %2, align 8
  %4 = insertvalue { i32, i8* } undef, i32 %1, 0
  %5 = insertvalue { i32, i8* } %4, i8* %3, 1
  ret { i32, i8* } %5
}

; <libc::unix::linux_like::linux::msginfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$libc..unix..linux_like..linux..msginfo$u20$as$u20$core..clone..Clone$GT$5clone17h80b9147fca2385edE"(%"unix::linux_like::linux::msginfo"* noalias nocapture sret(%"unix::linux_like::linux::msginfo") dereferenceable(32) %0, %"unix::linux_like::linux::msginfo"* align 4 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::msginfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::msginfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::sembuf as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i48 @"_ZN76_$LT$libc..unix..linux_like..linux..sembuf$u20$as$u20$core..clone..Clone$GT$5clone17h6144a06e852ff64fE"(%"unix::linux_like::linux::sembuf"* align 2 dereferenceable(6) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::sembuf", align 2
  %1 = bitcast %"unix::linux_like::linux::sembuf"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sembuf"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 6, i1 false)
  %3 = bitcast %"unix::linux_like::linux::sembuf"* %0 to i48*
  %4 = load i48, i48* %3, align 2
  ret i48 %4
}

; <libc::unix::linux_like::linux::input_event as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$libc..unix..linux_like..linux..input_event$u20$as$u20$core..clone..Clone$GT$5clone17h563e2ad0794c0a45E"(%"unix::linux_like::linux::input_event"* noalias nocapture sret(%"unix::linux_like::linux::input_event") dereferenceable(24) %0, %"unix::linux_like::linux::input_event"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::input_event"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::input_event"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::input_id as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN78_$LT$libc..unix..linux_like..linux..input_id$u20$as$u20$core..clone..Clone$GT$5clone17h84152083db300f83E"(%"unix::linux_like::linux::input_id"* align 2 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::input_id", align 2
  %1 = bitcast %"unix::linux_like::linux::input_id"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::input_id"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::linux::input_id"* %0 to i64*
  %4 = load i64, i64* %3, align 2
  ret i64 %4
}

; <libc::unix::linux_like::linux::input_absinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$libc..unix..linux_like..linux..input_absinfo$u20$as$u20$core..clone..Clone$GT$5clone17h548129c3343e1e90E"(%"unix::linux_like::linux::input_absinfo"* noalias nocapture sret(%"unix::linux_like::linux::input_absinfo") dereferenceable(24) %0, %"unix::linux_like::linux::input_absinfo"* align 4 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::input_absinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::input_absinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::input_keymap_entry as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$libc..unix..linux_like..linux..input_keymap_entry$u20$as$u20$core..clone..Clone$GT$5clone17h0cefcee76e68ba6cE"(%"unix::linux_like::linux::input_keymap_entry"* noalias nocapture sret(%"unix::linux_like::linux::input_keymap_entry") dereferenceable(40) %0, %"unix::linux_like::linux::input_keymap_entry"* align 4 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::input_keymap_entry"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::input_keymap_entry"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::input_mask as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN80_$LT$libc..unix..linux_like..linux..input_mask$u20$as$u20$core..clone..Clone$GT$5clone17hba485a312188a77dE"(%"unix::linux_like::linux::input_mask"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::input_mask", align 8
  %1 = bitcast %"unix::linux_like::linux::input_mask"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::input_mask"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::input_mask"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::ff_replay as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i16 } @"_ZN79_$LT$libc..unix..linux_like..linux..ff_replay$u20$as$u20$core..clone..Clone$GT$5clone17hd7536837a1cb0f22E"({ i16, i16 }* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 2
  %2 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = insertvalue { i16, i16 } undef, i16 %1, 0
  %5 = insertvalue { i16, i16 } %4, i16 %3, 1
  ret { i16, i16 } %5
}

; <libc::unix::linux_like::linux::ff_trigger as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i16 } @"_ZN80_$LT$libc..unix..linux_like..linux..ff_trigger$u20$as$u20$core..clone..Clone$GT$5clone17h45c60ce8a9630e19E"({ i16, i16 }* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 2
  %2 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = insertvalue { i16, i16 } undef, i16 %1, 0
  %5 = insertvalue { i16, i16 } %4, i16 %3, 1
  ret { i16, i16 } %5
}

; <libc::unix::linux_like::linux::ff_envelope as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN81_$LT$libc..unix..linux_like..linux..ff_envelope$u20$as$u20$core..clone..Clone$GT$5clone17had59e458a4416411E"(%"unix::linux_like::linux::ff_envelope"* align 2 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::ff_envelope", align 2
  %1 = bitcast %"unix::linux_like::linux::ff_envelope"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_envelope"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::linux::ff_envelope"* %0 to i64*
  %4 = load i64, i64* %3, align 2
  ret i64 %4
}

; <libc::unix::linux_like::linux::ff_constant_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i80 @"_ZN88_$LT$libc..unix..linux_like..linux..ff_constant_effect$u20$as$u20$core..clone..Clone$GT$5clone17h9936fd04d87230dbE"(%"unix::linux_like::linux::ff_constant_effect"* align 2 dereferenceable(10) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::ff_constant_effect", align 2
  %1 = bitcast %"unix::linux_like::linux::ff_constant_effect"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_constant_effect"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 10, i1 false)
  %3 = bitcast %"unix::linux_like::linux::ff_constant_effect"* %0 to i80*
  %4 = load i80, i80* %3, align 2
  ret i80 %4
}

; <libc::unix::linux_like::linux::ff_ramp_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN84_$LT$libc..unix..linux_like..linux..ff_ramp_effect$u20$as$u20$core..clone..Clone$GT$5clone17h441154e9fa1b2cc1E"(%"unix::linux_like::linux::ff_ramp_effect"* align 2 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::ff_ramp_effect", align 2
  %1 = bitcast %"unix::linux_like::linux::ff_ramp_effect"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_ramp_effect"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::ff_ramp_effect"* %0 to i96*
  %4 = load i96, i96* %3, align 2
  ret i96 %4
}

; <libc::unix::linux_like::linux::ff_condition_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN89_$LT$libc..unix..linux_like..linux..ff_condition_effect$u20$as$u20$core..clone..Clone$GT$5clone17h55b2094667f26c26E"(%"unix::linux_like::linux::ff_condition_effect"* align 2 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::ff_condition_effect", align 2
  %1 = bitcast %"unix::linux_like::linux::ff_condition_effect"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_condition_effect"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::ff_condition_effect"* %0 to i96*
  %4 = load i96, i96* %3, align 2
  ret i96 %4
}

; <libc::unix::linux_like::linux::ff_periodic_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$libc..unix..linux_like..linux..ff_periodic_effect$u20$as$u20$core..clone..Clone$GT$5clone17hec75e60d81f8e6ffE"(%"unix::linux_like::linux::ff_periodic_effect"* noalias nocapture sret(%"unix::linux_like::linux::ff_periodic_effect") dereferenceable(32) %0, %"unix::linux_like::linux::ff_periodic_effect"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::ff_periodic_effect"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_periodic_effect"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::ff_rumble_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i16 } @"_ZN86_$LT$libc..unix..linux_like..linux..ff_rumble_effect$u20$as$u20$core..clone..Clone$GT$5clone17h5f7a9a01c1a56761E"({ i16, i16 }* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 2
  %2 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = insertvalue { i16, i16 } undef, i16 %1, 0
  %5 = insertvalue { i16, i16 } %4, i16 %3, 1
  ret { i16, i16 } %5
}

; <libc::unix::linux_like::linux::ff_effect as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$libc..unix..linux_like..linux..ff_effect$u20$as$u20$core..clone..Clone$GT$5clone17hb919be8827ff248bE"(%"unix::linux_like::linux::ff_effect"* noalias nocapture sret(%"unix::linux_like::linux::ff_effect") dereferenceable(48) %0, %"unix::linux_like::linux::ff_effect"* align 8 dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::ff_effect"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ff_effect"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::uinput_ff_upload as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$libc..unix..linux_like..linux..uinput_ff_upload$u20$as$u20$core..clone..Clone$GT$5clone17ha6849ec8a42af9beE"(%"unix::linux_like::linux::uinput_ff_upload"* noalias nocapture sret(%"unix::linux_like::linux::uinput_ff_upload") dereferenceable(104) %0, %"unix::linux_like::linux::uinput_ff_upload"* align 8 dereferenceable(104) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::uinput_ff_upload"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::uinput_ff_upload"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 104, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::uinput_ff_erase as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN85_$LT$libc..unix..linux_like..linux..uinput_ff_erase$u20$as$u20$core..clone..Clone$GT$5clone17h35f399836183026bE"(%"unix::linux_like::linux::uinput_ff_erase"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::uinput_ff_erase", align 4
  %1 = bitcast %"unix::linux_like::linux::uinput_ff_erase"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::uinput_ff_erase"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::uinput_ff_erase"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::linux::uinput_abs_setup as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$libc..unix..linux_like..linux..uinput_abs_setup$u20$as$u20$core..clone..Clone$GT$5clone17hbea2d9563b56a17aE"(%"unix::linux_like::linux::uinput_abs_setup"* noalias nocapture sret(%"unix::linux_like::linux::uinput_abs_setup") dereferenceable(28) %0, %"unix::linux_like::linux::uinput_abs_setup"* align 4 dereferenceable(28) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::uinput_abs_setup"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::uinput_abs_setup"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 28, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::dl_phdr_info as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..dl_phdr_info$u20$as$u20$core..clone..Clone$GT$5clone17hebf49961243e01cdE"(%"unix::linux_like::linux::dl_phdr_info"* noalias nocapture sret(%"unix::linux_like::linux::dl_phdr_info") dereferenceable(64) %0, %"unix::linux_like::linux::dl_phdr_info"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::dl_phdr_info"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::dl_phdr_info"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf32_Ehdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf32_Ehdr$u20$as$u20$core..clone..Clone$GT$5clone17h6c0618cb99f446a0E"(%"unix::linux_like::linux::Elf32_Ehdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf32_Ehdr") dereferenceable(52) %0, %"unix::linux_like::linux::Elf32_Ehdr"* align 4 dereferenceable(52) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf32_Ehdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf32_Ehdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 52, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf64_Ehdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf64_Ehdr$u20$as$u20$core..clone..Clone$GT$5clone17h7144e38dff9440e4E"(%"unix::linux_like::linux::Elf64_Ehdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf64_Ehdr") dereferenceable(64) %0, %"unix::linux_like::linux::Elf64_Ehdr"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf64_Ehdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf64_Ehdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf32_Sym as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN79_$LT$libc..unix..linux_like..linux..Elf32_Sym$u20$as$u20$core..clone..Clone$GT$5clone17hc064ff75474c5aa5E"(%"unix::linux_like::linux::Elf32_Sym"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::Elf32_Sym", align 4
  %1 = bitcast %"unix::linux_like::linux::Elf32_Sym"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf32_Sym"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::Elf32_Sym"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::Elf64_Sym as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN79_$LT$libc..unix..linux_like..linux..Elf64_Sym$u20$as$u20$core..clone..Clone$GT$5clone17hd0c6bfb2b52f9114E"(%"unix::linux_like::linux::Elf64_Sym"* noalias nocapture sret(%"unix::linux_like::linux::Elf64_Sym") dereferenceable(24) %0, %"unix::linux_like::linux::Elf64_Sym"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf64_Sym"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf64_Sym"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf32_Phdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf32_Phdr$u20$as$u20$core..clone..Clone$GT$5clone17h5859580b0c5e603fE"(%"unix::linux_like::linux::Elf32_Phdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf32_Phdr") dereferenceable(32) %0, %"unix::linux_like::linux::Elf32_Phdr"* align 4 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf32_Phdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf32_Phdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf64_Phdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf64_Phdr$u20$as$u20$core..clone..Clone$GT$5clone17h57b3fe51df09f1c4E"(%"unix::linux_like::linux::Elf64_Phdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf64_Phdr") dereferenceable(56) %0, %"unix::linux_like::linux::Elf64_Phdr"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf64_Phdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf64_Phdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf32_Shdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf32_Shdr$u20$as$u20$core..clone..Clone$GT$5clone17hcf0b9927869eb846E"(%"unix::linux_like::linux::Elf32_Shdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf32_Shdr") dereferenceable(40) %0, %"unix::linux_like::linux::Elf32_Shdr"* align 4 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf32_Shdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf32_Shdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::Elf64_Shdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..Elf64_Shdr$u20$as$u20$core..clone..Clone$GT$5clone17h79647c94231361a9E"(%"unix::linux_like::linux::Elf64_Shdr"* noalias nocapture sret(%"unix::linux_like::linux::Elf64_Shdr") dereferenceable(64) %0, %"unix::linux_like::linux::Elf64_Shdr"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::Elf64_Shdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::Elf64_Shdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::ucred as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN75_$LT$libc..unix..linux_like..linux..ucred$u20$as$u20$core..clone..Clone$GT$5clone17h966ebe54c5dce727E"(%"unix::linux_like::linux::ucred"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::ucred", align 4
  %1 = bitcast %"unix::linux_like::linux::ucred"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::ucred"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::ucred"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::linux::mntent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$libc..unix..linux_like..linux..mntent$u20$as$u20$core..clone..Clone$GT$5clone17hd75418134f573ae2E"(%"unix::linux_like::linux::mntent"* noalias nocapture sret(%"unix::linux_like::linux::mntent") dereferenceable(40) %0, %"unix::linux_like::linux::mntent"* align 8 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::mntent"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::mntent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::posix_spawn_file_actions_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$libc..unix..linux_like..linux..posix_spawn_file_actions_t$u20$as$u20$core..clone..Clone$GT$5clone17h7a9507302849bb82E"(%"unix::linux_like::linux::posix_spawn_file_actions_t"* noalias nocapture sret(%"unix::linux_like::linux::posix_spawn_file_actions_t") dereferenceable(80) %0, %"unix::linux_like::linux::posix_spawn_file_actions_t"* align 8 dereferenceable(80) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::posix_spawn_file_actions_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::posix_spawn_file_actions_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 80, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::posix_spawnattr_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$libc..unix..linux_like..linux..posix_spawnattr_t$u20$as$u20$core..clone..Clone$GT$5clone17h2385d4cdb3a28176E"(%"unix::linux_like::linux::posix_spawnattr_t"* noalias nocapture sret(%"unix::linux_like::linux::posix_spawnattr_t") dereferenceable(336) %0, %"unix::linux_like::linux::posix_spawnattr_t"* align 8 dereferenceable(336) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::posix_spawnattr_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::posix_spawnattr_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 336, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::genlmsghdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN80_$LT$libc..unix..linux_like..linux..genlmsghdr$u20$as$u20$core..clone..Clone$GT$5clone17ha74f14a9634481cbE"(%"unix::linux_like::linux::genlmsghdr"* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::genlmsghdr", align 2
  %1 = bitcast %"unix::linux_like::linux::genlmsghdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::genlmsghdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::linux::genlmsghdr"* %0 to i32*
  %4 = load i32, i32* %3, align 2
  ret i32 %4
}

; <libc::unix::linux_like::linux::in6_pktinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$libc..unix..linux_like..linux..in6_pktinfo$u20$as$u20$core..clone..Clone$GT$5clone17h778138050a6f7dc6E"(%"unix::linux_like::linux::in6_pktinfo"* noalias nocapture sret(%"unix::linux_like::linux::in6_pktinfo") dereferenceable(20) %0, %"unix::linux_like::linux::in6_pktinfo"* align 4 dereferenceable(20) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::in6_pktinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::in6_pktinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 20, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::arpd_request as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..arpd_request$u20$as$u20$core..clone..Clone$GT$5clone17h6020fd40e1b552e5E"(%"unix::linux_like::linux::arpd_request"* noalias nocapture sret(%"unix::linux_like::linux::arpd_request") dereferenceable(40) %0, %"unix::linux_like::linux::arpd_request"* align 8 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::arpd_request"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::arpd_request"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::inotify_event as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN83_$LT$libc..unix..linux_like..linux..inotify_event$u20$as$u20$core..clone..Clone$GT$5clone17h9f80758fb6159790E"(%"unix::linux_like::linux::inotify_event"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::inotify_event", align 4
  %1 = bitcast %"unix::linux_like::linux::inotify_event"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::inotify_event"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::inotify_event"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::fanotify_response as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN87_$LT$libc..unix..linux_like..linux..fanotify_response$u20$as$u20$core..clone..Clone$GT$5clone17ha22e68a42cc8cf42E"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::sockaddr_vm as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN81_$LT$libc..unix..linux_like..linux..sockaddr_vm$u20$as$u20$core..clone..Clone$GT$5clone17h18a4ed0445c8d8f9E"(%"unix::linux_like::linux::sockaddr_vm"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::sockaddr_vm", align 4
  %1 = bitcast %"unix::linux_like::linux::sockaddr_vm"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sockaddr_vm"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::sockaddr_vm"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::regmatch_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN80_$LT$libc..unix..linux_like..linux..regmatch_t$u20$as$u20$core..clone..Clone$GT$5clone17h50474db2a713e32bE"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::sock_extended_err as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN87_$LT$libc..unix..linux_like..linux..sock_extended_err$u20$as$u20$core..clone..Clone$GT$5clone17h4c0c0056ff879b4dE"(%"unix::linux_like::linux::sock_extended_err"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::sock_extended_err", align 4
  %1 = bitcast %"unix::linux_like::linux::sock_extended_err"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sock_extended_err"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::sock_extended_err"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::__c_anonymous_sockaddr_can_tp as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN99_$LT$libc..unix..linux_like..linux..__c_anonymous_sockaddr_can_tp$u20$as$u20$core..clone..Clone$GT$5clone17h88d1c8079480aa44E"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN102_$LT$libc..unix..linux_like..linux..__c_anonymous_sockaddr_can_j1939$u20$as$u20$core..clone..Clone$GT$5clone17ha97269e1919aaf89E"(%"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939", align 8
  %1 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_j1939"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::can_filter as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN80_$LT$libc..unix..linux_like..linux..can_filter$u20$as$u20$core..clone..Clone$GT$5clone17h3d4d448d66c40d7bE"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::j1939_filter as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..j1939_filter$u20$as$u20$core..clone..Clone$GT$5clone17h4a74345c3ee79755E"(%"unix::linux_like::linux::j1939_filter"* noalias nocapture sret(%"unix::linux_like::linux::j1939_filter") dereferenceable(32) %0, %"unix::linux_like::linux::j1939_filter"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::j1939_filter"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::j1939_filter"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::sock_filter as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN81_$LT$libc..unix..linux_like..linux..sock_filter$u20$as$u20$core..clone..Clone$GT$5clone17h547830c1b0d6989eE"(%"unix::linux_like::linux::sock_filter"* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::sock_filter", align 4
  %1 = bitcast %"unix::linux_like::linux::sock_filter"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sock_filter"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::linux::sock_filter"* %0 to i64*
  %4 = load i64, i64* %3, align 4
  ret i64 %4
}

; <libc::unix::linux_like::linux::sock_fprog as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i32* } @"_ZN80_$LT$libc..unix..linux_like..linux..sock_fprog$u20$as$u20$core..clone..Clone$GT$5clone17hd9732af0ab79577aE"({ i16, i32* }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i32* }, { i16, i32* }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 8
  %2 = getelementptr inbounds { i16, i32* }, { i16, i32* }* %self, i32 0, i32 1
  %3 = load i32*, i32** %2, align 8
  %4 = insertvalue { i16, i32* } undef, i16 %1, 0
  %5 = insertvalue { i16, i32* } %4, i32* %3, 1
  ret { i16, i32* } %5
}

; <libc::unix::linux_like::linux::seccomp_data as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..seccomp_data$u20$as$u20$core..clone..Clone$GT$5clone17h5a930b046e8522a2E"(%"unix::linux_like::linux::seccomp_data"* noalias nocapture sret(%"unix::linux_like::linux::seccomp_data") dereferenceable(64) %0, %"unix::linux_like::linux::seccomp_data"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::seccomp_data"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::seccomp_data"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::nlmsghdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN78_$LT$libc..unix..linux_like..linux..nlmsghdr$u20$as$u20$core..clone..Clone$GT$5clone17h4d975c5661752832E"(%"unix::linux_like::linux::nlmsghdr"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::nlmsghdr", align 4
  %1 = bitcast %"unix::linux_like::linux::nlmsghdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::nlmsghdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::nlmsghdr"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::nlmsgerr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$libc..unix..linux_like..linux..nlmsgerr$u20$as$u20$core..clone..Clone$GT$5clone17hfc4d096482fefccaE"(%"unix::linux_like::linux::nlmsgerr"* noalias nocapture sret(%"unix::linux_like::linux::nlmsgerr") dereferenceable(20) %0, %"unix::linux_like::linux::nlmsgerr"* align 4 dereferenceable(20) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::nlmsgerr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::nlmsgerr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 20, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::nlattr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i16 } @"_ZN76_$LT$libc..unix..linux_like..linux..nlattr$u20$as$u20$core..clone..Clone$GT$5clone17h40eeed63609c77a8E"({ i16, i16 }* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 2
  %2 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = insertvalue { i16, i16 } undef, i16 %1, 0
  %5 = insertvalue { i16, i16 } %4, i16 %3, 1
  ret { i16, i16 } %5
}

; <libc::unix::linux_like::linux::sockaddr_nl as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN81_$LT$libc..unix..linux_like..linux..sockaddr_nl$u20$as$u20$core..clone..Clone$GT$5clone17hee60a5761e8a413bE"(%"unix::linux_like::linux::sockaddr_nl"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::sockaddr_nl", align 4
  %1 = bitcast %"unix::linux_like::linux::sockaddr_nl"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sockaddr_nl"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::sockaddr_nl"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::linux::dirent as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN76_$LT$libc..unix..linux_like..linux..dirent$u20$as$u20$core..clone..Clone$GT$5clone17h069569dc98a0af61E"(%"unix::linux_like::linux::dirent"* noalias nocapture sret(%"unix::linux_like::linux::dirent") dereferenceable(280) %0, %"unix::linux_like::linux::dirent"* align 8 dereferenceable(280) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::dirent"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::dirent"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 280, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::dirent64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN78_$LT$libc..unix..linux_like..linux..dirent64$u20$as$u20$core..clone..Clone$GT$5clone17he84305315697c6feE"(%"unix::linux_like::linux::dirent64"* noalias nocapture sret(%"unix::linux_like::linux::dirent64") dereferenceable(280) %0, %"unix::linux_like::linux::dirent64"* align 8 dereferenceable(280) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::dirent64"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::dirent64"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 280, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::sockaddr_alg as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..sockaddr_alg$u20$as$u20$core..clone..Clone$GT$5clone17h678c5a52a7391b2aE"(%"unix::linux_like::linux::sockaddr_alg"* noalias nocapture sret(%"unix::linux_like::linux::sockaddr_alg") dereferenceable(88) %0, %"unix::linux_like::linux::sockaddr_alg"* align 4 dereferenceable(88) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::sockaddr_alg"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sockaddr_alg"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 88, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::uinput_setup as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..uinput_setup$u20$as$u20$core..clone..Clone$GT$5clone17hfc17437639e2237bE"(%"unix::linux_like::linux::uinput_setup"* noalias nocapture sret(%"unix::linux_like::linux::uinput_setup") dereferenceable(92) %0, %"unix::linux_like::linux::uinput_setup"* align 4 dereferenceable(92) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::uinput_setup"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::uinput_setup"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 92, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::uinput_user_dev as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$libc..unix..linux_like..linux..uinput_user_dev$u20$as$u20$core..clone..Clone$GT$5clone17h17aede0d4f8474ccE"(%"unix::linux_like::linux::uinput_user_dev"* noalias nocapture sret(%"unix::linux_like::linux::uinput_user_dev") dereferenceable(1116) %0, %"unix::linux_like::linux::uinput_user_dev"* align 4 dereferenceable(1116) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::uinput_user_dev"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::uinput_user_dev"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 1116, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::af_alg_iv as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN79_$LT$libc..unix..linux_like..linux..af_alg_iv$u20$as$u20$core..clone..Clone$GT$5clone17h4e59d549eb4e1c5eE"(%"unix::linux_like::linux::af_alg_iv"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::af_alg_iv", align 4
  %1 = bitcast %"unix::linux_like::linux::af_alg_iv"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::af_alg_iv"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::linux::af_alg_iv"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::linux::mq_attr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$libc..unix..linux_like..linux..mq_attr$u20$as$u20$core..clone..Clone$GT$5clone17ha64974462282a4b6E"(%"unix::linux_like::linux::mq_attr"* noalias nocapture sret(%"unix::linux_like::linux::mq_attr") dereferenceable(64) %0, %"unix::linux_like::linux::mq_attr"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::mq_attr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::mq_attr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::sock_txtime as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN81_$LT$libc..unix..linux_like..linux..sock_txtime$u20$as$u20$core..clone..Clone$GT$5clone17hf3af9b6ca49c4de6E"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN105_$LT$libc..unix..linux_like..linux..__c_anonymous_sockaddr_can_can_addr$u20$as$u20$core..clone..Clone$GT$5clone17hb4c5425f7df63445E"(%"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr", align 8
  %1 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::__c_anonymous_sockaddr_can_can_addr"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::sockaddr_can as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..sockaddr_can$u20$as$u20$core..clone..Clone$GT$5clone17h6dab85f266c4dfb9E"(%"unix::linux_like::linux::sockaddr_can"* noalias nocapture sret(%"unix::linux_like::linux::sockaddr_can") dereferenceable(24) %0, %"unix::linux_like::linux::sockaddr_can"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::sockaddr_can"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::sockaddr_can"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_addr
; Function Attrs: nonlazybind uwtable
define i8* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$7si_addr17h380a80c6949cfb91E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* %self to %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_addr::siginfo_sigfault"*
  %0 = getelementptr inbounds %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_addr::siginfo_sigfault", %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_addr::siginfo_sigfault"* %_2, i32 0, i32 4
  %1 = load i8*, i8** %0, align 8
  ret i8* %1
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_value
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8si_value17h7754b9a2a7ad6292E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::sigval", align 8
  %_2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* %self to %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_value::siginfo_timer"*
  %1 = getelementptr inbounds %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_value::siginfo_timer", %"unix::linux_like::linux::gnu::<impl unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_value::siginfo_timer"* %_2, i32 0, i32 6
  %2 = bitcast %"unix::sigval"* %0 to i8*
  %3 = bitcast %"unix::sigval"* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 %3, i64 8, i1 false)
  %4 = bitcast %"unix::sigval"* %0 to i64*
  %5 = load i64, i64* %4, align 8
  ret i64 %5
}

; <libc::unix::linux_like::linux::gnu::statx as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..gnu..statx$u20$as$u20$core..clone..Clone$GT$5clone17hf599f62ce5d3079dE"(%"unix::linux_like::linux::gnu::statx"* noalias nocapture sret(%"unix::linux_like::linux::gnu::statx") dereferenceable(256) %0, %"unix::linux_like::linux::gnu::statx"* align 8 dereferenceable(256) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::statx"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::statx"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 256, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::statx_timestamp as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN90_$LT$libc..unix..linux_like..linux..gnu..statx_timestamp$u20$as$u20$core..clone..Clone$GT$5clone17he9900a59e3597dadE"(%"unix::linux_like::linux::gnu::statx_timestamp"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::statx_timestamp", align 8
  %1 = bitcast %"unix::linux_like::linux::gnu::statx_timestamp"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::statx_timestamp"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::statx_timestamp"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::aiocb as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..gnu..aiocb$u20$as$u20$core..clone..Clone$GT$5clone17hbb73ce9de7a72f3bE"(%"unix::linux_like::linux::gnu::aiocb"* noalias nocapture sret(%"unix::linux_like::linux::gnu::aiocb") dereferenceable(168) %0, %"unix::linux_like::linux::gnu::aiocb"* align 8 dereferenceable(168) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::aiocb"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::aiocb"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 168, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::__exit_status as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i16, i16 } @"_ZN88_$LT$libc..unix..linux_like..linux..gnu..__exit_status$u20$as$u20$core..clone..Clone$GT$5clone17h39cbbeb4c40bb4a2E"({ i16, i16 }* align 2 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 0
  %1 = load i16, i16* %0, align 2
  %2 = getelementptr inbounds { i16, i16 }, { i16, i16 }* %self, i32 0, i32 1
  %3 = load i16, i16* %2, align 2
  %4 = insertvalue { i16, i16 } undef, i16 %1, 0
  %5 = insertvalue { i16, i16 } %4, i16 %3, 1
  ret { i16, i16 } %5
}

; <libc::unix::linux_like::linux::gnu::__timeval as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i32, i32 } @"_ZN84_$LT$libc..unix..linux_like..linux..gnu..__timeval$u20$as$u20$core..clone..Clone$GT$5clone17h60d2437d98d1286bE"({ i32, i32 }* align 4 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 0
  %1 = load i32, i32* %0, align 4
  %2 = getelementptr inbounds { i32, i32 }, { i32, i32 }* %self, i32 0, i32 1
  %3 = load i32, i32* %2, align 4
  %4 = insertvalue { i32, i32 } undef, i32 %1, 0
  %5 = insertvalue { i32, i32 } %4, i32 %3, 1
  ret { i32, i32 } %5
}

; <libc::unix::linux_like::linux::gnu::glob64_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$libc..unix..linux_like..linux..gnu..glob64_t$u20$as$u20$core..clone..Clone$GT$5clone17ha528ec165518caabE"(%"unix::linux_like::linux::gnu::glob64_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::glob64_t") dereferenceable(72) %0, %"unix::linux_like::linux::gnu::glob64_t"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::glob64_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::glob64_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::msghdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$libc..unix..linux_like..linux..gnu..msghdr$u20$as$u20$core..clone..Clone$GT$5clone17h1bd8aca97997ed0cE"(%"unix::linux_like::linux::gnu::msghdr"* noalias nocapture sret(%"unix::linux_like::linux::gnu::msghdr") dereferenceable(56) %0, %"unix::linux_like::linux::gnu::msghdr"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::msghdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::msghdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::cmsghdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN82_$LT$libc..unix..linux_like..linux..gnu..cmsghdr$u20$as$u20$core..clone..Clone$GT$5clone17h18a2625bd07194aaE"(%"unix::linux_like::linux::gnu::cmsghdr"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::cmsghdr", align 8
  %1 = bitcast %"unix::linux_like::linux::gnu::cmsghdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::cmsghdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::cmsghdr"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::termios as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..gnu..termios$u20$as$u20$core..clone..Clone$GT$5clone17hf3543a803f0c5687E"(%"unix::linux_like::linux::gnu::termios"* noalias nocapture sret(%"unix::linux_like::linux::gnu::termios") dereferenceable(60) %0, %"unix::linux_like::linux::gnu::termios"* align 4 dereferenceable(60) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::termios"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::termios"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 60, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::mallinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN83_$LT$libc..unix..linux_like..linux..gnu..mallinfo$u20$as$u20$core..clone..Clone$GT$5clone17h360f01be49a24196E"(%"unix::linux_like::linux::gnu::mallinfo"* noalias nocapture sret(%"unix::linux_like::linux::gnu::mallinfo") dereferenceable(40) %0, %"unix::linux_like::linux::gnu::mallinfo"* align 4 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::mallinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::mallinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::mallinfo2 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$libc..unix..linux_like..linux..gnu..mallinfo2$u20$as$u20$core..clone..Clone$GT$5clone17h99559cd6ebc27e28E"(%"unix::linux_like::linux::gnu::mallinfo2"* noalias nocapture sret(%"unix::linux_like::linux::gnu::mallinfo2") dereferenceable(80) %0, %"unix::linux_like::linux::gnu::mallinfo2"* align 8 dereferenceable(80) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::mallinfo2"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::mallinfo2"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 80, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::nl_pktinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN85_$LT$libc..unix..linux_like..linux..gnu..nl_pktinfo$u20$as$u20$core..clone..Clone$GT$5clone17hc35f08f538662421E"(%"unix::linux_like::linux::gnu::nl_pktinfo"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::nl_pktinfo", align 4
  %1 = bitcast %"unix::linux_like::linux::gnu::nl_pktinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::nl_pktinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::nl_pktinfo"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::linux::gnu::nl_mmap_req as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN86_$LT$libc..unix..linux_like..linux..gnu..nl_mmap_req$u20$as$u20$core..clone..Clone$GT$5clone17hbe8e8918d08f9b69E"(%"unix::linux_like::linux::gnu::nl_mmap_req"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::nl_mmap_req", align 4
  %1 = bitcast %"unix::linux_like::linux::gnu::nl_mmap_req"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::nl_mmap_req"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::nl_mmap_req"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::nl_mmap_hdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$libc..unix..linux_like..linux..gnu..nl_mmap_hdr$u20$as$u20$core..clone..Clone$GT$5clone17h14e64638a3832d8cE"(%"unix::linux_like::linux::gnu::nl_mmap_hdr"* noalias nocapture sret(%"unix::linux_like::linux::gnu::nl_mmap_hdr") dereferenceable(24) %0, %"unix::linux_like::linux::gnu::nl_mmap_hdr"* align 4 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::nl_mmap_hdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::nl_mmap_hdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::rtentry as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..gnu..rtentry$u20$as$u20$core..clone..Clone$GT$5clone17h1b0fb7846d5f4793E"(%"unix::linux_like::linux::gnu::rtentry"* noalias nocapture sret(%"unix::linux_like::linux::gnu::rtentry") dereferenceable(120) %0, %"unix::linux_like::linux::gnu::rtentry"* align 8 dereferenceable(120) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::rtentry"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::rtentry"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 120, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::timex as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..gnu..timex$u20$as$u20$core..clone..Clone$GT$5clone17hc0e891f42a16dd00E"(%"unix::linux_like::linux::gnu::timex"* noalias nocapture sret(%"unix::linux_like::linux::gnu::timex") dereferenceable(208) %0, %"unix::linux_like::linux::gnu::timex"* align 8 dereferenceable(208) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::timex"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::timex"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 208, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::ntptimeval as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$libc..unix..linux_like..linux..gnu..ntptimeval$u20$as$u20$core..clone..Clone$GT$5clone17h4977ebb4c023ea96E"(%"unix::linux_like::linux::gnu::ntptimeval"* noalias nocapture sret(%"unix::linux_like::linux::gnu::ntptimeval") dereferenceable(72) %0, %"unix::linux_like::linux::gnu::ntptimeval"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::ntptimeval"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::ntptimeval"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::regex_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..gnu..regex_t$u20$as$u20$core..clone..Clone$GT$5clone17h3f1f40e0a0ee61e8E"(%"unix::linux_like::linux::gnu::regex_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::regex_t") dereferenceable(64) %0, %"unix::linux_like::linux::gnu::regex_t"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::regex_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::regex_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::Elf64_Chdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$libc..unix..linux_like..linux..gnu..Elf64_Chdr$u20$as$u20$core..clone..Clone$GT$5clone17h3b193d408baf6d2aE"(%"unix::linux_like::linux::gnu::Elf64_Chdr"* noalias nocapture sret(%"unix::linux_like::linux::gnu::Elf64_Chdr") dereferenceable(24) %0, %"unix::linux_like::linux::gnu::Elf64_Chdr"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::Elf64_Chdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::Elf64_Chdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::Elf32_Chdr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i96 @"_ZN85_$LT$libc..unix..linux_like..linux..gnu..Elf32_Chdr$u20$as$u20$core..clone..Clone$GT$5clone17h7c509bca7b651217E"(%"unix::linux_like::linux::gnu::Elf32_Chdr"* align 4 dereferenceable(12) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::Elf32_Chdr", align 4
  %1 = bitcast %"unix::linux_like::linux::gnu::Elf32_Chdr"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::Elf32_Chdr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 12, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::Elf32_Chdr"* %0 to i96*
  %4 = load i96, i96* %3, align 4
  ret i96 %4
}

; <libc::unix::linux_like::linux::gnu::seminfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN82_$LT$libc..unix..linux_like..linux..gnu..seminfo$u20$as$u20$core..clone..Clone$GT$5clone17h0dde96b5dea5419cE"(%"unix::linux_like::linux::gnu::seminfo"* noalias nocapture sret(%"unix::linux_like::linux::gnu::seminfo") dereferenceable(40) %0, %"unix::linux_like::linux::gnu::seminfo"* align 4 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::seminfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::seminfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::ptrace_peeksiginfo_args as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN98_$LT$libc..unix..linux_like..linux..gnu..ptrace_peeksiginfo_args$u20$as$u20$core..clone..Clone$GT$5clone17h3f830d47e9df3113E"(%"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args", align 8
  %1 = bitcast %"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::ptrace_peeksiginfo_args"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN114_$LT$libc..unix..linux_like..linux..gnu..__c_anonymous_ptrace_syscall_info_entry$u20$as$u20$core..clone..Clone$GT$5clone17h9477f58ea4fd626bE"(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry"* noalias nocapture sret(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry") dereferenceable(56) %0, %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_entry"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_exit as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define { i64, i8 } @"_ZN113_$LT$libc..unix..linux_like..linux..gnu..__c_anonymous_ptrace_syscall_info_exit$u20$as$u20$core..clone..Clone$GT$5clone17h465b25d5e7763807E"({ i64, i8 }* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %self, i32 0, i32 0
  %1 = load i64, i64* %0, align 8
  %2 = getelementptr inbounds { i64, i8 }, { i64, i8 }* %self, i32 0, i32 1
  %3 = load i8, i8* %2, align 8
  %4 = insertvalue { i64, i8 } undef, i64 %1, 0
  %5 = insertvalue { i64, i8 } %4, i8 %3, 1
  ret { i64, i8 } %5
}

; <libc::unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN116_$LT$libc..unix..linux_like..linux..gnu..__c_anonymous_ptrace_syscall_info_seccomp$u20$as$u20$core..clone..Clone$GT$5clone17h41e5ea68991e6ddaE"(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp"* noalias nocapture sret(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp") dereferenceable(64) %0, %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_seccomp"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::ptrace_syscall_info as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$libc..unix..linux_like..linux..gnu..ptrace_syscall_info$u20$as$u20$core..clone..Clone$GT$5clone17h03f90776409939a7E"(%"unix::linux_like::linux::gnu::ptrace_syscall_info"* noalias nocapture sret(%"unix::linux_like::linux::gnu::ptrace_syscall_info") dereferenceable(88) %0, %"unix::linux_like::linux::gnu::ptrace_syscall_info"* align 8 dereferenceable(88) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::ptrace_syscall_info"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::ptrace_syscall_info"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 88, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::sifields_sigchld as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN91_$LT$libc..unix..linux_like..linux..gnu..sifields_sigchld$u20$as$u20$core..clone..Clone$GT$5clone17h3bfdd4e7b145bb0fE"(%"unix::linux_like::linux::gnu::sifields_sigchld"* noalias nocapture sret(%"unix::linux_like::linux::gnu::sifields_sigchld") dereferenceable(32) %0, %"unix::linux_like::linux::gnu::sifields_sigchld"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::sifields_sigchld"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::sifields_sigchld"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
; Function Attrs: nonlazybind uwtable
define internal align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %_2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* %self to %"unix::linux_like::linux::gnu::siginfo_f"*
  %0 = getelementptr inbounds %"unix::linux_like::linux::gnu::siginfo_f", %"unix::linux_like::linux::gnu::siginfo_f"* %_2, i32 0, i32 2
  ret %"unix::linux_like::linux::gnu::sifields"* %0
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_pid
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$6si_pid17h2f2451b9d03c1e9aE"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
; call libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
  %_2 = call align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"unix::linux_like::linux::gnu::sifields"* %_2 to %"unix::linux_like::linux::gnu::sifields_sigchld"*
  %1 = bitcast %"unix::linux_like::linux::gnu::sifields_sigchld"* %0 to i32*
  %2 = load i32, i32* %1, align 8
  ret i32 %2
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_uid
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$6si_uid17hc98a6c54db5024a8E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
; call libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
  %_2 = call align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"unix::linux_like::linux::gnu::sifields"* %_2 to %"unix::linux_like::linux::gnu::sifields_sigchld"*
  %1 = getelementptr inbounds %"unix::linux_like::linux::gnu::sifields_sigchld", %"unix::linux_like::linux::gnu::sifields_sigchld"* %0, i32 0, i32 1
  %2 = load i32, i32* %1, align 4
  ret i32 %2
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_status
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$9si_status17hcf7d256d875da385E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
; call libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
  %_2 = call align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"unix::linux_like::linux::gnu::sifields"* %_2 to %"unix::linux_like::linux::gnu::sifields_sigchld"*
  %1 = getelementptr inbounds %"unix::linux_like::linux::gnu::sifields_sigchld", %"unix::linux_like::linux::gnu::sifields_sigchld"* %0, i32 0, i32 2
  %2 = load i32, i32* %1, align 8
  ret i32 %2
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_utime
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8si_utime17hf01cc100992c031bE"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
; call libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
  %_2 = call align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"unix::linux_like::linux::gnu::sifields"* %_2 to %"unix::linux_like::linux::gnu::sifields_sigchld"*
  %1 = getelementptr inbounds %"unix::linux_like::linux::gnu::sifields_sigchld", %"unix::linux_like::linux::gnu::sifields_sigchld"* %0, i32 0, i32 4
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::si_stime
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8si_stime17h7096591677ef7accE"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
; call libc::unix::linux_like::linux::gnu::<impl libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t>::sifields
  %_2 = call align 8 dereferenceable(32) %"unix::linux_like::linux::gnu::sifields"* @"_ZN4libc4unix10linux_like5linux3gnu76_$LT$impl$u20$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$GT$8sifields17hb911a47b0be556c2E"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self)
  br label %bb1

bb1:                                              ; preds = %start
  %0 = bitcast %"unix::linux_like::linux::gnu::sifields"* %_2 to %"unix::linux_like::linux::gnu::sifields_sigchld"*
  %1 = getelementptr inbounds %"unix::linux_like::linux::gnu::sifields_sigchld", %"unix::linux_like::linux::gnu::sifields_sigchld"* %0, i32 0, i32 5
  %2 = load i64, i64* %1, align 8
  ret i64 %2
}

; <libc::unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN113_$LT$libc..unix..linux_like..linux..gnu..__c_anonymous_ptrace_syscall_info_data$u20$as$u20$core..clone..Clone$GT$5clone17h913f162019f5b496E"(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data"* noalias nocapture sret(%"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data") dereferenceable(64) %0, %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data"* align 8 dereferenceable(64) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::__c_anonymous_ptrace_syscall_info_data"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 64, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::utmpx as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN80_$LT$libc..unix..linux_like..linux..gnu..utmpx$u20$as$u20$core..clone..Clone$GT$5clone17h8db665c4c027581aE"(%"unix::linux_like::linux::gnu::utmpx"* noalias nocapture sret(%"unix::linux_like::linux::gnu::utmpx") dereferenceable(384) %0, %"unix::linux_like::linux::gnu::utmpx"* align 4 dereferenceable(384) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::utmpx"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::utmpx"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 384, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::sigset_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$libc..unix..linux_like..linux..gnu..b64..sigset_t$u20$as$u20$core..clone..Clone$GT$5clone17hfb66cb074c4cda28E"(%"unix::linux_like::linux::gnu::b64::sigset_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::sigset_t") dereferenceable(128) %0, %"unix::linux_like::linux::gnu::b64::sigset_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::sigset_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::sigset_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::sysinfo as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$libc..unix..linux_like..linux..gnu..b64..sysinfo$u20$as$u20$core..clone..Clone$GT$5clone17h63b957e9923d23b2E"(%"unix::linux_like::linux::gnu::b64::sysinfo"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::sysinfo") dereferenceable(112) %0, %"unix::linux_like::linux::gnu::b64::sysinfo"* align 8 dereferenceable(112) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::sysinfo"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::sysinfo"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 112, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::msqid_ds as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$libc..unix..linux_like..linux..gnu..b64..msqid_ds$u20$as$u20$core..clone..Clone$GT$5clone17h6a3e5c8ce25ecba7E"(%"unix::linux_like::linux::gnu::b64::msqid_ds"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::msqid_ds") dereferenceable(120) %0, %"unix::linux_like::linux::gnu::b64::msqid_ds"* align 8 dereferenceable(120) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::msqid_ds"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::msqid_ds"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 120, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::semid_ds as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$libc..unix..linux_like..linux..gnu..b64..semid_ds$u20$as$u20$core..clone..Clone$GT$5clone17hac6434592903e3b5E"(%"unix::linux_like::linux::gnu::b64::semid_ds"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::semid_ds") dereferenceable(104) %0, %"unix::linux_like::linux::gnu::b64::semid_ds"* align 8 dereferenceable(104) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::semid_ds"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::semid_ds"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 104, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::sigaction as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..sigaction$u20$as$u20$core..clone..Clone$GT$5clone17h84c3394a4f1d1faaE"(%"unix::linux_like::linux::gnu::b64::x86_64::sigaction"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::sigaction") dereferenceable(152) %0, %"unix::linux_like::linux::gnu::b64::x86_64::sigaction"* align 8 dereferenceable(152) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::sigaction"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::sigaction"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 152, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::statfs as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..statfs$u20$as$u20$core..clone..Clone$GT$5clone17h2486e78903a553d5E"(%"unix::linux_like::linux::gnu::b64::x86_64::statfs"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::statfs") dereferenceable(120) %0, %"unix::linux_like::linux::gnu::b64::x86_64::statfs"* align 8 dereferenceable(120) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statfs"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statfs"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 120, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::flock as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN93_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..flock$u20$as$u20$core..clone..Clone$GT$5clone17h202f0bd20067499bE"(%"unix::linux_like::linux::gnu::b64::x86_64::flock"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::flock") dereferenceable(32) %0, %"unix::linux_like::linux::gnu::b64::x86_64::flock"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::flock"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::flock"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::flock64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..flock64$u20$as$u20$core..clone..Clone$GT$5clone17h3f3b23eb629f1debE"(%"unix::linux_like::linux::gnu::b64::x86_64::flock64"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::flock64") dereferenceable(32) %0, %"unix::linux_like::linux::gnu::b64::x86_64::flock64"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::flock64"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::flock64"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::siginfo_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..siginfo_t$u20$as$u20$core..clone..Clone$GT$5clone17h9c2449475cfd015eE"(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t") dereferenceable(128) %0, %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* align 8 dereferenceable(128) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::siginfo_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 128, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::stack_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN95_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..stack_t$u20$as$u20$core..clone..Clone$GT$5clone17hfa98505ee7b2cc7aE"(%"unix::linux_like::linux::gnu::b64::x86_64::stack_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::stack_t") dereferenceable(24) %0, %"unix::linux_like::linux::gnu::b64::x86_64::stack_t"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stack_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stack_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::stat as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..stat$u20$as$u20$core..clone..Clone$GT$5clone17h3b53511865b6f4aaE"(%"unix::linux_like::linux::gnu::b64::x86_64::stat"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::stat") dereferenceable(144) %0, %"unix::linux_like::linux::gnu::b64::x86_64::stat"* align 8 dereferenceable(144) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stat"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stat"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 144, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::stat64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..stat64$u20$as$u20$core..clone..Clone$GT$5clone17hb281bc9f30a3f2b6E"(%"unix::linux_like::linux::gnu::b64::x86_64::stat64"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::stat64") dereferenceable(144) %0, %"unix::linux_like::linux::gnu::b64::x86_64::stat64"* align 8 dereferenceable(144) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stat64"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::stat64"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 144, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::statfs64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..statfs64$u20$as$u20$core..clone..Clone$GT$5clone17hcba0792611e361b4E"(%"unix::linux_like::linux::gnu::b64::x86_64::statfs64"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::statfs64") dereferenceable(120) %0, %"unix::linux_like::linux::gnu::b64::x86_64::statfs64"* align 8 dereferenceable(120) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statfs64"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statfs64"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 120, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::statvfs64 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN97_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..statvfs64$u20$as$u20$core..clone..Clone$GT$5clone17h7092d85d3007af86E"(%"unix::linux_like::linux::gnu::b64::x86_64::statvfs64"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::statvfs64") dereferenceable(112) %0, %"unix::linux_like::linux::gnu::b64::x86_64::statvfs64"* align 8 dereferenceable(112) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statvfs64"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::statvfs64"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 112, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN102_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..pthread_attr_t$u20$as$u20$core..clone..Clone$GT$5clone17hbaa7c22229adf320E"(%"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t") dereferenceable(56) %0, %"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::pthread_attr_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN100_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64.._libc_fpxreg$u20$as$u20$core..clone..Clone$GT$5clone17h7573eba4acd771a0E"(%"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg"* align 2 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg", align 2
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpxreg"* %0 to i128*
  %4 = load i128, i128* %3, align 2
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN100_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64.._libc_xmmreg$u20$as$u20$core..clone..Clone$GT$5clone17h63f89f07d002e780E"(%"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg", align 4
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_xmmreg"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN101_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64.._libc_fpstate$u20$as$u20$core..clone..Clone$GT$5clone17hb0260f3af22b1444E"(%"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate") dereferenceable(512) %0, %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate"* align 8 dereferenceable(512) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::_libc_fpstate"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 512, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..user_regs_struct$u20$as$u20$core..clone..Clone$GT$5clone17h03bc57b6673db903E"(%"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct") dereferenceable(216) %0, %"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct"* align 8 dereferenceable(216) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user_regs_struct"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 216, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::user as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN92_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..user$u20$as$u20$core..clone..Clone$GT$5clone17hb77d24f6bbbdeaa2E"(%"unix::linux_like::linux::gnu::b64::x86_64::user"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::user") dereferenceable(912) %0, %"unix::linux_like::linux::gnu::b64::x86_64::user"* align 8 dereferenceable(912) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 912, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::mcontext_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..mcontext_t$u20$as$u20$core..clone..Clone$GT$5clone17h8e803127073327dbE"(%"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t") dereferenceable(256) %0, %"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t"* align 8 dereferenceable(256) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::mcontext_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 256, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::ipc_perm as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..ipc_perm$u20$as$u20$core..clone..Clone$GT$5clone17h722196c2fcb258fcE"(%"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm") dereferenceable(48) %0, %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm"* align 8 dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::ipc_perm"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::shmid_ds as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN96_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..shmid_ds$u20$as$u20$core..clone..Clone$GT$5clone17he2412900b1883a08E"(%"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds") dereferenceable(112) %0, %"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds"* align 8 dereferenceable(112) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::shmid_ds"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 112, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i48 @"_ZN107_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..seccomp_notif_sizes$u20$as$u20$core..clone..Clone$GT$5clone17h6cd762c0e62d1e37E"(%"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes"* align 2 dereferenceable(6) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes", align 2
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 2 %1, i8* align 2 %2, i64 6, i1 false)
  %3 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::seccomp_notif_sizes"* %0 to i48*
  %4 = load i48, i48* %3, align 2
  ret i48 %4
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN106_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..user_fpregs_struct$u20$as$u20$core..clone..Clone$GT$5clone17h82c0bd8105c41d9aE"(%"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct") dereferenceable(512) %0, %"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct"* align 8 dereferenceable(512) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::user_fpregs_struct"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 512, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::ucontext_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..ucontext_t$u20$as$u20$core..clone..Clone$GT$5clone17hf9b5cc2de9f69639E"(%"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t") dereferenceable(936) %0, %"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t"* align 8 dereferenceable(936) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::ucontext_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 936, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN104_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..not_x32..statvfs$u20$as$u20$core..clone..Clone$GT$5clone17had29e4b4a68f0adaE"(%"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs") dereferenceable(112) %0, %"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs"* align 8 dereferenceable(112) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::not_x32::statvfs"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 112, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN106_$LT$libc..unix..linux_like..linux..gnu..b64..x86_64..align..max_align_t$u20$as$u20$core..clone..Clone$GT$5clone17h7f91abc1f1aa53d6E"(%"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t") dereferenceable(32) %0, %"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t"* align 16 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::b64::x86_64::align::max_align_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %1, i8* align 16 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::gnu::align::sem_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN87_$LT$libc..unix..linux_like..linux..gnu..align..sem_t$u20$as$u20$core..clone..Clone$GT$5clone17he142fd7270ab462fE"(%"unix::linux_like::linux::gnu::align::sem_t"* noalias nocapture sret(%"unix::linux_like::linux::gnu::align::sem_t") dereferenceable(32) %0, %"unix::linux_like::linux::gnu::align::sem_t"* align 8 dereferenceable(32) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::gnu::align::sem_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::gnu::align::sem_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 32, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::arch::generic::termios2 as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN93_$LT$libc..unix..linux_like..linux..arch..generic..termios2$u20$as$u20$core..clone..Clone$GT$5clone17h4a11ba2206f06b78E"(%"unix::linux_like::linux::arch::generic::termios2"* noalias nocapture sret(%"unix::linux_like::linux::arch::generic::termios2") dereferenceable(44) %0, %"unix::linux_like::linux::arch::generic::termios2"* align 4 dereferenceable(44) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::arch::generic::termios2"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::arch::generic::termios2"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 44, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::pthread_mutexattr_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN89_$LT$libc..unix..linux_like..linux..pthread_mutexattr_t$u20$as$u20$core..clone..Clone$GT$5clone17h12fb02084906e7bbE"(%"unix::linux_like::linux::pthread_mutexattr_t"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::pthread_mutexattr_t", align 4
  %1 = bitcast %"unix::linux_like::linux::pthread_mutexattr_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_mutexattr_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::linux::pthread_mutexattr_t"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::linux::pthread_rwlockattr_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i64 @"_ZN90_$LT$libc..unix..linux_like..linux..pthread_rwlockattr_t$u20$as$u20$core..clone..Clone$GT$5clone17h02b971f60fc2a8a3E"(%"unix::linux_like::linux::pthread_rwlockattr_t"* align 8 dereferenceable(8) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::pthread_rwlockattr_t", align 8
  %1 = bitcast %"unix::linux_like::linux::pthread_rwlockattr_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_rwlockattr_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 8, i1 false)
  %3 = bitcast %"unix::linux_like::linux::pthread_rwlockattr_t"* %0 to i64*
  %4 = load i64, i64* %3, align 8
  ret i64 %4
}

; <libc::unix::linux_like::linux::pthread_condattr_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i32 @"_ZN88_$LT$libc..unix..linux_like..linux..pthread_condattr_t$u20$as$u20$core..clone..Clone$GT$5clone17he9a979897f7ae69dE"(%"unix::linux_like::linux::pthread_condattr_t"* align 4 dereferenceable(4) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::pthread_condattr_t", align 4
  %1 = bitcast %"unix::linux_like::linux::pthread_condattr_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_condattr_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 4, i1 false)
  %3 = bitcast %"unix::linux_like::linux::pthread_condattr_t"* %0 to i32*
  %4 = load i32, i32* %3, align 4
  ret i32 %4
}

; <libc::unix::linux_like::linux::fanotify_event_metadata as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN93_$LT$libc..unix..linux_like..linux..fanotify_event_metadata$u20$as$u20$core..clone..Clone$GT$5clone17hc22b0114f442c2e2E"(%"unix::linux_like::linux::fanotify_event_metadata"* noalias nocapture sret(%"unix::linux_like::linux::fanotify_event_metadata") dereferenceable(24) %0, %"unix::linux_like::linux::fanotify_event_metadata"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::fanotify_event_metadata"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::fanotify_event_metadata"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::pthread_cond_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$libc..unix..linux_like..linux..pthread_cond_t$u20$as$u20$core..clone..Clone$GT$5clone17h7ee23641e16a0456E"(%"unix::linux_like::linux::pthread_cond_t"* noalias nocapture sret(%"unix::linux_like::linux::pthread_cond_t") dereferenceable(48) %0, %"unix::linux_like::linux::pthread_cond_t"* align 8 dereferenceable(48) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::pthread_cond_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_cond_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 48, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::pthread_mutex_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN85_$LT$libc..unix..linux_like..linux..pthread_mutex_t$u20$as$u20$core..clone..Clone$GT$5clone17h80d3562386db7d26E"(%"unix::linux_like::linux::pthread_mutex_t"* noalias nocapture sret(%"unix::linux_like::linux::pthread_mutex_t") dereferenceable(40) %0, %"unix::linux_like::linux::pthread_mutex_t"* align 8 dereferenceable(40) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::pthread_mutex_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_mutex_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 40, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::pthread_rwlock_t as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN86_$LT$libc..unix..linux_like..linux..pthread_rwlock_t$u20$as$u20$core..clone..Clone$GT$5clone17he7b7e178dcb0742aE"(%"unix::linux_like::linux::pthread_rwlock_t"* noalias nocapture sret(%"unix::linux_like::linux::pthread_rwlock_t") dereferenceable(56) %0, %"unix::linux_like::linux::pthread_rwlock_t"* align 8 dereferenceable(56) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::pthread_rwlock_t"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::pthread_rwlock_t"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 56, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::can_frame as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN79_$LT$libc..unix..linux_like..linux..can_frame$u20$as$u20$core..clone..Clone$GT$5clone17h7fb66a5789fc5b8bE"(%"unix::linux_like::linux::can_frame"* align 8 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::linux_like::linux::can_frame", align 8
  %1 = bitcast %"unix::linux_like::linux::can_frame"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::can_frame"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 16, i1 false)
  %3 = bitcast %"unix::linux_like::linux::can_frame"* %0 to i128*
  %4 = load i128, i128* %3, align 8
  ret i128 %4
}

; <libc::unix::linux_like::linux::canfd_frame as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$libc..unix..linux_like..linux..canfd_frame$u20$as$u20$core..clone..Clone$GT$5clone17hfa6a530bc01dfc0fE"(%"unix::linux_like::linux::canfd_frame"* noalias nocapture sret(%"unix::linux_like::linux::canfd_frame") dereferenceable(72) %0, %"unix::linux_like::linux::canfd_frame"* align 8 dereferenceable(72) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::canfd_frame"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::canfd_frame"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 72, i1 false)
  ret void
}

; <libc::unix::linux_like::linux::non_exhaustive::open_how as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define void @"_ZN94_$LT$libc..unix..linux_like..linux..non_exhaustive..open_how$u20$as$u20$core..clone..Clone$GT$5clone17hdff581500e2026dcE"(%"unix::linux_like::linux::non_exhaustive::open_how"* noalias nocapture sret(%"unix::linux_like::linux::non_exhaustive::open_how") dereferenceable(24) %0, %"unix::linux_like::linux::non_exhaustive::open_how"* align 8 dereferenceable(24) %self) unnamed_addr #1 {
start:
  %1 = bitcast %"unix::linux_like::linux::non_exhaustive::open_how"* %0 to i8*
  %2 = bitcast %"unix::linux_like::linux::non_exhaustive::open_how"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %1, i8* align 8 %2, i64 24, i1 false)
  ret void
}

; <libc::unix::align::in6_addr as core::clone::Clone>::clone
; Function Attrs: nonlazybind uwtable
define i128 @"_ZN66_$LT$libc..unix..align..in6_addr$u20$as$u20$core..clone..Clone$GT$5clone17h06ab9175b206ac82E"(%"unix::align::in6_addr"* align 4 dereferenceable(16) %self) unnamed_addr #1 {
start:
  %0 = alloca %"unix::align::in6_addr", align 4
  %1 = bitcast %"unix::align::in6_addr"* %0 to i8*
  %2 = bitcast %"unix::align::in6_addr"* %self to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %1, i8* align 4 %2, i64 16, i1 false)
  %3 = bitcast %"unix::align::in6_addr"* %0 to i128*
  %4 = load i128, i128* %3, align 4
  ret i128 %4
}

; Function Attrs: cold noreturn nounwind
declare void @llvm.trap() #2

; Function Attrs: argmemonly nofree nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

attributes #0 = { noreturn nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="__rust_probestack" "target-cpu"="x86-64" }
attributes #2 = { cold noreturn nounwind }
attributes #3 = { argmemonly nofree nounwind willreturn }

!llvm.module.flags = !{!0, !1}

!0 = !{i32 7, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}

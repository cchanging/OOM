#include <thread>

extern "C" {
struct Count;
Count* get_thread_local();
}

struct Count{
public:
    uint64_t allocated;
    uint64_t deallocated;
    uint64_t peak;
    bool flag;
    char* name;
    int64_t alloc_msg[4096];
    uint64_t alloc_msg_point;
};

thread_local Count COUNTER = {allocated:0,deallocated:0,peak:0,flag:false,name:"",alloc_msg:{0}, alloc_msg_point:0};

Count* get_thread_local() {
  return &COUNTER;
}
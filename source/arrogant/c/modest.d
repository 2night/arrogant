module arrogant.c.modest;


        import core.stdc.config;
        import core.stdc.stdarg: va_list;
        struct __locale_data { int dummy; }

alias _Bool = bool;
struct dpp {
    static struct Move(T) {
        T* ptr;
    }

    static auto move(T)(ref T value) {
        return Move!T(&value);
    }
    mixin template EnumD(string name, T, string prefix) if(is(T == enum)) {
        private static string _memberMixinStr(string member) {
            import std.conv: text;
            import std.array: replace;
            return text(` `, member.replace(prefix, ""), ` = `, T.stringof, `.`, member, `,`);
        }
        private static string _enumMixinStr() {
            import std.array: join;
            string[] ret;
            ret ~= "enum " ~ name ~ "{";
            static foreach(member; __traits(allMembers, T)) {
                ret ~= _memberMixinStr(member);
            }
            ret ~= "}";
            return ret.join("\n");
        }
        mixin(_enumMixinStr());
    }
}


extern(C)
{
    struct __sigset_t
    {
        c_ulong[16] __val;
    }
    alias __FILE = _IO_FILE;


    alias FILE = _IO_FILE;
    alias clock_t = c_long;
    alias time_t = c_long;


    alias sigset_t = __sigset_t;
    alias clockid_t = int;
    alias timer_t = void*;
    struct timeval
    {
        __time_t tv_sec;
        __suseconds_t tv_usec;
    }
    struct timespec
    {
        __time_t tv_sec;
        __syscall_slong_t tv_nsec;
    }
    struct __mbstate_t
    {
        int __count;
        static union _Anonymous_0
        {
            uint __wch;
            char[4] __wchb;
        }
        _Anonymous_0 __value;
    }
    alias locale_t = __locale_struct*;


    alias uint8_t = ubyte;




    alias int8_t = byte;






    alias uint16_t = ushort;
    alias int16_t = short;
    alias int32_t = int;
    alias uint32_t = uint;




    extern __gshared int sys_nerr;
    struct _G_fpos_t
    {
        __off_t __pos;
        __mbstate_t __state;
    }
    alias int64_t = c_long;
    alias uint64_t = c_ulong;


    alias pthread_t = c_ulong;
    extern __gshared const(const(char)*)[0] sys_errlist;


    struct __locale_struct
    {
        __locale_data*[13] __locales;
        const(ushort)* __ctype_b;
        const(int)* __ctype_tolower;
        const(int)* __ctype_toupper;
        const(char)*[13] __names;
    }
    alias __u_char = ubyte;
    alias mcsync_status_t = mcsync_status;
    enum mcsync_status
    {
        MCSYNC_STATUS_OK = 0,
        MCSYNC_STATUS_NOT_OK = 1,
        MCSYNC_STATUS_ERROR_MEM_ALLOCATE = 2,
    }
    enum MCSYNC_STATUS_OK = mcsync_status.MCSYNC_STATUS_OK;
    enum MCSYNC_STATUS_NOT_OK = mcsync_status.MCSYNC_STATUS_NOT_OK;
    enum MCSYNC_STATUS_ERROR_MEM_ALLOCATE = mcsync_status.MCSYNC_STATUS_ERROR_MEM_ALLOCATE;


    alias __u_short = ushort;
    struct _G_fpos64_t
    {
        __off64_t __pos;
        __mbstate_t __state;
    }







    union pthread_mutexattr_t
    {
        char[4] __size;
        int __align;
    }


    static __uint16_t __uint16_identity(__uint16_t) @nogc nothrow;


    void* alloca(size_t) @nogc nothrow;


    alias __u_int = uint;


    alias __u_long = c_ulong;
    alias u_char = ubyte;


    int bcmp(const(void)*, const(void)*, size_t) @nogc nothrow;
    alias __gwchar_t = int;






    alias u_short = ushort;






    alias mchar_async_node_t = mchar_async_node;




    alias u_int = uint;


    struct myencoding_result
    {
        c_ulong first;
        c_ulong second;
        c_ulong third;
        c_ulong result;
        c_ulong result_aux;
        c_ulong flag;
    }
    alias u_long = c_ulong;




    struct mchar_async_cache_node
    {
        void* value;
        size_t size;
        size_t left;
        size_t right;
        size_t parent;
    }
    alias mchar_async_cache_node_t = mchar_async_cache_node;


    alias __int8_t = byte;



    alias __uint8_t = ubyte;
    alias quad_t = c_long;
    size_t mycore_power(size_t, size_t) @nogc nothrow;
    alias mcsync_t = mcsync;
    alias __int16_t = short;


    struct mcsync
    {
        int* spinlock;
        void* mutex;
    }


    void bcopy(const(void)*, void*, size_t) @nogc nothrow;
    static __uint32_t __uint32_identity(__uint32_t) @nogc nothrow;
    alias u_quad_t = c_ulong;
    alias fsid_t = __fsid_t;
    alias __uint16_t = ushort;


    size_t mycore_strncasecmp(const(char)*, const(char)*, size_t) @nogc nothrow;
    alias __int32_t = int;
    size_t mycore_strcasecmp(const(char)*, const(char)*) @nogc nothrow;


    union pthread_condattr_t
    {
        char[4] __size;
        int __align;
    }






    alias __uint32_t = uint;
    size_t mycore_strncmp(const(char)*, const(char)*, size_t) @nogc nothrow;




    size_t mycore_strcmp(const(char)*, const(char)*) @nogc nothrow;
    alias __locale_t = __locale_struct*;


    void bzero(void*, size_t) @nogc nothrow;
    void* memcpy(void*, const(void)*, size_t) @nogc nothrow;






    alias suseconds_t = c_long;
    size_t mycore_strcmp_ws(const(char)*, const(char)*) @nogc nothrow;
    alias int_least8_t = byte;
    alias __int64_t = c_long;


    alias loff_t = c_long;






    static __uint64_t __uint64_identity(__uint64_t) @nogc nothrow;
    struct myencoding_trigram
    {
        const(ubyte)[3] trigram;
        size_t value;
    }
    alias __uint64_t = c_ulong;
    alias int_least16_t = short;
    bool mycore_ustrcasecmp_without_checks_by_secondary(const(ubyte)*, const(ubyte)*) @nogc nothrow;


    mcsync_t* mcsync_create() @nogc nothrow;




    alias int_least32_t = int;
    mcsync_status_t mcsync_init(mcsync_t*) @nogc nothrow;


    alias mchar_async_chunk_t = mchar_async_chunk;
    struct mchar_async_chunk
    {
        char* begin;
        size_t length;
        size_t size;
        mchar_async_chunk* next;
        mchar_async_chunk* prev;
    }






    void mcsync_clean(mcsync_t*) @nogc nothrow;




    void* memmove(void*, const(void)*, size_t) @nogc nothrow;
    enum myencoding_list
    {
        MyENCODING_DEFAULT = 0,
        MyENCODING_NOT_DETERMINED = 2,
        MyENCODING_UTF_8 = 0,
        MyENCODING_UTF_16LE = 4,
        MyENCODING_UTF_16BE = 5,
        MyENCODING_X_USER_DEFINED = 6,
        MyENCODING_BIG5 = 7,
        MyENCODING_EUC_JP = 8,
        MyENCODING_EUC_KR = 9,
        MyENCODING_GB18030 = 10,
        MyENCODING_GBK = 11,
        MyENCODING_IBM866 = 12,
        MyENCODING_ISO_2022_JP = 13,
        MyENCODING_ISO_8859_10 = 14,
        MyENCODING_ISO_8859_13 = 15,
        MyENCODING_ISO_8859_14 = 16,
        MyENCODING_ISO_8859_15 = 17,
        MyENCODING_ISO_8859_16 = 18,
        MyENCODING_ISO_8859_2 = 19,
        MyENCODING_ISO_8859_3 = 20,
        MyENCODING_ISO_8859_4 = 21,
        MyENCODING_ISO_8859_5 = 22,
        MyENCODING_ISO_8859_6 = 23,
        MyENCODING_ISO_8859_7 = 24,
        MyENCODING_ISO_8859_8 = 25,
        MyENCODING_ISO_8859_8_I = 26,
        MyENCODING_KOI8_R = 27,
        MyENCODING_KOI8_U = 28,
        MyENCODING_MACINTOSH = 29,
        MyENCODING_SHIFT_JIS = 30,
        MyENCODING_WINDOWS_1250 = 31,
        MyENCODING_WINDOWS_1251 = 32,
        MyENCODING_WINDOWS_1252 = 33,
        MyENCODING_WINDOWS_1253 = 34,
        MyENCODING_WINDOWS_1254 = 35,
        MyENCODING_WINDOWS_1255 = 36,
        MyENCODING_WINDOWS_1256 = 37,
        MyENCODING_WINDOWS_1257 = 38,
        MyENCODING_WINDOWS_1258 = 39,
        MyENCODING_WINDOWS_874 = 40,
        MyENCODING_X_MAC_CYRILLIC = 41,
        MyENCODING_LAST_ENTRY = 42,
    }
    enum MyENCODING_DEFAULT = myencoding_list.MyENCODING_DEFAULT;
    enum MyENCODING_NOT_DETERMINED = myencoding_list.MyENCODING_NOT_DETERMINED;
    enum MyENCODING_UTF_8 = myencoding_list.MyENCODING_UTF_8;
    enum MyENCODING_UTF_16LE = myencoding_list.MyENCODING_UTF_16LE;
    enum MyENCODING_UTF_16BE = myencoding_list.MyENCODING_UTF_16BE;
    enum MyENCODING_X_USER_DEFINED = myencoding_list.MyENCODING_X_USER_DEFINED;
    enum MyENCODING_BIG5 = myencoding_list.MyENCODING_BIG5;
    enum MyENCODING_EUC_JP = myencoding_list.MyENCODING_EUC_JP;
    enum MyENCODING_EUC_KR = myencoding_list.MyENCODING_EUC_KR;
    enum MyENCODING_GB18030 = myencoding_list.MyENCODING_GB18030;
    enum MyENCODING_GBK = myencoding_list.MyENCODING_GBK;
    enum MyENCODING_IBM866 = myencoding_list.MyENCODING_IBM866;
    enum MyENCODING_ISO_2022_JP = myencoding_list.MyENCODING_ISO_2022_JP;
    enum MyENCODING_ISO_8859_10 = myencoding_list.MyENCODING_ISO_8859_10;
    enum MyENCODING_ISO_8859_13 = myencoding_list.MyENCODING_ISO_8859_13;
    enum MyENCODING_ISO_8859_14 = myencoding_list.MyENCODING_ISO_8859_14;
    enum MyENCODING_ISO_8859_15 = myencoding_list.MyENCODING_ISO_8859_15;
    enum MyENCODING_ISO_8859_16 = myencoding_list.MyENCODING_ISO_8859_16;
    enum MyENCODING_ISO_8859_2 = myencoding_list.MyENCODING_ISO_8859_2;
    enum MyENCODING_ISO_8859_3 = myencoding_list.MyENCODING_ISO_8859_3;
    enum MyENCODING_ISO_8859_4 = myencoding_list.MyENCODING_ISO_8859_4;
    enum MyENCODING_ISO_8859_5 = myencoding_list.MyENCODING_ISO_8859_5;
    enum MyENCODING_ISO_8859_6 = myencoding_list.MyENCODING_ISO_8859_6;
    enum MyENCODING_ISO_8859_7 = myencoding_list.MyENCODING_ISO_8859_7;
    enum MyENCODING_ISO_8859_8 = myencoding_list.MyENCODING_ISO_8859_8;
    enum MyENCODING_ISO_8859_8_I = myencoding_list.MyENCODING_ISO_8859_8_I;
    enum MyENCODING_KOI8_R = myencoding_list.MyENCODING_KOI8_R;
    enum MyENCODING_KOI8_U = myencoding_list.MyENCODING_KOI8_U;
    enum MyENCODING_MACINTOSH = myencoding_list.MyENCODING_MACINTOSH;
    enum MyENCODING_SHIFT_JIS = myencoding_list.MyENCODING_SHIFT_JIS;
    enum MyENCODING_WINDOWS_1250 = myencoding_list.MyENCODING_WINDOWS_1250;
    enum MyENCODING_WINDOWS_1251 = myencoding_list.MyENCODING_WINDOWS_1251;
    enum MyENCODING_WINDOWS_1252 = myencoding_list.MyENCODING_WINDOWS_1252;
    enum MyENCODING_WINDOWS_1253 = myencoding_list.MyENCODING_WINDOWS_1253;
    enum MyENCODING_WINDOWS_1254 = myencoding_list.MyENCODING_WINDOWS_1254;
    enum MyENCODING_WINDOWS_1255 = myencoding_list.MyENCODING_WINDOWS_1255;
    enum MyENCODING_WINDOWS_1256 = myencoding_list.MyENCODING_WINDOWS_1256;
    enum MyENCODING_WINDOWS_1257 = myencoding_list.MyENCODING_WINDOWS_1257;
    enum MyENCODING_WINDOWS_1258 = myencoding_list.MyENCODING_WINDOWS_1258;
    enum MyENCODING_WINDOWS_874 = myencoding_list.MyENCODING_WINDOWS_874;
    enum MyENCODING_X_MAC_CYRILLIC = myencoding_list.MyENCODING_X_MAC_CYRILLIC;
    enum MyENCODING_LAST_ENTRY = myencoding_list.MyENCODING_LAST_ENTRY;
    alias myencoding_t = myencoding_list;
    alias int_least64_t = c_long;
    mcsync_t* mcsync_destroy(mcsync_t*, int) @nogc nothrow;
    alias ino_t = c_ulong;
    alias __fd_mask = c_long;
    alias pthread_key_t = uint;


    mcsync_status_t mcsync_lock(mcsync_t*) @nogc nothrow;


    struct myencoding_trigram_result
    {
        size_t count;
        size_t value;
    }


    mcsync_status_t mcsync_unlock(mcsync_t*) @nogc nothrow;
    alias __quad_t = c_long;
    enum idtype_t
    {
        P_ALL = 0,
        P_PID = 1,
        P_PGID = 2,
    }
    enum P_ALL = idtype_t.P_ALL;
    enum P_PID = idtype_t.P_PID;
    enum P_PGID = idtype_t.P_PGID;
    mcsync_status_t mcsync_spin_lock(void*) @nogc nothrow;




    alias pthread_once_t = int;
    alias __u_quad_t = c_ulong;
    void* memccpy(void*, const(void)*, int, size_t) @nogc nothrow;




    struct myencoding_unicode_result
    {
        size_t count_ascii;
        size_t count_good;
        size_t count_bad;
    }


    alias uint_least8_t = ubyte;


    mcsync_status_t mcsync_spin_unlock(void*) @nogc nothrow;




    alias uint_least16_t = ushort;
    union pthread_attr_t
    {
        char[56] __size;
        c_long __align;
    }
    mcsync_status_t mcsync_mutex_lock(void*) @nogc nothrow;
    alias mchar_async_cache_t = mchar_async_cache;
    struct mchar_async_cache
    {
        mchar_async_cache_node_t* nodes;
        size_t nodes_size;
        size_t nodes_length;
        size_t nodes_root;
        size_t count;
        size_t* index;
        size_t index_length;
        size_t index_size;
    }




    alias uint_least32_t = uint;
    alias off_t = c_long;
    mcsync_status_t mcsync_mutex_try_lock(void*) @nogc nothrow;





    mcsync_status_t mcsync_mutex_unlock(void*) @nogc nothrow;
    alias uint_least64_t = c_ulong;


    struct div_t
    {
        int quot;
        int rem;
    }
    struct fd_set
    {
        __fd_mask[16] __fds_bits;
    }
    alias dev_t = c_ulong;


    struct myencoding_detect_name_entry
    {
        const(char)* name;
        size_t name_length;
        const(char)* label;
        size_t label_length;
        myencoding_t encoding;
        size_t next;
        size_t curr;
    }
    void* mcsync_spin_create() @nogc nothrow;
    void* memset(void*, int, size_t) @nogc nothrow;


    alias __intmax_t = c_long;
    mcsync_status_t mcsync_spin_init(void*) @nogc nothrow;
    alias __uintmax_t = c_ulong;
    void mcsync_spin_clean(void*) @nogc nothrow;
    int memcmp(const(void)*, const(void)*, size_t) @nogc nothrow;
    void mcsync_spin_destroy(void*) @nogc nothrow;
    struct __pthread_rwlock_arch_t
    {
        uint __readers;
        uint __writers;
        uint __wrphase_futex;
        uint __writers_futex;
        uint __pad3;
        uint __pad4;
        int __cur_writer;
        int __shared;
        byte __rwelision;
        ubyte[7] __pad1;
        c_ulong __pad2;
        uint __flags;
    }
    void* mcsync_mutex_create() @nogc nothrow;


    alias gid_t = uint;


    struct mycore_string
    {
        char* data;
        size_t size;
        size_t length;
        mchar_async_t* mchar;
        size_t node_idx;
    }
    mcsync_status_t mcsync_mutex_init(void*) @nogc nothrow;
    struct ldiv_t
    {
        c_long quot;
        c_long rem;
    }
    void mcsync_mutex_clean(void*) @nogc nothrow;
    union pthread_mutex_t
    {
        __pthread_mutex_s __data;
        char[40] __size;
        c_long __align;
    }






    void mcsync_mutex_destroy(void*) @nogc nothrow;
    char* index(const(char)*, int) @nogc nothrow;
    alias int_fast8_t = byte;






    alias mode_t = uint;




    struct mchar_async_node
    {
        mchar_async_chunk_t* chunk;
        mchar_async_cache_t cache;
    }


    alias int_fast16_t = c_long;


    alias ssize_t = c_long;






    alias int_fast32_t = c_long;


    struct myencoding_detect_attr
    {
        size_t key_begin;
        size_t key_length;
        size_t value_begin;
        size_t value_length;
        myencoding_detect_attr_t* next;
    }
    alias int_fast64_t = c_long;


    uint gnu_dev_major(__dev_t) @nogc nothrow;






    uint gnu_dev_minor(__dev_t) @nogc nothrow;


    struct mchar_async
    {
        size_t origin_size;
        mchar_async_chunk_t** chunks;
        size_t chunks_pos_size;
        size_t chunks_pos_length;
        size_t chunks_size;
        size_t chunks_length;
        mchar_async_cache_t chunk_cache;
        mchar_async_node_t* nodes;
        size_t nodes_length;
        size_t nodes_size;
        size_t* nodes_cache;
        size_t nodes_cache_length;
        size_t nodes_cache_size;
        mcsync_t* mcsync_;
    }
    alias mchar_async_t = mchar_async;
    __dev_t gnu_dev_makedev(uint, uint) @nogc nothrow;


    struct mycore_string_raw
    {
        char* data;
        size_t size;
        size_t length;
    }
    alias nlink_t = c_ulong;


    union pthread_cond_t
    {
        __pthread_cond_s __data;
        char[48] __size;
        long __align;
    }
    struct lldiv_t
    {
        long quot;
        long rem;
    }






    alias fd_mask = c_long;






    alias fpos_t = _G_fpos_t;






    alias uid_t = uint;
    alias mycore_string_index_t = c_ulong;
    struct myencoding_entry_name_index
    {
        const(char)* name;
        size_t length;
    }
    alias uint_fast8_t = ubyte;


    alias __pthread_list_t = __pthread_internal_list;
    struct __pthread_internal_list
    {
        __pthread_internal_list* __prev;
        __pthread_internal_list* __next;
    }






    alias uint_fast16_t = c_ulong;
    char* mycore_string_init(mchar_async_t*, size_t, mycore_string_t*, size_t) @nogc nothrow;
    alias uint_fast32_t = c_ulong;
    char* mycore_string_realloc(mycore_string_t*, size_t) @nogc nothrow;
    alias mycore_status_t = mycore_status;
    alias uint_fast64_t = c_ulong;




    enum mycore_status
    {
        MyCORE_STATUS_OK = 0,
        MyCORE_STATUS_ERROR = 1,
        MyCORE_STATUS_ERROR_MEMORY_ALLOCATION = 2,
        MyCORE_STATUS_THREAD_ERROR_MEMORY_ALLOCATION = 9,
        MyCORE_STATUS_THREAD_ERROR_LIST_INIT = 10,
        MyCORE_STATUS_THREAD_ERROR_ATTR_MALLOC = 11,
        MyCORE_STATUS_THREAD_ERROR_ATTR_INIT = 12,
        MyCORE_STATUS_THREAD_ERROR_ATTR_SET = 13,
        MyCORE_STATUS_THREAD_ERROR_ATTR_DESTROY = 14,
        MyCORE_STATUS_THREAD_ERROR_NO_SLOTS = 15,
        MyCORE_STATUS_THREAD_ERROR_BATCH_INIT = 16,
        MyCORE_STATUS_THREAD_ERROR_WORKER_MALLOC = 17,
        MyCORE_STATUS_THREAD_ERROR_WORKER_SEM_CREATE = 18,
        MyCORE_STATUS_THREAD_ERROR_WORKER_THREAD_CREATE = 19,
        MyCORE_STATUS_THREAD_ERROR_MASTER_THREAD_CREATE = 20,
        MyCORE_STATUS_THREAD_ERROR_SEM_PREFIX_MALLOC = 50,
        MyCORE_STATUS_THREAD_ERROR_SEM_CREATE = 51,
        MyCORE_STATUS_THREAD_ERROR_QUEUE_MALLOC = 60,
        MyCORE_STATUS_THREAD_ERROR_QUEUE_NODES_MALLOC = 61,
        MyCORE_STATUS_THREAD_ERROR_QUEUE_NODE_MALLOC = 62,
        MyCORE_STATUS_THREAD_ERROR_MUTEX_MALLOC = 70,
        MyCORE_STATUS_THREAD_ERROR_MUTEX_INIT = 71,
        MyCORE_STATUS_THREAD_ERROR_MUTEX_LOCK = 72,
        MyCORE_STATUS_THREAD_ERROR_MUTEX_UNLOCK = 73,
        MyCORE_STATUS_PERF_ERROR_COMPILED_WITHOUT_PERF = 80,
        MyCORE_STATUS_PERF_ERROR_FIND_CPU_CLOCK = 81,
        MyCORE_STATUS_MCOBJECT_ERROR_CACHE_CREATE = 85,
        MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_CREATE = 86,
        MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_INIT = 87,
        MyCORE_STATUS_MCOBJECT_ERROR_CACHE_REALLOC = 88,
        MyCORE_STATUS_ASYNC_ERROR_LOCK = 96,
        MyCORE_STATUS_ASYNC_ERROR_UNLOCK = 97,
        MyCORE_STATUS_ERROR_NO_FREE_SLOT = 98,
    }
    enum MyCORE_STATUS_OK = mycore_status.MyCORE_STATUS_OK;
    enum MyCORE_STATUS_ERROR = mycore_status.MyCORE_STATUS_ERROR;
    enum MyCORE_STATUS_ERROR_MEMORY_ALLOCATION = mycore_status.MyCORE_STATUS_ERROR_MEMORY_ALLOCATION;
    enum MyCORE_STATUS_THREAD_ERROR_MEMORY_ALLOCATION = mycore_status.MyCORE_STATUS_THREAD_ERROR_MEMORY_ALLOCATION;
    enum MyCORE_STATUS_THREAD_ERROR_LIST_INIT = mycore_status.MyCORE_STATUS_THREAD_ERROR_LIST_INIT;
    enum MyCORE_STATUS_THREAD_ERROR_ATTR_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_ATTR_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_ATTR_INIT = mycore_status.MyCORE_STATUS_THREAD_ERROR_ATTR_INIT;
    enum MyCORE_STATUS_THREAD_ERROR_ATTR_SET = mycore_status.MyCORE_STATUS_THREAD_ERROR_ATTR_SET;
    enum MyCORE_STATUS_THREAD_ERROR_ATTR_DESTROY = mycore_status.MyCORE_STATUS_THREAD_ERROR_ATTR_DESTROY;
    enum MyCORE_STATUS_THREAD_ERROR_NO_SLOTS = mycore_status.MyCORE_STATUS_THREAD_ERROR_NO_SLOTS;
    enum MyCORE_STATUS_THREAD_ERROR_BATCH_INIT = mycore_status.MyCORE_STATUS_THREAD_ERROR_BATCH_INIT;
    enum MyCORE_STATUS_THREAD_ERROR_WORKER_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_WORKER_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_WORKER_SEM_CREATE = mycore_status.MyCORE_STATUS_THREAD_ERROR_WORKER_SEM_CREATE;
    enum MyCORE_STATUS_THREAD_ERROR_WORKER_THREAD_CREATE = mycore_status.MyCORE_STATUS_THREAD_ERROR_WORKER_THREAD_CREATE;
    enum MyCORE_STATUS_THREAD_ERROR_MASTER_THREAD_CREATE = mycore_status.MyCORE_STATUS_THREAD_ERROR_MASTER_THREAD_CREATE;
    enum MyCORE_STATUS_THREAD_ERROR_SEM_PREFIX_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_SEM_PREFIX_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_SEM_CREATE = mycore_status.MyCORE_STATUS_THREAD_ERROR_SEM_CREATE;
    enum MyCORE_STATUS_THREAD_ERROR_QUEUE_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_QUEUE_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_QUEUE_NODES_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_QUEUE_NODES_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_QUEUE_NODE_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_QUEUE_NODE_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_MUTEX_MALLOC = mycore_status.MyCORE_STATUS_THREAD_ERROR_MUTEX_MALLOC;
    enum MyCORE_STATUS_THREAD_ERROR_MUTEX_INIT = mycore_status.MyCORE_STATUS_THREAD_ERROR_MUTEX_INIT;
    enum MyCORE_STATUS_THREAD_ERROR_MUTEX_LOCK = mycore_status.MyCORE_STATUS_THREAD_ERROR_MUTEX_LOCK;
    enum MyCORE_STATUS_THREAD_ERROR_MUTEX_UNLOCK = mycore_status.MyCORE_STATUS_THREAD_ERROR_MUTEX_UNLOCK;
    enum MyCORE_STATUS_PERF_ERROR_COMPILED_WITHOUT_PERF = mycore_status.MyCORE_STATUS_PERF_ERROR_COMPILED_WITHOUT_PERF;
    enum MyCORE_STATUS_PERF_ERROR_FIND_CPU_CLOCK = mycore_status.MyCORE_STATUS_PERF_ERROR_FIND_CPU_CLOCK;
    enum MyCORE_STATUS_MCOBJECT_ERROR_CACHE_CREATE = mycore_status.MyCORE_STATUS_MCOBJECT_ERROR_CACHE_CREATE;
    enum MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_CREATE = mycore_status.MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_CREATE;
    enum MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_INIT = mycore_status.MyCORE_STATUS_MCOBJECT_ERROR_CHUNK_INIT;
    enum MyCORE_STATUS_MCOBJECT_ERROR_CACHE_REALLOC = mycore_status.MyCORE_STATUS_MCOBJECT_ERROR_CACHE_REALLOC;
    enum MyCORE_STATUS_ASYNC_ERROR_LOCK = mycore_status.MyCORE_STATUS_ASYNC_ERROR_LOCK;
    enum MyCORE_STATUS_ASYNC_ERROR_UNLOCK = mycore_status.MyCORE_STATUS_ASYNC_ERROR_UNLOCK;
    enum MyCORE_STATUS_ERROR_NO_FREE_SLOT = mycore_status.MyCORE_STATUS_ERROR_NO_FREE_SLOT;
    alias myencoding_custom_f = myencoding_status function(const(ubyte), myencoding_result_t*);
    void mycore_string_clean(mycore_string_t*) @nogc nothrow;
    union pthread_rwlock_t
    {
        __pthread_rwlock_arch_t __data;
        char[56] __size;
        c_long __align;
    }
    void mycore_string_clean_all(mycore_string_t*) @nogc nothrow;
    mycore_string_t* mycore_string_destroy(mycore_string_t*, bool) @nogc nothrow;




    myencoding_custom_f myencoding_get_function_by_id(myencoding_t) @nogc nothrow;




    void* memchr(const(void)*, int, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_utf_8(const(ubyte), myencoding_result_t*) @nogc nothrow;
    void mycore_string_raw_clean(mycore_string_raw_t*) @nogc nothrow;
    myencoding_status_t myencoding_decode_ibm866(const(ubyte), myencoding_result_t*) @nogc nothrow;




    void mycore_string_raw_clean_all(mycore_string_raw_t*) @nogc nothrow;


    myencoding_status_t myencoding_decode_iso_8859_2(const(ubyte), myencoding_result_t*) @nogc nothrow;


    mycore_string_raw_t* mycore_string_raw_destroy(mycore_string_raw_t*, bool) @nogc nothrow;


    enum myencoding_status
    {
        MyENCODING_STATUS_OK = 0,
        MyENCODING_STATUS_ERROR = 1,
        MyENCODING_STATUS_CONTINUE = 2,
        MyENCODING_STATUS_DONE = 4,
    }
    enum MyENCODING_STATUS_OK = myencoding_status.MyENCODING_STATUS_OK;
    enum MyENCODING_STATUS_ERROR = myencoding_status.MyENCODING_STATUS_ERROR;
    enum MyENCODING_STATUS_CONTINUE = myencoding_status.MyENCODING_STATUS_CONTINUE;
    enum MyENCODING_STATUS_DONE = myencoding_status.MyENCODING_STATUS_DONE;
    alias myencoding_status_t = myencoding_status;


    union pthread_rwlockattr_t
    {
        char[8] __size;
        c_long __align;
    }
    myencoding_status_t myencoding_decode_iso_8859_3(const(ubyte), myencoding_result_t*) @nogc nothrow;




    myencoding_status_t myencoding_decode_iso_8859_4(const(ubyte), myencoding_result_t*) @nogc nothrow;


    char* mycore_string_data_alloc(mchar_async_t*, size_t, size_t) @nogc nothrow;


    myencoding_status_t myencoding_decode_iso_8859_5(const(ubyte), myencoding_result_t*) @nogc nothrow;




    char* mycore_string_data_realloc(mchar_async_t*, size_t, char*, size_t, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_iso_8859_6(const(ubyte), myencoding_result_t*) @nogc nothrow;




    char* rindex(const(char)*, int) @nogc nothrow;
    alias intptr_t = c_long;
    myencoding_status_t myencoding_decode_iso_8859_7(const(ubyte), myencoding_result_t*) @nogc nothrow;
    void mycore_string_data_free(mchar_async_t*, size_t, char*) @nogc nothrow;
    size_t __ctype_get_mb_cur_max() @nogc nothrow;


    alias pid_t = int;


    myencoding_status_t myencoding_decode_iso_8859_8(const(ubyte), myencoding_result_t*) @nogc nothrow;






    char* mycore_string_data(mycore_string_t*) @nogc nothrow;






    mchar_async_t* mchar_async_create() @nogc nothrow;
    myencoding_status_t myencoding_decode_iso_8859_8_i(const(ubyte), myencoding_result_t*) @nogc nothrow;


    alias uintptr_t = c_ulong;
    myencoding_status_t myencoding_decode_iso_8859_10(const(ubyte), myencoding_result_t*) @nogc nothrow;


    mystatus_t mchar_async_init(mchar_async_t*, size_t, size_t) @nogc nothrow;




    size_t mycore_string_length(mycore_string_t*) @nogc nothrow;
    myencoding_status_t myencoding_decode_iso_8859_13(const(ubyte), myencoding_result_t*) @nogc nothrow;




    double atof(const(char)*) @nogc nothrow;




    int select(int, fd_set*, fd_set*, fd_set*, timeval*) @nogc nothrow;
    alias myencoding_result_t = myencoding_result;
    mystatus_t mchar_async_clean(mchar_async_t*) @nogc nothrow;
    size_t mycore_string_size(mycore_string_t*) @nogc nothrow;


    myencoding_status_t myencoding_decode_iso_8859_14(const(ubyte), myencoding_result_t*) @nogc nothrow;


    alias myencoding_trigram_t = myencoding_trigram;


    mchar_async_t* mchar_async_destroy(mchar_async_t*, int) @nogc nothrow;
    char* mycore_string_data_set(mycore_string_t*, char*) @nogc nothrow;


    alias pthread_spinlock_t = int;


    size_t mycore_string_size_set(mycore_string_t*, size_t) @nogc nothrow;




    alias myencoding_trigram_result_t = myencoding_trigram_result;


    myencoding_status_t myencoding_decode_iso_8859_15(const(ubyte), myencoding_result_t*) @nogc nothrow;




    int atoi(const(char)*) @nogc nothrow;
    int ffs(int) @nogc nothrow;
    alias id_t = uint;


    size_t mycore_string_length_set(mycore_string_t*, size_t) @nogc nothrow;
    char* mchar_async_malloc(mchar_async_t*, size_t, size_t) @nogc nothrow;


    myencoding_status_t myencoding_decode_iso_8859_16(const(ubyte), myencoding_result_t*) @nogc nothrow;
    alias myencoding_unicode_result_t = myencoding_unicode_result;




    char* mchar_async_realloc(mchar_async_t*, size_t, char*, size_t, size_t) @nogc nothrow;
    alias myencoding_detect_name_entry_t = myencoding_detect_name_entry;


    myencoding_status_t myencoding_decode_koi8_r(const(ubyte), myencoding_result_t*) @nogc nothrow;
    myencoding_status_t myencoding_decode_koi8_u(const(ubyte), myencoding_result_t*) @nogc nothrow;
    void mchar_async_free(mchar_async_t*, size_t, char*) @nogc nothrow;


    alias myencoding_detect_attr_t = myencoding_detect_attr;
    void mycore_string_append(mycore_string_t*, const(char)*, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_macintosh(const(ubyte), myencoding_result_t*) @nogc nothrow;


    alias myencoding_entry_name_index_t = myencoding_entry_name_index;


    c_long atol(const(char)*) @nogc nothrow;


    void mycore_string_append_one(mycore_string_t*, const(char)) @nogc nothrow;


    size_t mchar_async_node_add(mchar_async_t*, mystatus_t*) @nogc nothrow;
    union pthread_barrier_t
    {
        char[32] __size;
        c_long __align;
    }




    myencoding_status_t myencoding_decode_windows_874(const(ubyte), myencoding_result_t*) @nogc nothrow;




    void mycore_string_append_lowercase(mycore_string_t*, const(char)*, size_t) @nogc nothrow;


    myencoding_status_t myencoding_decode_windows_1250(const(ubyte), myencoding_result_t*) @nogc nothrow;
    void mchar_async_node_clean(mchar_async_t*, size_t) @nogc nothrow;


    int ffsl(c_long) @nogc nothrow;
    void mycore_string_append_with_replacement_null_characters(mycore_string_t*, const(char)*, size_t) @nogc nothrow;


    void mchar_async_node_delete(mchar_async_t*, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_windows_1251(const(ubyte), myencoding_result_t*) @nogc nothrow;


    alias intmax_t = c_long;
    myencoding_status_t myencoding_decode_windows_1252(const(ubyte), myencoding_result_t*) @nogc nothrow;
    int ffsll(long) @nogc nothrow;
    alias uintmax_t = c_ulong;
    myencoding_status_t myencoding_decode_windows_1253(const(ubyte), myencoding_result_t*) @nogc nothrow;
    long atoll(const(char)*) @nogc nothrow;






    mchar_async_chunk_t* mchar_async_chunk_malloc(mchar_async_t*, mchar_async_node_t*, size_t) @nogc nothrow;
    size_t mycore_string_raw_set_replacement_character(mycore_string_t*, size_t) @nogc nothrow;
    int pselect(int, fd_set*, fd_set*, fd_set*, const(timespec)*, const(__sigset_t)*) @nogc nothrow;
    char* mchar_async_crop_first_chars(mchar_async_t*, size_t, char*, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_windows_1254(const(ubyte), myencoding_result_t*) @nogc nothrow;


    char* mchar_async_crop_first_chars_without_cache(char*, size_t) @nogc nothrow;
    myencoding_status_t myencoding_decode_windows_1255(const(ubyte), myencoding_result_t*) @nogc nothrow;


    union pthread_barrierattr_t
    {
        char[4] __size;
        int __align;
    }


    void mycore_string_copy(mycore_string_t*, mycore_string_t*) @nogc nothrow;
    alias daddr_t = int;
    myencoding_status_t myencoding_decode_windows_1256(const(ubyte), myencoding_result_t*) @nogc nothrow;
    size_t mycore_string_raw_copy(char*, const(char)*, size_t) @nogc nothrow;
    alias caddr_t = char*;
    size_t mchar_async_get_size_by_data(const(char)*) @nogc nothrow;


    int strcasecmp(const(char)*, const(char)*) @nogc nothrow;
    myencoding_status_t myencoding_decode_windows_1257(const(ubyte), myencoding_result_t*) @nogc nothrow;


    void mycore_string_stay_only_whitespace(mycore_string_t*) @nogc nothrow;


    double strtod(const(char)*, char**) @nogc nothrow;






    myencoding_status_t myencoding_decode_windows_1258(const(ubyte), myencoding_result_t*) @nogc nothrow;




    struct __pthread_mutex_s
    {
        int __lock;
        uint __count;
        int __owner;
        uint __nusers;
        int __kind;
        short __spins;
        short __elision;
        __pthread_list_t __list;
    }
    size_t mycore_string_crop_whitespace_from_begin(mycore_string_t*) @nogc nothrow;




    myencoding_status_t myencoding_decode_x_mac_cyrillic(const(ubyte), myencoding_result_t*) @nogc nothrow;




    size_t mycore_string_whitespace_from_begin(mycore_string_t*) @nogc nothrow;
    mystatus_t mchar_async_cache_init(mchar_async_cache_t*) @nogc nothrow;
    myencoding_status_t myencoding_decode_gbk(const(ubyte), myencoding_result_t*) @nogc nothrow;


    int strncasecmp(const(char)*, const(char)*, size_t) @nogc nothrow;
    mchar_async_cache_t* mchar_async_cache_destroy(mchar_async_cache_t*, bool) @nogc nothrow;




    myencoding_status_t myencoding_decode_gb18030(const(ubyte), myencoding_result_t*) @nogc nothrow;






    void mchar_async_cache_clean(mchar_async_cache_t*) @nogc nothrow;
    myencoding_status_t myencoding_decode_big5(const(ubyte), myencoding_result_t*) @nogc nothrow;
    char* strcpy(char*, const(char)*) @nogc nothrow;
    myencoding_status_t myencoding_decode_euc_jp(const(ubyte), myencoding_result_t*) @nogc nothrow;
    alias key_t = int;
    alias mystatus_t = uint;


    void mchar_async_cache_add(mchar_async_cache_t*, void*, size_t) @nogc nothrow;




    myencoding_status_t myencoding_decode_iso_2022_jp(const(ubyte), myencoding_result_t*) @nogc nothrow;
    float strtof(const(char)*, char**) @nogc nothrow;




    myencoding_status_t myencoding_decode_shift_jis(const(ubyte), myencoding_result_t*) @nogc nothrow;
    size_t mchar_async_cache_delete(mchar_async_cache_t*, size_t) @nogc nothrow;
    char* strncpy(char*, const(char)*, size_t) @nogc nothrow;




    myencoding_status_t myencoding_decode_euc_kr(const(ubyte), myencoding_result_t*) @nogc nothrow;
    struct mythread_queue_list_entry;
    alias mythread_queue_list_entry_t = mythread_queue_list_entry;
    myencoding_status_t myencoding_decode_shared_utf_16(const(ubyte), myencoding_result_t*) @nogc nothrow;
    struct mythread_queue_thread_param;
    alias mythread_queue_thread_param_t = mythread_queue_thread_param;






    real strtold(const(char)*, char**) @nogc nothrow;
    alias mythread_queue_list_t = mythread_queue_list;
    struct mythread_queue_list;


    myencoding_status_t myencoding_decode_utf_16be(const(ubyte), myencoding_result_t*) @nogc nothrow;
    struct mythread_queue_node;
    alias mythread_queue_node_t = mythread_queue_node;
    int strcasecmp_l(const(char)*, const(char)*, locale_t) @nogc nothrow;






    myencoding_status_t myencoding_decode_utf_16le(const(ubyte), myencoding_result_t*) @nogc nothrow;
    char* strcat(char*, const(char)*) @nogc nothrow;
    struct mythread_queue;


    alias mythread_queue_t = mythread_queue;
    myencoding_status_t myencoding_decode_x_user_defined(const(ubyte), myencoding_result_t*) @nogc nothrow;
    alias mythread_id_t = c_ulong;
    size_t myencoding_codepoint_ascii_length(size_t) @nogc nothrow;






    struct mythread_context;
    alias mythread_context_t = mythread_context;


    char* strncat(char*, const(char)*, size_t) @nogc nothrow;


    size_t myencoding_ascii_utf_8_length(const(ubyte)) @nogc nothrow;


    alias mythread_entry_t = mythread_entry;


    int strncasecmp_l(const(char)*, const(char)*, size_t, locale_t) @nogc nothrow;
    struct mythread_entry;
    alias __dev_t = c_ulong;


    size_t myencoding_codepoint_to_ascii_utf_8(size_t, char*) @nogc nothrow;




    struct mythread;
    alias mythread_t = mythread;
    alias __uid_t = uint;
    extern __gshared _IO_FILE* stdin;
    alias __gid_t = uint;




    size_t myencoding_codepoint_to_lowercase_ascii_utf_8(size_t, char*) @nogc nothrow;


    extern __gshared _IO_FILE* stdout;
    alias __ino_t = c_ulong;
    size_t myencoding_codepoint_to_ascii_utf_16(size_t, char*) @nogc nothrow;


    int strcmp(const(char)*, const(char)*) @nogc nothrow;




    alias mycore_string_raw_t = mycore_string_raw;


    extern __gshared _IO_FILE* stderr;
    alias __ino64_t = c_ulong;


    size_t myencoding_ascii_utf_8_to_codepoint(const(ubyte)*, size_t*) @nogc nothrow;


    alias __mode_t = uint;




    alias mycore_string_t = mycore_string;




    int strncmp(const(char)*, const(char)*, size_t) @nogc nothrow;
    alias __nlink_t = c_ulong;






    void myencoding_result_clean(myencoding_result_t*) @nogc nothrow;
    alias __off_t = c_long;
    bool myencoding_detect(const(char)*, size_t, myencoding_t*) @nogc nothrow;
    alias __off64_t = c_long;
    struct mycore_incoming_buffer;
    alias mycore_incoming_buffer_t = mycore_incoming_buffer;




    bool myencoding_detect_russian(const(char)*, size_t, myencoding_t*) @nogc nothrow;


    alias __pid_t = int;


    bool myencoding_detect_unicode(const(char)*, size_t, myencoding_t*) @nogc nothrow;
    int strcoll(const(char)*, const(char)*) @nogc nothrow;


    struct __fsid_t
    {
        int[2] __val;
    }
    alias __clock_t = c_long;
    bool myencoding_detect_bom(const(char)*, size_t, myencoding_t*) @nogc nothrow;


    int remove(const(char)*) @nogc nothrow;


    alias mycore_callback_serialize_f = uint function(const(char)*, size_t, void*);
    bool myencoding_detect_and_cut_bom(const(char)*, size_t, myencoding_t*, const(char)**, size_t*) @nogc nothrow;
    alias __rlim_t = c_ulong;
    void* mycore_malloc(size_t) @nogc nothrow;
    c_ulong strxfrm(char*, const(char)*, size_t) @nogc nothrow;






    int rename(const(char)*, const(char)*) @nogc nothrow;
    alias __rlim64_t = c_ulong;






    size_t myencoding_convert_to_ascii_utf_8(mycore_string_raw_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;
    alias __id_t = uint;
    void* mycore_realloc(void*, size_t) @nogc nothrow;
    alias __time_t = c_long;
    void* mycore_calloc(size_t, size_t) @nogc nothrow;
    alias __useconds_t = uint;
    struct _IO_jump_t;
    const(myencoding_detect_name_entry_t)* myencoding_name_entry_by_name(const(char)*, size_t) @nogc nothrow;


    void* mycore_free(void*) @nogc nothrow;
    bool myencoding_by_name(const(char)*, size_t, myencoding_t*) @nogc nothrow;
    int renameat(int, const(char)*, int, const(char)*) @nogc nothrow;


    alias __suseconds_t = c_long;
    struct __pthread_cond_s
    {
        static union _Anonymous_1
        {
            ulong __wseq;
            static struct _Anonymous_2
            {
                uint __low;
                uint __high;
            }
            _Anonymous_2 __wseq32;
        }
        _Anonymous_1 _anonymous_3;
        auto __wseq() @property @nogc pure nothrow { return _anonymous_3.__wseq; }
        void __wseq(_T_)(auto ref _T_ val) @property @nogc pure nothrow { _anonymous_3.__wseq = val; }
        auto __wseq32() @property @nogc pure nothrow { return _anonymous_3.__wseq32; }
        void __wseq32(_T_)(auto ref _T_ val) @property @nogc pure nothrow { _anonymous_3.__wseq32 = val; }
        static union _Anonymous_4
        {
            ulong __g1_start;
            static struct _Anonymous_5
            {
                uint __low;
                uint __high;
            }
            _Anonymous_5 __g1_start32;
        }
        _Anonymous_4 _anonymous_6;
        auto __g1_start() @property @nogc pure nothrow { return _anonymous_6.__g1_start; }
        void __g1_start(_T_)(auto ref _T_ val) @property @nogc pure nothrow { _anonymous_6.__g1_start = val; }
        auto __g1_start32() @property @nogc pure nothrow { return _anonymous_6.__g1_start32; }
        void __g1_start32(_T_)(auto ref _T_ val) @property @nogc pure nothrow { _anonymous_6.__g1_start32 = val; }
        uint[2] __g_refs;
        uint[2] __g_size;
        uint __g1_orig_size;
        uint __wrefs;
        uint[2] __g_signals;
    }




    const(char)* myencoding_name_by_id(myencoding_t, size_t*) @nogc nothrow;




    alias __daddr_t = int;
    FILE* mycore_fopen(const(char)*, const(char)*) @nogc nothrow;


    int mycore_fclose(FILE*) @nogc nothrow;


    alias __key_t = int;
    bool myencoding_extracting_character_encoding_from_charset(const(char)*, size_t, myencoding_t*) @nogc nothrow;
    myencoding_t myencoding_prescan_stream_to_determine_encoding(const(char)*, size_t) @nogc nothrow;


    alias _IO_lock_t = void;
    int strcoll_l(const(char)*, const(char)*, locale_t) @nogc nothrow;
    size_t mycore_fread(void*, size_t, size_t, FILE*) @nogc nothrow;




    bool myencoding_extracting_character_encoding_from_charset_with_found(const(char)*, size_t, myencoding_t*, const(char)**, size_t*) @nogc nothrow;
    size_t mycore_fwrite(const(void)*, size_t, size_t, FILE*) @nogc nothrow;




    alias __clockid_t = int;
    myencoding_t myencoding_prescan_stream_to_determine_encoding_with_found(const(char)*, size_t, const(char)**, size_t*) @nogc nothrow;


    int mycore_fflush(FILE*) @nogc nothrow;





    int mycore_fseek(FILE*, c_long, int) @nogc nothrow;
    alias __timer_t = void*;
    c_long mycore_ftell(FILE*) @nogc nothrow;
    FILE* tmpfile() @nogc nothrow;
    size_t strxfrm_l(char*, const(char)*, size_t, locale_t) @nogc nothrow;
    struct _IO_marker
    {
        _IO_marker* _next;
        _IO_FILE* _sbuf;
        int _pos;
    }


    int mycore_ferror(FILE*) @nogc nothrow;




    void mycore_setbuf(FILE*, char*) @nogc nothrow;


    alias __blksize_t = c_long;
    char* strdup(const(char)*) @nogc nothrow;
    alias __blkcnt_t = c_long;
    alias __blkcnt64_t = c_long;







    alias __fsblkcnt_t = c_ulong;
    alias __fsblkcnt64_t = c_ulong;
    char* tmpnam(char*) @nogc nothrow;


    char* strndup(const(char)*, size_t) @nogc nothrow;
    alias __fsfilcnt_t = c_ulong;







    alias __fsfilcnt64_t = c_ulong;
    c_long strtol(const(char)*, char**, int) @nogc nothrow;







    char* tmpnam_r(char*) @nogc nothrow;
    alias u_int8_t = ubyte;


    alias __fsword_t = c_long;
    alias u_int16_t = ushort;
    alias u_int32_t = uint;
    c_ulong strtoul(const(char)*, char**, int) @nogc nothrow;
    enum __codecvt_result
    {
        __codecvt_ok = 0,
        __codecvt_partial = 1,
        __codecvt_error = 2,
        __codecvt_noconv = 3,
    }
    enum __codecvt_ok = __codecvt_result.__codecvt_ok;
    enum __codecvt_partial = __codecvt_result.__codecvt_partial;
    enum __codecvt_error = __codecvt_result.__codecvt_error;
    enum __codecvt_noconv = __codecvt_result.__codecvt_noconv;




    alias __ssize_t = c_long;
    alias u_int64_t = c_ulong;
    alias register_t = c_long;


    alias __syscall_slong_t = c_long;




    alias __syscall_ulong_t = c_ulong;


    long strtoq(const(char)*, char**, int) @nogc nothrow;
    char* tempnam(const(char)*, const(char)*) @nogc nothrow;
    alias __loff_t = c_long;


    alias __caddr_t = char*;




    ulong strtouq(const(char)*, char**, int) @nogc nothrow;
    alias __intptr_t = c_long;
    alias __socklen_t = uint;
    int fclose(FILE*) @nogc nothrow;


    long strtoll(const(char)*, char**, int) @nogc nothrow;
    alias __sig_atomic_t = int;




    int fflush(FILE*) @nogc nothrow;




    ulong strtoull(const(char)*, char**, int) @nogc nothrow;






    alias _Float32 = float;
    alias blksize_t = c_long;






    int fflush_unlocked(FILE*) @nogc nothrow;
    version (Windows)
    {
    }
    else
    {
        alias size_t = c_ulong;
    }


    alias blkcnt_t = c_long;
    alias fsblkcnt_t = c_ulong;






    char* strchr(const(char)*, int) @nogc nothrow;


    alias fsfilcnt_t = c_ulong;
    FILE* fopen(const(char)*, const(char)*) @nogc nothrow;
    FILE* freopen(const(char)*, const(char)*, FILE*) @nogc nothrow;
    alias _Float64 = double;
    struct _IO_FILE
    {
        int _flags;
        char* _IO_read_ptr;
        char* _IO_read_end;
        char* _IO_read_base;
        char* _IO_write_base;
        char* _IO_write_ptr;
        char* _IO_write_end;
        char* _IO_buf_base;
        char* _IO_buf_end;
        char* _IO_save_base;
        char* _IO_backup_base;
        char* _IO_save_end;
        _IO_marker* _markers;
        _IO_FILE* _chain;
        int _fileno;
        int _flags2;
        __off_t _old_offset;
        ushort _cur_column;
        byte _vtable_offset;
        char[1] _shortbuf;
        _IO_lock_t* _lock;
        __off64_t _offset;
        void* __pad1;
        void* __pad2;
        void* __pad3;
        void* __pad4;
        size_t __pad5;
        int _mode;
        char[20] _unused2;
    }
    char* strrchr(const(char)*, int) @nogc nothrow;
    alias _Float32x = double;
    FILE* fdopen(int, const(char)*) @nogc nothrow;
    struct imaxdiv_t
    {
        c_long quot;
        c_long rem;
    }


    c_ulong strcspn(const(char)*, const(char)*) @nogc nothrow;
    c_ulong strspn(const(char)*, const(char)*) @nogc nothrow;




    alias _Float64x = real;


    FILE* fmemopen(void*, size_t, const(char)*) @nogc nothrow;
    FILE* open_memstream(char**, size_t*) @nogc nothrow;






    void setbuf(FILE*, char*) @nogc nothrow;
    intmax_t imaxabs(intmax_t) @nogc nothrow;
    imaxdiv_t imaxdiv(intmax_t, intmax_t) @nogc nothrow;
    int setvbuf(FILE*, char*, int, size_t) @nogc nothrow;



    intmax_t strtoimax(const(char)*, char**, int) @nogc nothrow;
    void setbuffer(FILE*, char*, size_t) @nogc nothrow;


    uintmax_t strtoumax(const(char)*, char**, int) @nogc nothrow;
    char* strpbrk(const(char)*, const(char)*) @nogc nothrow;


    void setlinebuf(FILE*) @nogc nothrow;
    intmax_t wcstoimax(const(__gwchar_t)*, __gwchar_t**, int) @nogc nothrow;




    uintmax_t wcstoumax(const(__gwchar_t)*, __gwchar_t**, int) @nogc nothrow;


    int fprintf(FILE*, const(char)*, ...) @nogc nothrow;




    struct _IO_FILE_plus;
    int printf(const(char)*, ...) @nogc nothrow;
    int sprintf(char*, const(char)*, ...) @nogc nothrow;
    int vfprintf(FILE*, const(char)*, va_list) @nogc nothrow;
    alias wchar_t = int;
    char* strstr(const(char)*, const(char)*) @nogc nothrow;
    int vprintf(const(char)*, va_list) @nogc nothrow;
    int vsprintf(char*, const(char)*, va_list) @nogc nothrow;
    char* strtok(char*, const(char)*) @nogc nothrow;
    alias __io_read_fn = c_long function(void*, char*, size_t);
    char* __strtok_r(char*, const(char)*, char**) @nogc nothrow;
    int snprintf(char*, size_t, const(char)*, ...) @nogc nothrow;





    int vsnprintf(char*, size_t, const(char)*, va_list) @nogc nothrow;
    char* strtok_r(char*, const(char)*, char**) @nogc nothrow;
    alias __io_write_fn = c_long function(void*, const(char)*, size_t);


    alias __io_seek_fn = int function(void*, __off64_t*, int);
    alias __io_close_fn = int function(void*);
    int vdprintf(int, const(char)*, va_list) @nogc nothrow;
    int dprintf(int, const(char)*, ...) @nogc nothrow;






    c_ulong strlen(const(char)*) @nogc nothrow;
    char* l64a(c_long) @nogc nothrow;


    c_long a64l(const(char)*) @nogc nothrow;
    int __underflow(_IO_FILE*) @nogc nothrow;
    size_t strnlen(const(char)*, size_t) @nogc nothrow;
    int __uflow(_IO_FILE*) @nogc nothrow;
    int __overflow(_IO_FILE*, int) @nogc nothrow;






    int fscanf(FILE*, const(char)*, ...) @nogc nothrow;
    char* strerror(int) @nogc nothrow;
    int scanf(const(char)*, ...) @nogc nothrow;


    int sscanf(const(char)*, const(char)*, ...) @nogc nothrow;
    c_long random() @nogc nothrow;




    void srandom(uint) @nogc nothrow;







    int strerror_r(int, char*, size_t) @nogc nothrow;
    char* initstate(uint, char*, size_t) @nogc nothrow;
    char* setstate(char*) @nogc nothrow;







    struct random_data
    {
        int32_t* fptr;
        int32_t* rptr;
        int32_t* state;
        int rand_type;
        int rand_deg;
        int rand_sep;
        int32_t* end_ptr;
    }
    char* strerror_l(int, locale_t) @nogc nothrow;
    int vscanf(const(char)*, va_list) @nogc nothrow;




    int _IO_getc(_IO_FILE*) @nogc nothrow;
    int random_r(random_data*, int32_t*) @nogc nothrow;
    int _IO_putc(int, _IO_FILE*) @nogc nothrow;
    int _IO_feof(_IO_FILE*) @nogc nothrow;
    void explicit_bzero(void*, size_t) @nogc nothrow;
    int _IO_ferror(_IO_FILE*) @nogc nothrow;
    int srandom_r(uint, random_data*) @nogc nothrow;
    int _IO_peekc_locked(_IO_FILE*) @nogc nothrow;
    char* strsep(char**, const(char)*) @nogc nothrow;
    int initstate_r(uint, char*, size_t, random_data*) @nogc nothrow;



    int vfscanf(FILE*, const(char)*, va_list) @nogc nothrow;
    void _IO_flockfile(_IO_FILE*) @nogc nothrow;
    int setstate_r(char*, random_data*) @nogc nothrow;
    void _IO_funlockfile(_IO_FILE*) @nogc nothrow;
    char* strsignal(int) @nogc nothrow;
    int _IO_ftrylockfile(_IO_FILE*) @nogc nothrow;


    char* __stpcpy(char*, const(char)*) @nogc nothrow;
    int vsscanf(const(char)*, const(char)*, va_list) @nogc nothrow;
    char* stpcpy(char*, const(char)*) @nogc nothrow;






    int rand() @nogc nothrow;




    void srand(uint) @nogc nothrow;




    char* __stpncpy(char*, const(char)*, size_t) @nogc nothrow;






    int rand_r(uint*) @nogc nothrow;
    char* stpncpy(char*, const(char)*, size_t) @nogc nothrow;
    int _IO_vfscanf(_IO_FILE*, const(char)*, va_list, int*) @nogc nothrow;
    int _IO_vfprintf(_IO_FILE*, const(char)*, va_list) @nogc nothrow;
    __ssize_t _IO_padn(_IO_FILE*, int, __ssize_t) @nogc nothrow;
    size_t _IO_sgetn(_IO_FILE*, void*, size_t) @nogc nothrow;
    double drand48() @nogc nothrow;


    double erand48(ushort*) @nogc nothrow;



    __off64_t _IO_seekoff(_IO_FILE*, __off64_t, int, int) @nogc nothrow;
    __off64_t _IO_seekpos(_IO_FILE*, __off64_t, int) @nogc nothrow;
    c_long lrand48() @nogc nothrow;
    void _IO_free_backup_area(_IO_FILE*) @nogc nothrow;
    c_long nrand48(ushort*) @nogc nothrow;
    c_long mrand48() @nogc nothrow;
    int fgetc(FILE*) @nogc nothrow;
    c_long jrand48(ushort*) @nogc nothrow;
    int getc(FILE*) @nogc nothrow;
    void srand48(c_long) @nogc nothrow;
    ushort* seed48(ushort*) @nogc nothrow;
    int getchar() @nogc nothrow;
    void lcong48(ushort*) @nogc nothrow;




    struct drand48_data
    {
        ushort[3] __x;
        ushort[3] __old_x;
        ushort __c;
        ushort __init;
        ulong __a;
    }
    int getc_unlocked(FILE*) @nogc nothrow;
    int getchar_unlocked() @nogc nothrow;
    int drand48_r(drand48_data*, double*) @nogc nothrow;
    int erand48_r(ushort*, drand48_data*, double*) @nogc nothrow;
    int fgetc_unlocked(FILE*) @nogc nothrow;
    int lrand48_r(drand48_data*, c_long*) @nogc nothrow;
    int nrand48_r(ushort*, drand48_data*, c_long*) @nogc nothrow;
    int mrand48_r(drand48_data*, c_long*) @nogc nothrow;
    int fputc(int, FILE*) @nogc nothrow;
    int putc(int, FILE*) @nogc nothrow;
    int jrand48_r(ushort*, drand48_data*, c_long*) @nogc nothrow;
    int putchar(int) @nogc nothrow;
    int srand48_r(c_long, drand48_data*) @nogc nothrow;


    int seed48_r(ushort*, drand48_data*) @nogc nothrow;
    int lcong48_r(ushort*, drand48_data*) @nogc nothrow;
    //int fputc_unlocked(int, FILE*) @nogc nothrow;
    void* malloc(size_t) @nogc nothrow;
    void* calloc(size_t, size_t) @nogc nothrow;
    int putc_unlocked(int, FILE*) @nogc nothrow;
    int putchar_unlocked(int) @nogc nothrow;
    void* realloc(void*, size_t) @nogc nothrow;
    int getw(FILE*) @nogc nothrow;
    int putw(int, FILE*) @nogc nothrow;
    void free(void*) @nogc nothrow;
    char* fgets(char*, int, FILE*) @nogc nothrow;
    void* valloc(size_t) @nogc nothrow;
    int posix_memalign(void**, size_t, size_t) @nogc nothrow;
    void* aligned_alloc(size_t, size_t) @nogc nothrow;
    void abort() @nogc nothrow;
    int atexit(void function()) @nogc nothrow;
    int at_quick_exit(void function()) @nogc nothrow;
    __ssize_t __getdelim(char**, size_t*, int, FILE*) @nogc nothrow;
    __ssize_t getdelim(char**, size_t*, int, FILE*) @nogc nothrow;
    int on_exit(void function(int, void*), void*) @nogc nothrow;
    void exit(int) @nogc nothrow;
    __ssize_t getline(char**, size_t*, FILE*) @nogc nothrow;
    void quick_exit(int) @nogc nothrow;
    void _Exit(int) @nogc nothrow;
    int fputs(const(char)*, FILE*) @nogc nothrow;
    char* getenv(const(char)*) @nogc nothrow;
    int puts(const(char)*) @nogc nothrow;
    int ungetc(int, FILE*) @nogc nothrow;
    int putenv(char*) @nogc nothrow;
    size_t fread(void*, size_t, size_t, FILE*) @nogc nothrow;
    int setenv(const(char)*, const(char)*, int) @nogc nothrow;
    //size_t fwrite(const(void)*, size_t, size_t, FILE*) @nogc nothrow;
    int unsetenv(const(char)*) @nogc nothrow;
    int clearenv() @nogc nothrow;
    char* mktemp(char*) @nogc nothrow;
    size_t fread_unlocked(void*, size_t, size_t, FILE*) @nogc nothrow;
    size_t fwrite_unlocked(const(void)*, size_t, size_t, FILE*) @nogc nothrow;
    int fseek(FILE*, c_long, int) @nogc nothrow;
    int mkstemp(char*) @nogc nothrow;
    c_long ftell(FILE*) @nogc nothrow;
    void rewind(FILE*) @nogc nothrow;
    int fseeko(FILE*, __off_t, int) @nogc nothrow;
    int mkstemps(char*, int) @nogc nothrow;
    __off_t ftello(FILE*) @nogc nothrow;
    char* mkdtemp(char*) @nogc nothrow;
    int fgetpos(FILE*, fpos_t*) @nogc nothrow;
    int fsetpos(FILE*, const(fpos_t)*) @nogc nothrow;
    void clearerr(FILE*) @nogc nothrow;
    int feof(FILE*) @nogc nothrow;
    int ferror(FILE*) @nogc nothrow;
    void clearerr_unlocked(FILE*) @nogc nothrow;
    int feof_unlocked(FILE*) @nogc nothrow;
    int ferror_unlocked(FILE*) @nogc nothrow;
    void perror(const(char)*) @nogc nothrow;
    int system(const(char)*) @nogc nothrow;
    int fileno(FILE*) @nogc nothrow;
    int fileno_unlocked(FILE*) @nogc nothrow;
    char* realpath(const(char)*, char*) @nogc nothrow;
    FILE* popen(const(char)*, const(char)*) @nogc nothrow;


    alias __compar_fn_t = int function(const(void)*, const(void)*);
    int pclose(FILE*) @nogc nothrow;
    char* ctermid(char*) @nogc nothrow;
    void* bsearch(const(void)*, const(void)*, size_t, size_t, __compar_fn_t) @nogc nothrow;
    void qsort(void*, size_t, size_t, __compar_fn_t) @nogc nothrow;
    int abs(int) @nogc nothrow;
    c_long labs(c_long) @nogc nothrow;
    void flockfile(FILE*) @nogc nothrow;
    long llabs(long) @nogc nothrow;
    int ftrylockfile(FILE*) @nogc nothrow;
    void funlockfile(FILE*) @nogc nothrow;
    div_t div(int, int) @nogc nothrow;
    ldiv_t ldiv(c_long, c_long) @nogc nothrow;
    lldiv_t lldiv(long, long) @nogc nothrow;
    char* ecvt(double, int, int*, int*) @nogc nothrow;
    char* fcvt(double, int, int*, int*) @nogc nothrow;
    char* gcvt(double, int, char*) @nogc nothrow;
    char* qecvt(real, int, int*, int*) @nogc nothrow;
    char* qfcvt(real, int, int*, int*) @nogc nothrow;
    char* qgcvt(real, int, char*) @nogc nothrow;
    int ecvt_r(double, int, int*, int*, char*, size_t) @nogc nothrow;
    int fcvt_r(double, int, int*, int*, char*, size_t) @nogc nothrow;
    int qecvt_r(real, int, int*, int*, char*, size_t) @nogc nothrow;
    int qfcvt_r(real, int, int*, int*, char*, size_t) @nogc nothrow;
    int mblen(const(char)*, size_t) @nogc nothrow;
    int mbtowc(wchar_t*, const(char)*, size_t) @nogc nothrow;
    int wctomb(char*, wchar_t) @nogc nothrow;
    size_t mbstowcs(wchar_t*, const(char)*, size_t) @nogc nothrow;
    size_t wcstombs(char*, const(wchar_t)*, size_t) @nogc nothrow;
    int rpmatch(const(char)*) @nogc nothrow;
    int getsubopt(char**, char**, char**) @nogc nothrow;
    int getloadavg(double*, int) @nogc nothrow;
}



extern(C)
{
    alias mcobject_chunk_t = mcobject_chunk;
    struct charef_entry
    {
        ubyte ch;
        size_t next;
        size_t cur_pos;
        size_t[2] codepoints;
        size_t codepoints_len;
    }
    alias charef_entry_t = charef_entry;


    struct mcobject_chunk
    {
        ubyte* begin;
        size_t length;
        size_t size;
        mcobject_chunk* next;
        mcobject_chunk* prev;
    }
    struct mcsimple
    {
        size_t struct_size;
        uint8_t** list;
        size_t list_pos_size;
        size_t list_pos_length;
        size_t list_pos_length_used;
        size_t list_size;
        size_t list_length;
    }
    alias mcsimple_t = mcsimple;
    enum myhtml_tags
    {
        MyHTML_TAG__UNDEF = 0,
        MyHTML_TAG__TEXT = 1,
        MyHTML_TAG__COMMENT = 2,
        MyHTML_TAG__DOCTYPE = 3,
        MyHTML_TAG_A = 4,
        MyHTML_TAG_ABBR = 5,
        MyHTML_TAG_ACRONYM = 6,
        MyHTML_TAG_ADDRESS = 7,
        MyHTML_TAG_ANNOTATION_XML = 8,
        MyHTML_TAG_APPLET = 9,
        MyHTML_TAG_AREA = 10,
        MyHTML_TAG_ARTICLE = 11,
        MyHTML_TAG_ASIDE = 12,
        MyHTML_TAG_AUDIO = 13,
        MyHTML_TAG_B = 14,
        MyHTML_TAG_BASE = 15,
        MyHTML_TAG_BASEFONT = 16,
        MyHTML_TAG_BDI = 17,
        MyHTML_TAG_BDO = 18,
        MyHTML_TAG_BGSOUND = 19,
        MyHTML_TAG_BIG = 20,
        MyHTML_TAG_BLINK = 21,
        MyHTML_TAG_BLOCKQUOTE = 22,
        MyHTML_TAG_BODY = 23,
        MyHTML_TAG_BR = 24,
        MyHTML_TAG_BUTTON = 25,
        MyHTML_TAG_CANVAS = 26,
        MyHTML_TAG_CAPTION = 27,
        MyHTML_TAG_CENTER = 28,
        MyHTML_TAG_CITE = 29,
        MyHTML_TAG_CODE = 30,
        MyHTML_TAG_COL = 31,
        MyHTML_TAG_COLGROUP = 32,
        MyHTML_TAG_COMMAND = 33,
        MyHTML_TAG_COMMENT = 34,
        MyHTML_TAG_DATALIST = 35,
        MyHTML_TAG_DD = 36,
        MyHTML_TAG_DEL = 37,
        MyHTML_TAG_DETAILS = 38,
        MyHTML_TAG_DFN = 39,
        MyHTML_TAG_DIALOG = 40,
        MyHTML_TAG_DIR = 41,
        MyHTML_TAG_DIV = 42,
        MyHTML_TAG_DL = 43,
        MyHTML_TAG_DT = 44,
        MyHTML_TAG_EM = 45,
        MyHTML_TAG_EMBED = 46,
        MyHTML_TAG_FIELDSET = 47,
        MyHTML_TAG_FIGCAPTION = 48,
        MyHTML_TAG_FIGURE = 49,
        MyHTML_TAG_FONT = 50,
        MyHTML_TAG_FOOTER = 51,
        MyHTML_TAG_FORM = 52,
        MyHTML_TAG_FRAME = 53,
        MyHTML_TAG_FRAMESET = 54,
        MyHTML_TAG_H1 = 55,
        MyHTML_TAG_H2 = 56,
        MyHTML_TAG_H3 = 57,
        MyHTML_TAG_H4 = 58,
        MyHTML_TAG_H5 = 59,
        MyHTML_TAG_H6 = 60,
        MyHTML_TAG_HEAD = 61,
        MyHTML_TAG_HEADER = 62,
        MyHTML_TAG_HGROUP = 63,
        MyHTML_TAG_HR = 64,
        MyHTML_TAG_HTML = 65,
        MyHTML_TAG_I = 66,
        MyHTML_TAG_IFRAME = 67,
        MyHTML_TAG_IMAGE = 68,
        MyHTML_TAG_IMG = 69,
        MyHTML_TAG_INPUT = 70,
        MyHTML_TAG_INS = 71,
        MyHTML_TAG_ISINDEX = 72,
        MyHTML_TAG_KBD = 73,
        MyHTML_TAG_KEYGEN = 74,
        MyHTML_TAG_LABEL = 75,
        MyHTML_TAG_LEGEND = 76,
        MyHTML_TAG_LI = 77,
        MyHTML_TAG_LINK = 78,
        MyHTML_TAG_LISTING = 79,
        MyHTML_TAG_MAIN = 80,
        MyHTML_TAG_MAP = 81,
        MyHTML_TAG_MARK = 82,
        MyHTML_TAG_MARQUEE = 83,
        MyHTML_TAG_MENU = 84,
        MyHTML_TAG_MENUITEM = 85,
        MyHTML_TAG_META = 86,
        MyHTML_TAG_METER = 87,
        MyHTML_TAG_MTEXT = 88,
        MyHTML_TAG_NAV = 89,
        MyHTML_TAG_NOBR = 90,
        MyHTML_TAG_NOEMBED = 91,
        MyHTML_TAG_NOFRAMES = 92,
        MyHTML_TAG_NOSCRIPT = 93,
        MyHTML_TAG_OBJECT = 94,
        MyHTML_TAG_OL = 95,
        MyHTML_TAG_OPTGROUP = 96,
        MyHTML_TAG_OPTION = 97,
        MyHTML_TAG_OUTPUT = 98,
        MyHTML_TAG_P = 99,
        MyHTML_TAG_PARAM = 100,
        MyHTML_TAG_PLAINTEXT = 101,
        MyHTML_TAG_PRE = 102,
        MyHTML_TAG_PROGRESS = 103,
        MyHTML_TAG_Q = 104,
        MyHTML_TAG_RB = 105,
        MyHTML_TAG_RP = 106,
        MyHTML_TAG_RT = 107,
        MyHTML_TAG_RTC = 108,
        MyHTML_TAG_RUBY = 109,
        MyHTML_TAG_S = 110,
        MyHTML_TAG_SAMP = 111,
        MyHTML_TAG_SCRIPT = 112,
        MyHTML_TAG_SECTION = 113,
        MyHTML_TAG_SELECT = 114,
        MyHTML_TAG_SMALL = 115,
        MyHTML_TAG_SOURCE = 116,
        MyHTML_TAG_SPAN = 117,
        MyHTML_TAG_STRIKE = 118,
        MyHTML_TAG_STRONG = 119,
        MyHTML_TAG_STYLE = 120,
        MyHTML_TAG_SUB = 121,
        MyHTML_TAG_SUMMARY = 122,
        MyHTML_TAG_SUP = 123,
        MyHTML_TAG_SVG = 124,
        MyHTML_TAG_TABLE = 125,
        MyHTML_TAG_TBODY = 126,
        MyHTML_TAG_TD = 127,
        MyHTML_TAG_TEMPLATE = 128,
        MyHTML_TAG_TEXTAREA = 129,
        MyHTML_TAG_TFOOT = 130,
        MyHTML_TAG_TH = 131,
        MyHTML_TAG_THEAD = 132,
        MyHTML_TAG_TIME = 133,
        MyHTML_TAG_TITLE = 134,
        MyHTML_TAG_TR = 135,
        MyHTML_TAG_TRACK = 136,
        MyHTML_TAG_TT = 137,
        MyHTML_TAG_U = 138,
        MyHTML_TAG_UL = 139,
        MyHTML_TAG_VAR = 140,
        MyHTML_TAG_VIDEO = 141,
        MyHTML_TAG_WBR = 142,
        MyHTML_TAG_XMP = 143,
        MyHTML_TAG_ALTGLYPH = 144,
        MyHTML_TAG_ALTGLYPHDEF = 145,
        MyHTML_TAG_ALTGLYPHITEM = 146,
        MyHTML_TAG_ANIMATE = 147,
        MyHTML_TAG_ANIMATECOLOR = 148,
        MyHTML_TAG_ANIMATEMOTION = 149,
        MyHTML_TAG_ANIMATETRANSFORM = 150,
        MyHTML_TAG_CIRCLE = 151,
        MyHTML_TAG_CLIPPATH = 152,
        MyHTML_TAG_COLOR_PROFILE = 153,
        MyHTML_TAG_CURSOR = 154,
        MyHTML_TAG_DEFS = 155,
        MyHTML_TAG_DESC = 156,
        MyHTML_TAG_ELLIPSE = 157,
        MyHTML_TAG_FEBLEND = 158,
        MyHTML_TAG_FECOLORMATRIX = 159,
        MyHTML_TAG_FECOMPONENTTRANSFER = 160,
        MyHTML_TAG_FECOMPOSITE = 161,
        MyHTML_TAG_FECONVOLVEMATRIX = 162,
        MyHTML_TAG_FEDIFFUSELIGHTING = 163,
        MyHTML_TAG_FEDISPLACEMENTMAP = 164,
        MyHTML_TAG_FEDISTANTLIGHT = 165,
        MyHTML_TAG_FEDROPSHADOW = 166,
        MyHTML_TAG_FEFLOOD = 167,
        MyHTML_TAG_FEFUNCA = 168,
        MyHTML_TAG_FEFUNCB = 169,
        MyHTML_TAG_FEFUNCG = 170,
        MyHTML_TAG_FEFUNCR = 171,
        MyHTML_TAG_FEGAUSSIANBLUR = 172,
        MyHTML_TAG_FEIMAGE = 173,
        MyHTML_TAG_FEMERGE = 174,
        MyHTML_TAG_FEMERGENODE = 175,
        MyHTML_TAG_FEMORPHOLOGY = 176,
        MyHTML_TAG_FEOFFSET = 177,
        MyHTML_TAG_FEPOINTLIGHT = 178,
        MyHTML_TAG_FESPECULARLIGHTING = 179,
        MyHTML_TAG_FESPOTLIGHT = 180,
        MyHTML_TAG_FETILE = 181,
        MyHTML_TAG_FETURBULENCE = 182,
        MyHTML_TAG_FILTER = 183,
        MyHTML_TAG_FONT_FACE = 184,
        MyHTML_TAG_FONT_FACE_FORMAT = 185,
        MyHTML_TAG_FONT_FACE_NAME = 186,
        MyHTML_TAG_FONT_FACE_SRC = 187,
        MyHTML_TAG_FONT_FACE_URI = 188,
        MyHTML_TAG_FOREIGNOBJECT = 189,
        MyHTML_TAG_G = 190,
        MyHTML_TAG_GLYPH = 191,
        MyHTML_TAG_GLYPHREF = 192,
        MyHTML_TAG_HKERN = 193,
        MyHTML_TAG_LINE = 194,
        MyHTML_TAG_LINEARGRADIENT = 195,
        MyHTML_TAG_MARKER = 196,
        MyHTML_TAG_MASK = 197,
        MyHTML_TAG_METADATA = 198,
        MyHTML_TAG_MISSING_GLYPH = 199,
        MyHTML_TAG_MPATH = 200,
        MyHTML_TAG_PATH = 201,
        MyHTML_TAG_PATTERN = 202,
        MyHTML_TAG_POLYGON = 203,
        MyHTML_TAG_POLYLINE = 204,
        MyHTML_TAG_RADIALGRADIENT = 205,
        MyHTML_TAG_RECT = 206,
        MyHTML_TAG_SET = 207,
        MyHTML_TAG_STOP = 208,
        MyHTML_TAG_SWITCH = 209,
        MyHTML_TAG_SYMBOL = 210,
        MyHTML_TAG_TEXT = 211,
        MyHTML_TAG_TEXTPATH = 212,
        MyHTML_TAG_TREF = 213,
        MyHTML_TAG_TSPAN = 214,
        MyHTML_TAG_USE = 215,
        MyHTML_TAG_VIEW = 216,
        MyHTML_TAG_VKERN = 217,
        MyHTML_TAG_MATH = 218,
        MyHTML_TAG_MACTION = 219,
        MyHTML_TAG_MALIGNGROUP = 220,
        MyHTML_TAG_MALIGNMARK = 221,
        MyHTML_TAG_MENCLOSE = 222,
        MyHTML_TAG_MERROR = 223,
        MyHTML_TAG_MFENCED = 224,
        MyHTML_TAG_MFRAC = 225,
        MyHTML_TAG_MGLYPH = 226,
        MyHTML_TAG_MI = 227,
        MyHTML_TAG_MLABELEDTR = 228,
        MyHTML_TAG_MLONGDIV = 229,
        MyHTML_TAG_MMULTISCRIPTS = 230,
        MyHTML_TAG_MN = 231,
        MyHTML_TAG_MO = 232,
        MyHTML_TAG_MOVER = 233,
        MyHTML_TAG_MPADDED = 234,
        MyHTML_TAG_MPHANTOM = 235,
        MyHTML_TAG_MROOT = 236,
        MyHTML_TAG_MROW = 237,
        MyHTML_TAG_MS = 238,
        MyHTML_TAG_MSCARRIES = 239,
        MyHTML_TAG_MSCARRY = 240,
        MyHTML_TAG_MSGROUP = 241,
        MyHTML_TAG_MSLINE = 242,
        MyHTML_TAG_MSPACE = 243,
        MyHTML_TAG_MSQRT = 244,
        MyHTML_TAG_MSROW = 245,
        MyHTML_TAG_MSTACK = 246,
        MyHTML_TAG_MSTYLE = 247,
        MyHTML_TAG_MSUB = 248,
        MyHTML_TAG_MSUP = 249,
        MyHTML_TAG_MSUBSUP = 250,
        MyHTML_TAG__END_OF_FILE = 251,
        MyHTML_TAG_FIRST_ENTRY = 1,
        MyHTML_TAG_LAST_ENTRY = 252,
    }
    enum MyHTML_TAG__UNDEF = myhtml_tags.MyHTML_TAG__UNDEF;
    enum MyHTML_TAG__TEXT = myhtml_tags.MyHTML_TAG__TEXT;
    enum MyHTML_TAG__COMMENT = myhtml_tags.MyHTML_TAG__COMMENT;
    enum MyHTML_TAG__DOCTYPE = myhtml_tags.MyHTML_TAG__DOCTYPE;
    enum MyHTML_TAG_A = myhtml_tags.MyHTML_TAG_A;
    enum MyHTML_TAG_ABBR = myhtml_tags.MyHTML_TAG_ABBR;
    enum MyHTML_TAG_ACRONYM = myhtml_tags.MyHTML_TAG_ACRONYM;
    enum MyHTML_TAG_ADDRESS = myhtml_tags.MyHTML_TAG_ADDRESS;
    enum MyHTML_TAG_ANNOTATION_XML = myhtml_tags.MyHTML_TAG_ANNOTATION_XML;
    enum MyHTML_TAG_APPLET = myhtml_tags.MyHTML_TAG_APPLET;
    enum MyHTML_TAG_AREA = myhtml_tags.MyHTML_TAG_AREA;
    enum MyHTML_TAG_ARTICLE = myhtml_tags.MyHTML_TAG_ARTICLE;
    enum MyHTML_TAG_ASIDE = myhtml_tags.MyHTML_TAG_ASIDE;
    enum MyHTML_TAG_AUDIO = myhtml_tags.MyHTML_TAG_AUDIO;
    enum MyHTML_TAG_B = myhtml_tags.MyHTML_TAG_B;
    enum MyHTML_TAG_BASE = myhtml_tags.MyHTML_TAG_BASE;
    enum MyHTML_TAG_BASEFONT = myhtml_tags.MyHTML_TAG_BASEFONT;
    enum MyHTML_TAG_BDI = myhtml_tags.MyHTML_TAG_BDI;
    enum MyHTML_TAG_BDO = myhtml_tags.MyHTML_TAG_BDO;
    enum MyHTML_TAG_BGSOUND = myhtml_tags.MyHTML_TAG_BGSOUND;
    enum MyHTML_TAG_BIG = myhtml_tags.MyHTML_TAG_BIG;
    enum MyHTML_TAG_BLINK = myhtml_tags.MyHTML_TAG_BLINK;
    enum MyHTML_TAG_BLOCKQUOTE = myhtml_tags.MyHTML_TAG_BLOCKQUOTE;
    enum MyHTML_TAG_BODY = myhtml_tags.MyHTML_TAG_BODY;
    enum MyHTML_TAG_BR = myhtml_tags.MyHTML_TAG_BR;
    enum MyHTML_TAG_BUTTON = myhtml_tags.MyHTML_TAG_BUTTON;
    enum MyHTML_TAG_CANVAS = myhtml_tags.MyHTML_TAG_CANVAS;
    enum MyHTML_TAG_CAPTION = myhtml_tags.MyHTML_TAG_CAPTION;
    enum MyHTML_TAG_CENTER = myhtml_tags.MyHTML_TAG_CENTER;
    enum MyHTML_TAG_CITE = myhtml_tags.MyHTML_TAG_CITE;
    enum MyHTML_TAG_CODE = myhtml_tags.MyHTML_TAG_CODE;
    enum MyHTML_TAG_COL = myhtml_tags.MyHTML_TAG_COL;
    enum MyHTML_TAG_COLGROUP = myhtml_tags.MyHTML_TAG_COLGROUP;
    enum MyHTML_TAG_COMMAND = myhtml_tags.MyHTML_TAG_COMMAND;
    enum MyHTML_TAG_COMMENT = myhtml_tags.MyHTML_TAG_COMMENT;
    enum MyHTML_TAG_DATALIST = myhtml_tags.MyHTML_TAG_DATALIST;
    enum MyHTML_TAG_DD = myhtml_tags.MyHTML_TAG_DD;
    enum MyHTML_TAG_DEL = myhtml_tags.MyHTML_TAG_DEL;
    enum MyHTML_TAG_DETAILS = myhtml_tags.MyHTML_TAG_DETAILS;
    enum MyHTML_TAG_DFN = myhtml_tags.MyHTML_TAG_DFN;
    enum MyHTML_TAG_DIALOG = myhtml_tags.MyHTML_TAG_DIALOG;
    enum MyHTML_TAG_DIR = myhtml_tags.MyHTML_TAG_DIR;
    enum MyHTML_TAG_DIV = myhtml_tags.MyHTML_TAG_DIV;
    enum MyHTML_TAG_DL = myhtml_tags.MyHTML_TAG_DL;
    enum MyHTML_TAG_DT = myhtml_tags.MyHTML_TAG_DT;
    enum MyHTML_TAG_EM = myhtml_tags.MyHTML_TAG_EM;
    enum MyHTML_TAG_EMBED = myhtml_tags.MyHTML_TAG_EMBED;
    enum MyHTML_TAG_FIELDSET = myhtml_tags.MyHTML_TAG_FIELDSET;
    enum MyHTML_TAG_FIGCAPTION = myhtml_tags.MyHTML_TAG_FIGCAPTION;
    enum MyHTML_TAG_FIGURE = myhtml_tags.MyHTML_TAG_FIGURE;
    enum MyHTML_TAG_FONT = myhtml_tags.MyHTML_TAG_FONT;
    enum MyHTML_TAG_FOOTER = myhtml_tags.MyHTML_TAG_FOOTER;
    enum MyHTML_TAG_FORM = myhtml_tags.MyHTML_TAG_FORM;
    enum MyHTML_TAG_FRAME = myhtml_tags.MyHTML_TAG_FRAME;
    enum MyHTML_TAG_FRAMESET = myhtml_tags.MyHTML_TAG_FRAMESET;
    enum MyHTML_TAG_H1 = myhtml_tags.MyHTML_TAG_H1;
    enum MyHTML_TAG_H2 = myhtml_tags.MyHTML_TAG_H2;
    enum MyHTML_TAG_H3 = myhtml_tags.MyHTML_TAG_H3;
    enum MyHTML_TAG_H4 = myhtml_tags.MyHTML_TAG_H4;
    enum MyHTML_TAG_H5 = myhtml_tags.MyHTML_TAG_H5;
    enum MyHTML_TAG_H6 = myhtml_tags.MyHTML_TAG_H6;
    enum MyHTML_TAG_HEAD = myhtml_tags.MyHTML_TAG_HEAD;
    enum MyHTML_TAG_HEADER = myhtml_tags.MyHTML_TAG_HEADER;
    enum MyHTML_TAG_HGROUP = myhtml_tags.MyHTML_TAG_HGROUP;
    enum MyHTML_TAG_HR = myhtml_tags.MyHTML_TAG_HR;
    enum MyHTML_TAG_HTML = myhtml_tags.MyHTML_TAG_HTML;
    enum MyHTML_TAG_I = myhtml_tags.MyHTML_TAG_I;
    enum MyHTML_TAG_IFRAME = myhtml_tags.MyHTML_TAG_IFRAME;
    enum MyHTML_TAG_IMAGE = myhtml_tags.MyHTML_TAG_IMAGE;
    enum MyHTML_TAG_IMG = myhtml_tags.MyHTML_TAG_IMG;
    enum MyHTML_TAG_INPUT = myhtml_tags.MyHTML_TAG_INPUT;
    enum MyHTML_TAG_INS = myhtml_tags.MyHTML_TAG_INS;
    enum MyHTML_TAG_ISINDEX = myhtml_tags.MyHTML_TAG_ISINDEX;
    enum MyHTML_TAG_KBD = myhtml_tags.MyHTML_TAG_KBD;
    enum MyHTML_TAG_KEYGEN = myhtml_tags.MyHTML_TAG_KEYGEN;
    enum MyHTML_TAG_LABEL = myhtml_tags.MyHTML_TAG_LABEL;
    enum MyHTML_TAG_LEGEND = myhtml_tags.MyHTML_TAG_LEGEND;
    enum MyHTML_TAG_LI = myhtml_tags.MyHTML_TAG_LI;
    enum MyHTML_TAG_LINK = myhtml_tags.MyHTML_TAG_LINK;
    enum MyHTML_TAG_LISTING = myhtml_tags.MyHTML_TAG_LISTING;
    enum MyHTML_TAG_MAIN = myhtml_tags.MyHTML_TAG_MAIN;
    enum MyHTML_TAG_MAP = myhtml_tags.MyHTML_TAG_MAP;
    enum MyHTML_TAG_MARK = myhtml_tags.MyHTML_TAG_MARK;
    enum MyHTML_TAG_MARQUEE = myhtml_tags.MyHTML_TAG_MARQUEE;
    enum MyHTML_TAG_MENU = myhtml_tags.MyHTML_TAG_MENU;
    enum MyHTML_TAG_MENUITEM = myhtml_tags.MyHTML_TAG_MENUITEM;
    enum MyHTML_TAG_META = myhtml_tags.MyHTML_TAG_META;
    enum MyHTML_TAG_METER = myhtml_tags.MyHTML_TAG_METER;
    enum MyHTML_TAG_MTEXT = myhtml_tags.MyHTML_TAG_MTEXT;
    enum MyHTML_TAG_NAV = myhtml_tags.MyHTML_TAG_NAV;
    enum MyHTML_TAG_NOBR = myhtml_tags.MyHTML_TAG_NOBR;
    enum MyHTML_TAG_NOEMBED = myhtml_tags.MyHTML_TAG_NOEMBED;
    enum MyHTML_TAG_NOFRAMES = myhtml_tags.MyHTML_TAG_NOFRAMES;
    enum MyHTML_TAG_NOSCRIPT = myhtml_tags.MyHTML_TAG_NOSCRIPT;
    enum MyHTML_TAG_OBJECT = myhtml_tags.MyHTML_TAG_OBJECT;
    enum MyHTML_TAG_OL = myhtml_tags.MyHTML_TAG_OL;
    enum MyHTML_TAG_OPTGROUP = myhtml_tags.MyHTML_TAG_OPTGROUP;
    enum MyHTML_TAG_OPTION = myhtml_tags.MyHTML_TAG_OPTION;
    enum MyHTML_TAG_OUTPUT = myhtml_tags.MyHTML_TAG_OUTPUT;
    enum MyHTML_TAG_P = myhtml_tags.MyHTML_TAG_P;
    enum MyHTML_TAG_PARAM = myhtml_tags.MyHTML_TAG_PARAM;
    enum MyHTML_TAG_PLAINTEXT = myhtml_tags.MyHTML_TAG_PLAINTEXT;
    enum MyHTML_TAG_PRE = myhtml_tags.MyHTML_TAG_PRE;
    enum MyHTML_TAG_PROGRESS = myhtml_tags.MyHTML_TAG_PROGRESS;
    enum MyHTML_TAG_Q = myhtml_tags.MyHTML_TAG_Q;
    enum MyHTML_TAG_RB = myhtml_tags.MyHTML_TAG_RB;
    enum MyHTML_TAG_RP = myhtml_tags.MyHTML_TAG_RP;
    enum MyHTML_TAG_RT = myhtml_tags.MyHTML_TAG_RT;
    enum MyHTML_TAG_RTC = myhtml_tags.MyHTML_TAG_RTC;
    enum MyHTML_TAG_RUBY = myhtml_tags.MyHTML_TAG_RUBY;
    enum MyHTML_TAG_S = myhtml_tags.MyHTML_TAG_S;
    enum MyHTML_TAG_SAMP = myhtml_tags.MyHTML_TAG_SAMP;
    enum MyHTML_TAG_SCRIPT = myhtml_tags.MyHTML_TAG_SCRIPT;
    enum MyHTML_TAG_SECTION = myhtml_tags.MyHTML_TAG_SECTION;
    enum MyHTML_TAG_SELECT = myhtml_tags.MyHTML_TAG_SELECT;
    enum MyHTML_TAG_SMALL = myhtml_tags.MyHTML_TAG_SMALL;
    enum MyHTML_TAG_SOURCE = myhtml_tags.MyHTML_TAG_SOURCE;
    enum MyHTML_TAG_SPAN = myhtml_tags.MyHTML_TAG_SPAN;
    enum MyHTML_TAG_STRIKE = myhtml_tags.MyHTML_TAG_STRIKE;
    enum MyHTML_TAG_STRONG = myhtml_tags.MyHTML_TAG_STRONG;
    enum MyHTML_TAG_STYLE = myhtml_tags.MyHTML_TAG_STYLE;
    enum MyHTML_TAG_SUB = myhtml_tags.MyHTML_TAG_SUB;
    enum MyHTML_TAG_SUMMARY = myhtml_tags.MyHTML_TAG_SUMMARY;
    enum MyHTML_TAG_SUP = myhtml_tags.MyHTML_TAG_SUP;
    enum MyHTML_TAG_SVG = myhtml_tags.MyHTML_TAG_SVG;
    enum MyHTML_TAG_TABLE = myhtml_tags.MyHTML_TAG_TABLE;
    enum MyHTML_TAG_TBODY = myhtml_tags.MyHTML_TAG_TBODY;
    enum MyHTML_TAG_TD = myhtml_tags.MyHTML_TAG_TD;
    enum MyHTML_TAG_TEMPLATE = myhtml_tags.MyHTML_TAG_TEMPLATE;
    enum MyHTML_TAG_TEXTAREA = myhtml_tags.MyHTML_TAG_TEXTAREA;
    enum MyHTML_TAG_TFOOT = myhtml_tags.MyHTML_TAG_TFOOT;
    enum MyHTML_TAG_TH = myhtml_tags.MyHTML_TAG_TH;
    enum MyHTML_TAG_THEAD = myhtml_tags.MyHTML_TAG_THEAD;
    enum MyHTML_TAG_TIME = myhtml_tags.MyHTML_TAG_TIME;
    enum MyHTML_TAG_TITLE = myhtml_tags.MyHTML_TAG_TITLE;
    enum MyHTML_TAG_TR = myhtml_tags.MyHTML_TAG_TR;
    enum MyHTML_TAG_TRACK = myhtml_tags.MyHTML_TAG_TRACK;
    enum MyHTML_TAG_TT = myhtml_tags.MyHTML_TAG_TT;
    enum MyHTML_TAG_U = myhtml_tags.MyHTML_TAG_U;
    enum MyHTML_TAG_UL = myhtml_tags.MyHTML_TAG_UL;
    enum MyHTML_TAG_VAR = myhtml_tags.MyHTML_TAG_VAR;
    enum MyHTML_TAG_VIDEO = myhtml_tags.MyHTML_TAG_VIDEO;
    enum MyHTML_TAG_WBR = myhtml_tags.MyHTML_TAG_WBR;
    enum MyHTML_TAG_XMP = myhtml_tags.MyHTML_TAG_XMP;
    enum MyHTML_TAG_ALTGLYPH = myhtml_tags.MyHTML_TAG_ALTGLYPH;
    enum MyHTML_TAG_ALTGLYPHDEF = myhtml_tags.MyHTML_TAG_ALTGLYPHDEF;
    enum MyHTML_TAG_ALTGLYPHITEM = myhtml_tags.MyHTML_TAG_ALTGLYPHITEM;
    enum MyHTML_TAG_ANIMATE = myhtml_tags.MyHTML_TAG_ANIMATE;
    enum MyHTML_TAG_ANIMATECOLOR = myhtml_tags.MyHTML_TAG_ANIMATECOLOR;
    enum MyHTML_TAG_ANIMATEMOTION = myhtml_tags.MyHTML_TAG_ANIMATEMOTION;
    enum MyHTML_TAG_ANIMATETRANSFORM = myhtml_tags.MyHTML_TAG_ANIMATETRANSFORM;
    enum MyHTML_TAG_CIRCLE = myhtml_tags.MyHTML_TAG_CIRCLE;
    enum MyHTML_TAG_CLIPPATH = myhtml_tags.MyHTML_TAG_CLIPPATH;
    enum MyHTML_TAG_COLOR_PROFILE = myhtml_tags.MyHTML_TAG_COLOR_PROFILE;
    enum MyHTML_TAG_CURSOR = myhtml_tags.MyHTML_TAG_CURSOR;
    enum MyHTML_TAG_DEFS = myhtml_tags.MyHTML_TAG_DEFS;
    enum MyHTML_TAG_DESC = myhtml_tags.MyHTML_TAG_DESC;
    enum MyHTML_TAG_ELLIPSE = myhtml_tags.MyHTML_TAG_ELLIPSE;
    enum MyHTML_TAG_FEBLEND = myhtml_tags.MyHTML_TAG_FEBLEND;
    enum MyHTML_TAG_FECOLORMATRIX = myhtml_tags.MyHTML_TAG_FECOLORMATRIX;
    enum MyHTML_TAG_FECOMPONENTTRANSFER = myhtml_tags.MyHTML_TAG_FECOMPONENTTRANSFER;
    enum MyHTML_TAG_FECOMPOSITE = myhtml_tags.MyHTML_TAG_FECOMPOSITE;
    enum MyHTML_TAG_FECONVOLVEMATRIX = myhtml_tags.MyHTML_TAG_FECONVOLVEMATRIX;
    enum MyHTML_TAG_FEDIFFUSELIGHTING = myhtml_tags.MyHTML_TAG_FEDIFFUSELIGHTING;
    enum MyHTML_TAG_FEDISPLACEMENTMAP = myhtml_tags.MyHTML_TAG_FEDISPLACEMENTMAP;
    enum MyHTML_TAG_FEDISTANTLIGHT = myhtml_tags.MyHTML_TAG_FEDISTANTLIGHT;
    enum MyHTML_TAG_FEDROPSHADOW = myhtml_tags.MyHTML_TAG_FEDROPSHADOW;
    enum MyHTML_TAG_FEFLOOD = myhtml_tags.MyHTML_TAG_FEFLOOD;
    enum MyHTML_TAG_FEFUNCA = myhtml_tags.MyHTML_TAG_FEFUNCA;
    enum MyHTML_TAG_FEFUNCB = myhtml_tags.MyHTML_TAG_FEFUNCB;
    enum MyHTML_TAG_FEFUNCG = myhtml_tags.MyHTML_TAG_FEFUNCG;
    enum MyHTML_TAG_FEFUNCR = myhtml_tags.MyHTML_TAG_FEFUNCR;
    enum MyHTML_TAG_FEGAUSSIANBLUR = myhtml_tags.MyHTML_TAG_FEGAUSSIANBLUR;
    enum MyHTML_TAG_FEIMAGE = myhtml_tags.MyHTML_TAG_FEIMAGE;
    enum MyHTML_TAG_FEMERGE = myhtml_tags.MyHTML_TAG_FEMERGE;
    enum MyHTML_TAG_FEMERGENODE = myhtml_tags.MyHTML_TAG_FEMERGENODE;
    enum MyHTML_TAG_FEMORPHOLOGY = myhtml_tags.MyHTML_TAG_FEMORPHOLOGY;
    enum MyHTML_TAG_FEOFFSET = myhtml_tags.MyHTML_TAG_FEOFFSET;
    enum MyHTML_TAG_FEPOINTLIGHT = myhtml_tags.MyHTML_TAG_FEPOINTLIGHT;
    enum MyHTML_TAG_FESPECULARLIGHTING = myhtml_tags.MyHTML_TAG_FESPECULARLIGHTING;
    enum MyHTML_TAG_FESPOTLIGHT = myhtml_tags.MyHTML_TAG_FESPOTLIGHT;
    enum MyHTML_TAG_FETILE = myhtml_tags.MyHTML_TAG_FETILE;
    enum MyHTML_TAG_FETURBULENCE = myhtml_tags.MyHTML_TAG_FETURBULENCE;
    enum MyHTML_TAG_FILTER = myhtml_tags.MyHTML_TAG_FILTER;
    enum MyHTML_TAG_FONT_FACE = myhtml_tags.MyHTML_TAG_FONT_FACE;
    enum MyHTML_TAG_FONT_FACE_FORMAT = myhtml_tags.MyHTML_TAG_FONT_FACE_FORMAT;
    enum MyHTML_TAG_FONT_FACE_NAME = myhtml_tags.MyHTML_TAG_FONT_FACE_NAME;
    enum MyHTML_TAG_FONT_FACE_SRC = myhtml_tags.MyHTML_TAG_FONT_FACE_SRC;
    enum MyHTML_TAG_FONT_FACE_URI = myhtml_tags.MyHTML_TAG_FONT_FACE_URI;
    enum MyHTML_TAG_FOREIGNOBJECT = myhtml_tags.MyHTML_TAG_FOREIGNOBJECT;
    enum MyHTML_TAG_G = myhtml_tags.MyHTML_TAG_G;
    enum MyHTML_TAG_GLYPH = myhtml_tags.MyHTML_TAG_GLYPH;
    enum MyHTML_TAG_GLYPHREF = myhtml_tags.MyHTML_TAG_GLYPHREF;
    enum MyHTML_TAG_HKERN = myhtml_tags.MyHTML_TAG_HKERN;
    enum MyHTML_TAG_LINE = myhtml_tags.MyHTML_TAG_LINE;
    enum MyHTML_TAG_LINEARGRADIENT = myhtml_tags.MyHTML_TAG_LINEARGRADIENT;
    enum MyHTML_TAG_MARKER = myhtml_tags.MyHTML_TAG_MARKER;
    enum MyHTML_TAG_MASK = myhtml_tags.MyHTML_TAG_MASK;
    enum MyHTML_TAG_METADATA = myhtml_tags.MyHTML_TAG_METADATA;
    enum MyHTML_TAG_MISSING_GLYPH = myhtml_tags.MyHTML_TAG_MISSING_GLYPH;
    enum MyHTML_TAG_MPATH = myhtml_tags.MyHTML_TAG_MPATH;
    enum MyHTML_TAG_PATH = myhtml_tags.MyHTML_TAG_PATH;
    enum MyHTML_TAG_PATTERN = myhtml_tags.MyHTML_TAG_PATTERN;
    enum MyHTML_TAG_POLYGON = myhtml_tags.MyHTML_TAG_POLYGON;
    enum MyHTML_TAG_POLYLINE = myhtml_tags.MyHTML_TAG_POLYLINE;
    enum MyHTML_TAG_RADIALGRADIENT = myhtml_tags.MyHTML_TAG_RADIALGRADIENT;
    enum MyHTML_TAG_RECT = myhtml_tags.MyHTML_TAG_RECT;
    enum MyHTML_TAG_SET = myhtml_tags.MyHTML_TAG_SET;
    enum MyHTML_TAG_STOP = myhtml_tags.MyHTML_TAG_STOP;
    enum MyHTML_TAG_SWITCH = myhtml_tags.MyHTML_TAG_SWITCH;
    enum MyHTML_TAG_SYMBOL = myhtml_tags.MyHTML_TAG_SYMBOL;
    enum MyHTML_TAG_TEXT = myhtml_tags.MyHTML_TAG_TEXT;
    enum MyHTML_TAG_TEXTPATH = myhtml_tags.MyHTML_TAG_TEXTPATH;
    enum MyHTML_TAG_TREF = myhtml_tags.MyHTML_TAG_TREF;
    enum MyHTML_TAG_TSPAN = myhtml_tags.MyHTML_TAG_TSPAN;
    enum MyHTML_TAG_USE = myhtml_tags.MyHTML_TAG_USE;
    enum MyHTML_TAG_VIEW = myhtml_tags.MyHTML_TAG_VIEW;
    enum MyHTML_TAG_VKERN = myhtml_tags.MyHTML_TAG_VKERN;
    enum MyHTML_TAG_MATH = myhtml_tags.MyHTML_TAG_MATH;
    enum MyHTML_TAG_MACTION = myhtml_tags.MyHTML_TAG_MACTION;
    enum MyHTML_TAG_MALIGNGROUP = myhtml_tags.MyHTML_TAG_MALIGNGROUP;
    enum MyHTML_TAG_MALIGNMARK = myhtml_tags.MyHTML_TAG_MALIGNMARK;
    enum MyHTML_TAG_MENCLOSE = myhtml_tags.MyHTML_TAG_MENCLOSE;
    enum MyHTML_TAG_MERROR = myhtml_tags.MyHTML_TAG_MERROR;
    enum MyHTML_TAG_MFENCED = myhtml_tags.MyHTML_TAG_MFENCED;
    enum MyHTML_TAG_MFRAC = myhtml_tags.MyHTML_TAG_MFRAC;
    enum MyHTML_TAG_MGLYPH = myhtml_tags.MyHTML_TAG_MGLYPH;
    enum MyHTML_TAG_MI = myhtml_tags.MyHTML_TAG_MI;
    enum MyHTML_TAG_MLABELEDTR = myhtml_tags.MyHTML_TAG_MLABELEDTR;
    enum MyHTML_TAG_MLONGDIV = myhtml_tags.MyHTML_TAG_MLONGDIV;
    enum MyHTML_TAG_MMULTISCRIPTS = myhtml_tags.MyHTML_TAG_MMULTISCRIPTS;
    enum MyHTML_TAG_MN = myhtml_tags.MyHTML_TAG_MN;
    enum MyHTML_TAG_MO = myhtml_tags.MyHTML_TAG_MO;
    enum MyHTML_TAG_MOVER = myhtml_tags.MyHTML_TAG_MOVER;
    enum MyHTML_TAG_MPADDED = myhtml_tags.MyHTML_TAG_MPADDED;
    enum MyHTML_TAG_MPHANTOM = myhtml_tags.MyHTML_TAG_MPHANTOM;
    enum MyHTML_TAG_MROOT = myhtml_tags.MyHTML_TAG_MROOT;
    enum MyHTML_TAG_MROW = myhtml_tags.MyHTML_TAG_MROW;
    enum MyHTML_TAG_MS = myhtml_tags.MyHTML_TAG_MS;
    enum MyHTML_TAG_MSCARRIES = myhtml_tags.MyHTML_TAG_MSCARRIES;
    enum MyHTML_TAG_MSCARRY = myhtml_tags.MyHTML_TAG_MSCARRY;
    enum MyHTML_TAG_MSGROUP = myhtml_tags.MyHTML_TAG_MSGROUP;
    enum MyHTML_TAG_MSLINE = myhtml_tags.MyHTML_TAG_MSLINE;
    enum MyHTML_TAG_MSPACE = myhtml_tags.MyHTML_TAG_MSPACE;
    enum MyHTML_TAG_MSQRT = myhtml_tags.MyHTML_TAG_MSQRT;
    enum MyHTML_TAG_MSROW = myhtml_tags.MyHTML_TAG_MSROW;
    enum MyHTML_TAG_MSTACK = myhtml_tags.MyHTML_TAG_MSTACK;
    enum MyHTML_TAG_MSTYLE = myhtml_tags.MyHTML_TAG_MSTYLE;
    enum MyHTML_TAG_MSUB = myhtml_tags.MyHTML_TAG_MSUB;
    enum MyHTML_TAG_MSUP = myhtml_tags.MyHTML_TAG_MSUP;
    enum MyHTML_TAG_MSUBSUP = myhtml_tags.MyHTML_TAG_MSUBSUP;
    enum MyHTML_TAG__END_OF_FILE = myhtml_tags.MyHTML_TAG__END_OF_FILE;
    enum MyHTML_TAG_FIRST_ENTRY = myhtml_tags.MyHTML_TAG_FIRST_ENTRY;
    enum MyHTML_TAG_LAST_ENTRY = myhtml_tags.MyHTML_TAG_LAST_ENTRY;
    enum mcobject_async_status
    {
        MCOBJECT_ASYNC_STATUS_OK = 0,
        MCOBJECT_ASYNC_STATUS_ERROR_MEMORY_ALLOCATION = 1,
        MCOBJECT_ASYNC_STATUS_CHUNK_ERROR_MEMORY_ALLOCATION = 2,
        MCOBJECT_ASYNC_STATUS_CHUNK_CACHE_ERROR_MEMORY_ALLOCATION = 3,
        MCOBJECT_ASYNC_STATUS_NODES_ERROR_MEMORY_ALLOCATION = 4,
        MCOBJECT_ASYNC_STATUS_NODES_ERROR_BAD_NODE_ID = 5,
        MCOBJECT_ASYNC_STATUS_CACHE_ERROR_MEMORY_REALLOC = 6,
    }
    enum MCOBJECT_ASYNC_STATUS_OK = mcobject_async_status.MCOBJECT_ASYNC_STATUS_OK;
    enum MCOBJECT_ASYNC_STATUS_ERROR_MEMORY_ALLOCATION = mcobject_async_status.MCOBJECT_ASYNC_STATUS_ERROR_MEMORY_ALLOCATION;
    enum MCOBJECT_ASYNC_STATUS_CHUNK_ERROR_MEMORY_ALLOCATION = mcobject_async_status.MCOBJECT_ASYNC_STATUS_CHUNK_ERROR_MEMORY_ALLOCATION;
    enum MCOBJECT_ASYNC_STATUS_CHUNK_CACHE_ERROR_MEMORY_ALLOCATION = mcobject_async_status.MCOBJECT_ASYNC_STATUS_CHUNK_CACHE_ERROR_MEMORY_ALLOCATION;
    enum MCOBJECT_ASYNC_STATUS_NODES_ERROR_MEMORY_ALLOCATION = mcobject_async_status.MCOBJECT_ASYNC_STATUS_NODES_ERROR_MEMORY_ALLOCATION;
    enum MCOBJECT_ASYNC_STATUS_NODES_ERROR_BAD_NODE_ID = mcobject_async_status.MCOBJECT_ASYNC_STATUS_NODES_ERROR_BAD_NODE_ID;
    enum MCOBJECT_ASYNC_STATUS_CACHE_ERROR_MEMORY_REALLOC = mcobject_async_status.MCOBJECT_ASYNC_STATUS_CACHE_ERROR_MEMORY_REALLOC;
    alias mcobject_async_status_t = mcobject_async_status;
    struct myhtml_data_process_entry
    {
        myhtml_data_process_state_f state;
        myencoding_t encoding;
        myencoding_result_t res;
        size_t tmp_str_pos_proc;
        size_t tmp_str_pos;
        size_t tmp_num;
        charef_entry_result_t charef_res;
        bool is_attributes;
        bool emit_null_char;
    }
    myhtml_callback_token_f myhtml_callback_before_token_done(myhtml_tree_t*) @nogc nothrow;
    struct myhtml_stream_buffer_entry
    {
        char* data;
        size_t length;
        size_t size;
    }
    size_t myhtml_tokenizer_state_doctype(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_data(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t myhtml_rules_init(myhtml_t*) @nogc nothrow;
    void myhtml_rules_stop_parsing(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tokenizer_state_before_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_callback_token_f myhtml_callback_after_token_done(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myencoding_string_append(mycore_string_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_callback_before_token_done_set(myhtml_tree_t*, myhtml_callback_token_f, void*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool myhtml_rules_tree_dispatcher(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    void myhtml_parser_stream(mythread_id_t, void*) @nogc nothrow;
    void myhtml_callback_after_token_done_set(myhtml_tree_t*, myhtml_callback_token_f, void*) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_after_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_parser_worker(mythread_id_t, void*) @nogc nothrow;
    void myencoding_string_append_chunk(mycore_string_t*, myencoding_result_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;




    size_t myhtml_tokenizer_state_script_data_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool myhtml_insertion_mode_in_body_other_end_tag(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_state_custom_after_doctype_name_a_z(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_self_closing_start_tag(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_callback_tree_node_f myhtml_callback_tree_node_insert(myhtml_tree_t*) @nogc nothrow;
    void myhtml_parser_worker_stream(mythread_id_t, void*) @nogc nothrow;
    void myencoding_string_append_one(mycore_string_t*, myencoding_result_t*, const(char), myencoding_t) @nogc nothrow;
    bool myhtml_insertion_mode_in_body(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;


    size_t myhtml_tokenizer_state_script_data_escape_start(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_before_doctype_public_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;





    size_t myhtml_tokenizer_end_state_markup_declaration_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;


    size_t myhtml_tokenizer_state_script_data_escape_start_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml_stream_buffer
    {
        myhtml_stream_buffer_entry_t* entries;
        size_t length;
        size_t size;
        myencoding_result_t res;
    }
    myhtml_callback_tree_node_f myhtml_callback_tree_node_remove(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_before_attribute_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool myhtml_insertion_mode_in_template(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_state_doctype_public_identifier_double_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;


    size_t myhtml_tokenizer_state_script_data_escaped(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_doctype_public_identifier_single_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_attribute_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;


    struct charef_entry_result
    {
        const(charef_entry_t)* curr_entry;
        const(charef_entry_t)* last_entry;
        size_t last_offset;
        int is_done;
    }
    alias charef_entry_result_t = charef_entry_result;
    alias mythread_callback_before_entry_join_f = void function(mythread_t*, mythread_entry_t*, void*);
    alias myhtml_data_process_entry_t = myhtml_data_process_entry;
    void myhtml_callback_tree_node_insert_set(myhtml_tree_t*, myhtml_callback_tree_node_f, void*) @nogc nothrow;
    size_t myhtml_parser_token_data_to_string(myhtml_tree_t*, mycore_string_t*, myhtml_data_process_entry_t*, size_t, size_t) @nogc nothrow;
    void myhtml_callback_tree_node_remove_set(myhtml_tree_t*, myhtml_callback_tree_node_f, void*) @nogc nothrow;
    size_t myhtml_tokenizer_state_after_doctype_public_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mythread_process_f = void* function(void*);
    size_t myhtml_parser_token_data_to_string_lowercase(myhtml_tree_t*, mycore_string_t*, myhtml_data_process_entry_t*, size_t, size_t) @nogc nothrow;


    size_t myhtml_tokenizer_end_state_after_attribute_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_escaped_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myencoding_string_append_lowercase_ascii(mycore_string_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;


    alias mcobject_t = mcobject;
    struct mcobject
    {
        mcobject_chunk_t* chunk;
        void** cache;
        size_t cache_size;
        size_t cache_length;
        size_t struct_size;
        size_t chunk_size;
    }
    struct myhtml_token_replacement_entry
    {
        char* from;
        size_t from_size;
        char* to;
        size_t to_size;
    }
    alias mythread_work_f = void function(mythread_id_t, void*);
    void myencoding_string_append_chunk_lowercase_ascii(mycore_string_t*, myencoding_result_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;
    mycore_incoming_buffer_t* mycore_incoming_buffer_add(mycore_incoming_buffer_t*, mcobject_t*, const(char)*, size_t) @nogc nothrow;
    size_t myhtml_parser_token_data_to_string_charef(myhtml_tree_t*, mycore_string_t*, myhtml_data_process_entry_t*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_before_attribute_value(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_escaped_dash_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_doctype_system_identifier_double_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_string_append_with_convert_encoding_with_preprocessing(mycore_string_t*, const(char)*, size_t, myencoding_t, bool) @nogc nothrow;
    mystatus_t myhtml_tokenizer_begin(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    size_t myhtml_string_append_chunk_with_convert_encoding_with_preprocessing(mycore_string_t*, myencoding_result_t*, const(char)*, size_t, myencoding_t, bool) @nogc nothrow;
    enum myhtml_tree_flags
    {
        MyHTML_TREE_FLAGS_CLEAN = 0,
        MyHTML_TREE_FLAGS_SCRIPT = 1,
        MyHTML_TREE_FLAGS_FRAMESET_OK = 2,
        MyHTML_TREE_FLAGS_IFRAME_SRCDOC = 4,
        MyHTML_TREE_FLAGS_ALREADY_STARTED = 8,
        MyHTML_TREE_FLAGS_SINGLE_MODE = 16,
        MyHTML_TREE_FLAGS_PARSE_END = 32,
        MyHTML_TREE_FLAGS_PARSE_FLAG = 64,
        MyHTML_TREE_FLAGS_PARSE_FLAG_EMIT_NEWLINE = 128,
    }
    enum MyHTML_TREE_FLAGS_CLEAN = myhtml_tree_flags.MyHTML_TREE_FLAGS_CLEAN;
    enum MyHTML_TREE_FLAGS_SCRIPT = myhtml_tree_flags.MyHTML_TREE_FLAGS_SCRIPT;
    enum MyHTML_TREE_FLAGS_FRAMESET_OK = myhtml_tree_flags.MyHTML_TREE_FLAGS_FRAMESET_OK;
    enum MyHTML_TREE_FLAGS_IFRAME_SRCDOC = myhtml_tree_flags.MyHTML_TREE_FLAGS_IFRAME_SRCDOC;
    enum MyHTML_TREE_FLAGS_ALREADY_STARTED = myhtml_tree_flags.MyHTML_TREE_FLAGS_ALREADY_STARTED;
    enum MyHTML_TREE_FLAGS_SINGLE_MODE = myhtml_tree_flags.MyHTML_TREE_FLAGS_SINGLE_MODE;
    enum MyHTML_TREE_FLAGS_PARSE_END = myhtml_tree_flags.MyHTML_TREE_FLAGS_PARSE_END;
    enum MyHTML_TREE_FLAGS_PARSE_FLAG = myhtml_tree_flags.MyHTML_TREE_FLAGS_PARSE_FLAG;
    enum MyHTML_TREE_FLAGS_PARSE_FLAG_EMIT_NEWLINE = myhtml_tree_flags.MyHTML_TREE_FLAGS_PARSE_FLAG_EMIT_NEWLINE;
    alias mcobject_async_chunk_t = mcobject_async_chunk;
    struct mcobject_async_chunk
    {
        ubyte* begin;
        size_t length;
        size_t size;
        mcobject_async_chunk* next;
        mcobject_async_chunk* prev;
    }







    size_t myhtml_tokenizer_state_doctype_system_identifier_single_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_attribute_value_double_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_escaped_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycore_incoming_buffer_clean(mycore_incoming_buffer_t*) @nogc nothrow;


    void* mythread_function_queue_stream(void*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_attribute_value_single_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycore_incoming_buffer_t* mycore_incoming_buffer_split(mycore_incoming_buffer_t*, mcobject_t*, size_t) @nogc nothrow;


    mystatus_t myhtml_tokenizer_chunk(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_after_doctype_system_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_escaped_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_bogus_doctype(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mcsimple_t* mcsimple_create() @nogc nothrow;
    void* mythread_function_queue_batch(void*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_attribute_value_unquoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_escaped_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t myhtml_tokenizer_chunk_with_stream_buffer(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    void* mythread_function(void*) @nogc nothrow;


    size_t myhtml_tokenizer_end_state_after_attribute_value_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escape_start(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycore_incoming_buffer_t* mycore_incoming_buffer_find_by_position(mycore_incoming_buffer_t*, size_t) @nogc nothrow;


    size_t myhtml_string_append_lowercase_with_convert_encoding_with_preprocessing(mycore_string_t*, const(char)*, size_t, myencoding_t, bool) @nogc nothrow;
    void mcsimple_init(mcsimple_t*, size_t, size_t, size_t) @nogc nothrow;
    mystatus_t myhtml_tokenizer_end(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escaped(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_string_append_lowercase_chunk_with_convert_encoding_with_preprocessing(mycore_string_t*, myencoding_result_t*, const(char)*, size_t, myencoding_t, bool) @nogc nothrow;


    void mcsimple_clean(mcsimple_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment_start(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_stream_buffer_t* myhtml_stream_buffer_create() @nogc nothrow;
    void myhtml_tokenizer_set_state(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment_start_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t myhtml_stream_buffer_init(myhtml_stream_buffer_t*, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escaped_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    enum mythread_thread_opt
    {
        MyTHREAD_OPT_UNDEF = 0,
        MyTHREAD_OPT_WAIT = 1,
        MyTHREAD_OPT_QUIT = 2,
        MyTHREAD_OPT_STOP = 4,
        MyTHREAD_OPT_DONE = 8,
    }
    enum MyTHREAD_OPT_UNDEF = mythread_thread_opt.MyTHREAD_OPT_UNDEF;
    enum MyTHREAD_OPT_WAIT = mythread_thread_opt.MyTHREAD_OPT_WAIT;
    enum MyTHREAD_OPT_QUIT = mythread_thread_opt.MyTHREAD_OPT_QUIT;
    enum MyTHREAD_OPT_STOP = mythread_thread_opt.MyTHREAD_OPT_STOP;
    enum MyTHREAD_OPT_DONE = mythread_thread_opt.MyTHREAD_OPT_DONE;
    const(charef_entry_t)* myhtml_charef_find(const(char)*, size_t*, size_t, size_t*) @nogc nothrow;




    alias mythread_thread_opt_t = mythread_thread_opt;
    const(char)* mycore_incoming_buffer_data(mycore_incoming_buffer_t*) @nogc nothrow;
    mcsimple_t* mcsimple_destroy(mcsimple_t*, bool) @nogc nothrow;
    void myhtml_tokenizer_calc_current_namespace(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_stream_buffer_clean(myhtml_stream_buffer_t*) @nogc nothrow;
    const(charef_entry_t)* myhtml_charef_find_by_pos(size_t, const(char)*, size_t*, size_t, charef_entry_result_t*) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escaped_dash_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;


    size_t mycore_incoming_buffer_length(mycore_incoming_buffer_t*) @nogc nothrow;
    size_t mycore_incoming_buffer_size(mycore_incoming_buffer_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment_end(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escaped_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml_token_namespace_replacement
    {
        char* from;
        size_t from_size;
        char* to;
        size_t to_size;
        myhtml_namespace ns;
    }
    const(charef_entry_t)* myhtml_charef_get_first_position(const(char)) @nogc nothrow;
    uint8_t* mcsimple_init_list_entries(mcsimple_t*, size_t) @nogc nothrow;
    size_t myhtml_string_before_append_any_preprocessing(mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_stream_buffer_t* myhtml_stream_buffer_destroy(myhtml_stream_buffer_t*, bool) @nogc nothrow;
    size_t myhtml_tokenizer_state_script_data_double_escape_end(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycore_incoming_buffer_offset(mycore_incoming_buffer_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tokenizer_fragment_init(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    myhtml_stream_buffer_entry_t* myhtml_stream_buffer_add_entry(myhtml_stream_buffer_t*, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment_end_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_string_append_with_preprocessing(mycore_string_t*, const(char)*, size_t, bool) @nogc nothrow;
    myhtml_stream_buffer_entry_t* myhtml_stream_buffer_current_entry(myhtml_stream_buffer_t*) @nogc nothrow;




    void* mcsimple_malloc(mcsimple_t*) @nogc nothrow;







    size_t myhtml_string_append_lowercase_with_preprocessing(mycore_string_t*, const(char)*, size_t, bool) @nogc nothrow;
    size_t mycore_incoming_buffer_relative_begin(mycore_incoming_buffer_t*, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_comment_end_bang(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycore_incoming_buffer_available_length(mycore_incoming_buffer_t*, size_t, size_t) @nogc nothrow;
    void* mcsimple_get_by_absolute_position(mcsimple_t*, size_t) @nogc nothrow;
    alias mcobject_async_node_t = mcobject_async_node;
    struct mcobject_async_node
    {
        mcobject_async_chunk_t* chunk;
        void** cache;
        size_t cache_size;
        size_t cache_length;
    }
    size_t myhtml_tokenizer_end_state_bogus_comment(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_tokenizer_wait(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_cdata_section(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_tokenizer_post(myhtml_tree_t*) @nogc nothrow;
    mystatus_t myhtml_stream_buffer_entry_init(myhtml_stream_buffer_entry_t*, size_t) @nogc nothrow;
    void myhtml_data_process_entry_clean(myhtml_data_process_entry_t*) @nogc nothrow;
    mcobject_t* mcobject_create() @nogc nothrow;
    void myhtml_stream_buffer_entry_clean(myhtml_stream_buffer_entry_t*) @nogc nothrow;
    alias myhtml_tree_parse_flags_t = myhtml_tree_parse_flags;
    mycore_incoming_buffer_t* mycore_incoming_buffer_next(mycore_incoming_buffer_t*) @nogc nothrow;



    void myhtml_tokenizer_pause(myhtml_tree_t*) @nogc nothrow;
    enum myhtml_tree_parse_flags
    {
        MyHTML_TREE_PARSE_FLAGS_CLEAN = 0,
        MyHTML_TREE_PARSE_FLAGS_WITHOUT_BUILD_TREE = 1,
        MyHTML_TREE_PARSE_FLAGS_WITHOUT_PROCESS_TOKEN = 3,
        MyHTML_TREE_PARSE_FLAGS_SKIP_WHITESPACE_TOKEN = 4,
        MyHTML_TREE_PARSE_FLAGS_WITHOUT_DOCTYPE_IN_TREE = 8,
    }
    enum MyHTML_TREE_PARSE_FLAGS_CLEAN = myhtml_tree_parse_flags.MyHTML_TREE_PARSE_FLAGS_CLEAN;
    enum MyHTML_TREE_PARSE_FLAGS_WITHOUT_BUILD_TREE = myhtml_tree_parse_flags.MyHTML_TREE_PARSE_FLAGS_WITHOUT_BUILD_TREE;
    enum MyHTML_TREE_PARSE_FLAGS_WITHOUT_PROCESS_TOKEN = myhtml_tree_parse_flags.MyHTML_TREE_PARSE_FLAGS_WITHOUT_PROCESS_TOKEN;
    enum MyHTML_TREE_PARSE_FLAGS_SKIP_WHITESPACE_TOKEN = myhtml_tree_parse_flags.MyHTML_TREE_PARSE_FLAGS_SKIP_WHITESPACE_TOKEN;
    enum MyHTML_TREE_PARSE_FLAGS_WITHOUT_DOCTYPE_IN_TREE = myhtml_tree_parse_flags.MyHTML_TREE_PARSE_FLAGS_WITHOUT_DOCTYPE_IN_TREE;
    mystatus_t mcobject_init(mcobject_t*, size_t, size_t) @nogc nothrow;
    enum myhtml_tree_node_type
    {
        MyHTML_TYPE_NONE = 0,
        MyHTML_TYPE_BLOCK = 1,
        MyHTML_TYPE_INLINE = 2,
        MyHTML_TYPE_TABLE = 3,
        MyHTML_TYPE_META = 4,
        MyHTML_TYPE_COMMENT = 5,
    }
    enum MyHTML_TYPE_NONE = myhtml_tree_node_type.MyHTML_TYPE_NONE;
    enum MyHTML_TYPE_BLOCK = myhtml_tree_node_type.MyHTML_TYPE_BLOCK;
    enum MyHTML_TYPE_INLINE = myhtml_tree_node_type.MyHTML_TYPE_INLINE;
    enum MyHTML_TYPE_TABLE = myhtml_tree_node_type.MyHTML_TYPE_TABLE;
    enum MyHTML_TYPE_META = myhtml_tree_node_type.MyHTML_TYPE_META;
    enum MyHTML_TYPE_COMMENT = myhtml_tree_node_type.MyHTML_TYPE_COMMENT;
    void myhtml_data_process(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t) @nogc nothrow;
    void mcobject_clean(mcobject_t*) @nogc nothrow;
    myhtml_stream_buffer_entry_t* myhtml_stream_buffer_entry_destroy(myhtml_stream_buffer_entry_t*, bool) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rcdata(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycore_incoming_buffer_t* mycore_incoming_buffer_prev(mycore_incoming_buffer_t*) @nogc nothrow;
    enum mythread_type
    {
        MyTHREAD_TYPE_STREAM = 0,
        MyTHREAD_TYPE_BATCH = 1,
    }
    enum MyTHREAD_TYPE_STREAM = mythread_type.MyTHREAD_TYPE_STREAM;
    enum MyTHREAD_TYPE_BATCH = mythread_type.MyTHREAD_TYPE_BATCH;
    mcobject_t* mcobject_destroy(mcobject_t*, bool) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rcdata_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mythread_type_t = mythread_type;
    void myhtml_data_process_end(myhtml_data_process_entry_t*, mycore_string_t*) @nogc nothrow;
    mystatus_t myhtml_tokenizer_state_init(myhtml_t*) @nogc nothrow;
    void myhtml_tokenizer_state_destroy(myhtml_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rcdata_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycore_incoming_buffer_convert_one_escaped_to_code_point(mycore_incoming_buffer_t**, size_t*) @nogc nothrow;
    void mcobject_chunk_malloc(mcobject_t*, mystatus_t*) @nogc nothrow;




    alias mctree_index_t = c_ulong;
    size_t myhtml_data_process_state_data(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycore_incoming_buffer_escaped_case_cmp(mycore_incoming_buffer_t**, const(char)*, size_t, size_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rcdata_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_token_node_t* myhtml_tokenizer_queue_create_text_node_if_need(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, myhtml_token_type) @nogc nothrow;
    size_t myhtml_data_process_state_ampersand(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;



    struct myhtml_token_attr
    {
        myhtml_token_attr_t* next;
        myhtml_token_attr_t* prev;
        mycore_string_t key;
        mycore_string_t value;
        size_t raw_key_begin;
        size_t raw_key_length;
        size_t raw_value_begin;
        size_t raw_value_length;
        myhtml_namespace ns;
    }
    struct mctree_node
    {
        const(char)* str;
        size_t str_size;
        void* value;
        size_t child_count;
        mctree_index_t prev;
        mctree_index_t next;
        mctree_index_t child;
    }
    size_t myhtml_tokenizer_end_state_rawtext(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_check_tag_parser(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t) @nogc nothrow;
    void* mcobject_malloc(mcobject_t*, mystatus_t*) @nogc nothrow;
    size_t myhtml_data_process_state_ampersand_data(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mctree_node_t = mctree_node;
    struct mcobject_async
    {
        size_t origin_size;
        size_t struct_size;
        size_t struct_size_sn;
        mcobject_async_chunk_t** chunk_cache;
        size_t chunk_cache_size;
        size_t chunk_cache_length;
        mcobject_async_chunk_t** chunks;
        size_t chunks_pos_size;
        size_t chunks_pos_length;
        size_t chunks_size;
        size_t chunks_length;
        mcobject_async_node_t* nodes;
        size_t nodes_length;
        size_t nodes_size;
        size_t* nodes_cache;
        size_t nodes_cache_length;
        size_t nodes_cache_size;
        mcsync_t* mcsync_;
    }
    mystatus_t mcobject_free(mcobject_t*, void*) @nogc nothrow;
    size_t myhtml_data_process_state_ampersand_hash(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rawtext_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mcobject_async_t = mcobject_async;




    size_t myhtml_tokenizer_state_bogus_comment(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_tag_context_t = myhtml_tag_context;
    struct myhtml_tag_context
    {
        myhtml_tag_id_t id;
        const(char)* name;
        size_t name_length;
        myhtml_tokenizer_state data_parser;
        myhtml_tag_categories[7] cats;
    }
    size_t myhtml_data_process_state_ampersand_hash_data(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_rawtext_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_data_process_state_ampersand_hash_x_data(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_tree_temp_tag_name_t = myhtml_tree_temp_tag_name;
    size_t myhtml_tokenizer_end_state_rawtext_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_tree_insertion_list_t = myhtml_tree_insertion_list;
    enum myhtml_close_type
    {
        MyHTML_CLOSE_TYPE_NONE = 0,
        MyHTML_CLOSE_TYPE_NOW = 1,
        MyHTML_CLOSE_TYPE_SELF = 2,
        MyHTML_CLOSE_TYPE_BLOCK = 3,
    }
    enum MyHTML_CLOSE_TYPE_NONE = myhtml_close_type.MyHTML_CLOSE_TYPE_NONE;
    enum MyHTML_CLOSE_TYPE_NOW = myhtml_close_type.MyHTML_CLOSE_TYPE_NOW;
    enum MyHTML_CLOSE_TYPE_SELF = myhtml_close_type.MyHTML_CLOSE_TYPE_SELF;
    enum MyHTML_CLOSE_TYPE_BLOCK = myhtml_close_type.MyHTML_CLOSE_TYPE_BLOCK;
    void myhtml_data_process_state_end(myhtml_data_process_entry_t*, mycore_string_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_plaintext(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_tree_token_list_t = myhtml_tree_token_list;
    size_t myhtml_tokenizer_end_state_doctype(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml
    {
        mythread_t* thread_stream;
        mythread_t* thread_batch;
        mythread_t*[3] thread_list;
        size_t thread_total;
        myhtml_tokenizer_state_f* parse_state_func;
        myhtml_insertion_f* insertion_func;
        myhtml_options opt;
        myhtml_tree_node_t* marker;
    }
    alias myhtml_tree_list_t = myhtml_tree_list;
    alias myhtml_tree_doctype_t = myhtml_tree_doctype;
    size_t myhtml_tokenizer_end_state_before_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_async_args_t = myhtml_async_args;
    size_t myhtml_tokenizer_end_state_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_after_doctype_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_custom_after_doctype_name_a_z(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_tree_node_t = myhtml_tree_node;
    size_t myhtml_tokenizer_end_state_before_doctype_public_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_t* mythread_queue_create() @nogc nothrow;
    alias myhtml_tree_t = myhtml_tree;
    enum myhtml_tree_node_flags
    {
        MyHTML_TREE_NODE_UNDEF = 0,
        MyHTML_TREE_NODE_PARSER_INSERTED = 1,
        MyHTML_TREE_NODE_BLOCKING = 2,
    }
    enum MyHTML_TREE_NODE_UNDEF = myhtml_tree_node_flags.MyHTML_TREE_NODE_UNDEF;
    enum MyHTML_TREE_NODE_PARSER_INSERTED = myhtml_tree_node_flags.MyHTML_TREE_NODE_PARSER_INSERTED;
    enum MyHTML_TREE_NODE_BLOCKING = myhtml_tree_node_flags.MyHTML_TREE_NODE_BLOCKING;
    struct mctree_tree
    {
        mctree_node_t* nodes;
        size_t nodes_length;
        size_t nodes_size;
        size_t start_size;
    }
    alias mctree_t = mctree_tree;
    size_t myhtml_tokenizer_end_state_doctype_public_identifier_double_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t mythread_queue_init(mythread_queue_t*, size_t) @nogc nothrow;
    struct myhtml_tag_static_list
    {
        const(myhtml_tag_context_t)* ctx;
        size_t next;
        size_t cur;
    }
    alias myhtml_tag_static_list_t = myhtml_tag_static_list;
    void mythread_queue_clean(mythread_queue_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_doctype_public_identifier_single_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml_token_node
    {
        myhtml_tag_id_t tag_id;
        mycore_string_t str;
        size_t raw_begin;
        size_t raw_length;
        size_t element_begin;
        size_t element_length;
        myhtml_token_attr_t* attr_first;
        myhtml_token_attr_t* attr_last;
         myhtml_token_type type;
    }
    enum myhtml_token_type
    {
        MyHTML_TOKEN_TYPE_OPEN = 0,
        MyHTML_TOKEN_TYPE_CLOSE = 1,
        MyHTML_TOKEN_TYPE_CLOSE_SELF = 2,
        MyHTML_TOKEN_TYPE_DONE = 4,
        MyHTML_TOKEN_TYPE_WHITESPACE = 8,
        MyHTML_TOKEN_TYPE_RCDATA = 16,
        MyHTML_TOKEN_TYPE_RAWTEXT = 32,
        MyHTML_TOKEN_TYPE_SCRIPT = 64,
        MyHTML_TOKEN_TYPE_PLAINTEXT = 128,
        MyHTML_TOKEN_TYPE_CDATA = 256,
        MyHTML_TOKEN_TYPE_DATA = 512,
        MyHTML_TOKEN_TYPE_COMMENT = 1024,
        MyHTML_TOKEN_TYPE_NULL = 2048,
    }
    enum MyHTML_TOKEN_TYPE_OPEN = myhtml_token_type.MyHTML_TOKEN_TYPE_OPEN;
    enum MyHTML_TOKEN_TYPE_CLOSE = myhtml_token_type.MyHTML_TOKEN_TYPE_CLOSE;
    enum MyHTML_TOKEN_TYPE_CLOSE_SELF = myhtml_token_type.MyHTML_TOKEN_TYPE_CLOSE_SELF;
    enum MyHTML_TOKEN_TYPE_DONE = myhtml_token_type.MyHTML_TOKEN_TYPE_DONE;
    enum MyHTML_TOKEN_TYPE_WHITESPACE = myhtml_token_type.MyHTML_TOKEN_TYPE_WHITESPACE;
    enum MyHTML_TOKEN_TYPE_RCDATA = myhtml_token_type.MyHTML_TOKEN_TYPE_RCDATA;
    enum MyHTML_TOKEN_TYPE_RAWTEXT = myhtml_token_type.MyHTML_TOKEN_TYPE_RAWTEXT;
    enum MyHTML_TOKEN_TYPE_SCRIPT = myhtml_token_type.MyHTML_TOKEN_TYPE_SCRIPT;
    enum MyHTML_TOKEN_TYPE_PLAINTEXT = myhtml_token_type.MyHTML_TOKEN_TYPE_PLAINTEXT;
    enum MyHTML_TOKEN_TYPE_CDATA = myhtml_token_type.MyHTML_TOKEN_TYPE_CDATA;
    enum MyHTML_TOKEN_TYPE_DATA = myhtml_token_type.MyHTML_TOKEN_TYPE_DATA;
    enum MyHTML_TOKEN_TYPE_COMMENT = myhtml_token_type.MyHTML_TOKEN_TYPE_COMMENT;
    enum MyHTML_TOKEN_TYPE_NULL = myhtml_token_type.MyHTML_TOKEN_TYPE_NULL;
    size_t myhtml_tokenizer_end_state_after_doctype_public_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_t* mythread_queue_destroy(mythread_queue_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_doctype_system_identifier_double_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mythread_queue_node_clean(mythread_queue_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_doctype_system_identifier_single_quoted(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml_tree_node
    {
        myhtml_tree_node_flags flags;
        myhtml_tag_id_t tag_id;
        myhtml_namespace ns;
        myhtml_tree_node_t* prev;
        myhtml_tree_node_t* next;
        myhtml_tree_node_t* child;
        myhtml_tree_node_t* parent;
        myhtml_tree_node_t* last_child;
        myhtml_token_node_t* token;
        void* data;
        myhtml_tree_t* tree;
    }
    size_t mythread_queue_count_used_node(mythread_queue_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_after_doctype_system_identifier(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_bogus_doctype(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_node_t* mythread_queue_get_first_node(mythread_queue_t*) @nogc nothrow;
    struct myhtml_collection
    {
        myhtml_tree_node_t** list;
        size_t size;
        size_t length;
    }
    mythread_queue_node_t* mythread_queue_get_prev_node(mythread_queue_node_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct myhtml_tag
    {
        mctree_t* tree;
        mcsimple_t* mcsimple_context;
        size_t tags_count;
        size_t mchar_node;
        mchar_async_t* mchar;
    }
    alias mctree_before_insert_f = void function(const(char)*, size_t, void**);
    size_t myhtml_tokenizer_end_state_script_data_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_node_t* mythread_queue_get_current_node(mythread_queue_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escape_start(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_node_t* mythread_queue_node_malloc(mythread_t*, mythread_queue_t*, mystatus_t*) @nogc nothrow;
    mctree_t* mctree_create(size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escape_start_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mythread_queue_node_t* mythread_queue_node_malloc_limit(mythread_t*, mythread_queue_t*, size_t, mystatus_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mctree_clean(mctree_t*) @nogc nothrow;
    mythread_queue_node_t* mythread_queue_node_malloc_round(mythread_t*, mythread_queue_list_entry_t*) @nogc nothrow;
    myhtml_t* myhtml_create() @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mctree_t* mctree_destroy(mctree_t*) @nogc nothrow;
    mystatus_t myhtml_init(myhtml_t*, myhtml_options, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped_dash_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_clean(myhtml_t*) @nogc nothrow;
    mctree_index_t mctree_insert(mctree_t*, const(char)*, size_t, void*, mctree_before_insert_f) @nogc nothrow;
    mcobject_async_t* mcobject_async_create() @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mcobject_async_status_t mcobject_async_init(mcobject_async_t*, size_t, size_t, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped_end_tag_open(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mctree_index_t mctree_search(mctree_t*, const(char)*, size_t) @nogc nothrow;
    myhtml_t* myhtml_destroy(myhtml_t*) @nogc nothrow;
    alias myhtml_token_index_t = c_ulong;
    mctree_index_t mctree_search_lowercase(mctree_t*, const(char)*, size_t) @nogc nothrow;
    mythread_queue_list_t* mythread_queue_list_create(mystatus_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_escaped_end_tag_name(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_tag_t* myhtml_tag_create() @nogc nothrow;
    void mcobject_async_clean(mcobject_async_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escape_start(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mythread_queue_list_destroy(mythread_queue_list_t*) @nogc nothrow;
    struct myhtml_token
    {
        myhtml_tree_t* tree;
        mcobject_async_t* nodes_obj;
        mcobject_async_t* attr_obj;
        size_t mcasync_token_id;
        size_t mcasync_attr_id;
        bool is_new_tmp;
    }
    mystatus_t myhtml_tag_init(myhtml_tree_t*, myhtml_tag_t*) @nogc nothrow;
    mystatus_t myhtml_parse(myhtml_tree_t*, myencoding_t, const(char)*, size_t) @nogc nothrow;
    alias myhtml_token_attr_index_t = c_ulong;
    size_t mythread_queue_list_get_count(mythread_queue_list_t*) @nogc nothrow;
    mcobject_async_t* mcobject_async_destroy(mcobject_async_t*, int) @nogc nothrow;
    alias myhtml_token_replacement_entry_t = myhtml_token_replacement_entry;
    mystatus_t myhtml_parse_fragment(myhtml_tree_t*, myencoding_t, const(char)*, size_t, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escaped(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void myhtml_tag_clean(myhtml_tag_t*) @nogc nothrow;
    myhtml_tag_t* myhtml_tag_destroy(myhtml_tag_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escaped_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias myhtml_token_namespace_replacement_t = myhtml_token_namespace_replacement;
    mystatus_t myhtml_parse_single(myhtml_tree_t*, myencoding_t, const(char)*, size_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escaped_dash_dash(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mcobject_async_node_add(mcobject_async_t*, mcobject_async_status_t*) @nogc nothrow;
    void mythread_queue_list_wait_for_done(mythread_t*, mythread_queue_list_t*) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escaped_less_than_sign(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    myhtml_tag_id_t myhtml_tag_add(myhtml_tag_t*, const(char)*, size_t, myhtml_tokenizer_state, bool) @nogc nothrow;
    mystatus_t myhtml_parse_fragment_single(myhtml_tree_t*, myencoding_t, const(char)*, size_t, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    bool mythread_queue_list_see_for_done(mythread_t*, mythread_queue_list_t*) @nogc nothrow;
    void mcobject_async_node_clean(mcobject_async_t*, size_t) @nogc nothrow;
    alias myhtml_token_attr_t = myhtml_token_attr;
    enum myhtml_tree_compat_mode
    {
        MyHTML_TREE_COMPAT_MODE_NO_QUIRKS = 0,
        MyHTML_TREE_COMPAT_MODE_QUIRKS = 1,
        MyHTML_TREE_COMPAT_MODE_LIMITED_QUIRKS = 2,
    }
    enum MyHTML_TREE_COMPAT_MODE_NO_QUIRKS = myhtml_tree_compat_mode.MyHTML_TREE_COMPAT_MODE_NO_QUIRKS;
    enum MyHTML_TREE_COMPAT_MODE_QUIRKS = myhtml_tree_compat_mode.MyHTML_TREE_COMPAT_MODE_QUIRKS;
    enum MyHTML_TREE_COMPAT_MODE_LIMITED_QUIRKS = myhtml_tree_compat_mode.MyHTML_TREE_COMPAT_MODE_LIMITED_QUIRKS;
    bool mythread_queue_list_see_for_done_by_thread(mythread_t*, mythread_queue_list_t*, mythread_id_t) @nogc nothrow;
    size_t myhtml_tokenizer_end_state_script_data_double_escape_end(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mcobject_async_node_all_clean(mcobject_async_t*) @nogc nothrow;
    alias myhtml_token_node_t = myhtml_token_node;
    alias myhtml_token_t = myhtml_token;
    size_t myhtml_tokenizer_end_state_parse_error_stop(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t myhtml_parse_chunk(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    void mcobject_async_node_delete(mcobject_async_t*, size_t) @nogc nothrow;
    void myhtml_tag_set_category(myhtml_tag_t*, myhtml_tag_id_t, myhtml_namespace, myhtml_tag_categories) @nogc nothrow;
    mystatus_t myhtml_parse_chunk_fragment(myhtml_tree_t*, const(char)*, size_t, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    mythread_queue_list_entry_t* mythread_queue_list_entry_push(mythread_t**, size_t, mythread_queue_list_t*, mythread_queue_t*, size_t, mystatus_t*) @nogc nothrow;
    mystatus_t myhtml_parse_chunk_single(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    void* mcobject_async_malloc(mcobject_async_t*, size_t, mcobject_async_status_t*) @nogc nothrow;
    mythread_queue_list_entry_t* mythread_queue_list_entry_delete(mythread_t**, size_t, mythread_queue_list_t*, mythread_queue_list_entry_t*, bool) @nogc nothrow;
    enum myhtml_tag_categories
    {
        MyHTML_TAG_CATEGORIES_UNDEF = 0,
        MyHTML_TAG_CATEGORIES_ORDINARY = 1,
        MyHTML_TAG_CATEGORIES_SPECIAL = 2,
        MyHTML_TAG_CATEGORIES_FORMATTING = 4,
        MyHTML_TAG_CATEGORIES_SCOPE = 8,
        MyHTML_TAG_CATEGORIES_SCOPE_LIST_ITEM = 16,
        MyHTML_TAG_CATEGORIES_SCOPE_BUTTON = 32,
        MyHTML_TAG_CATEGORIES_SCOPE_TABLE = 64,
        MyHTML_TAG_CATEGORIES_SCOPE_SELECT = 128,
    }
    enum MyHTML_TAG_CATEGORIES_UNDEF = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_UNDEF;
    enum MyHTML_TAG_CATEGORIES_ORDINARY = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_ORDINARY;
    enum MyHTML_TAG_CATEGORIES_SPECIAL = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SPECIAL;
    enum MyHTML_TAG_CATEGORIES_FORMATTING = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_FORMATTING;
    enum MyHTML_TAG_CATEGORIES_SCOPE = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SCOPE;
    enum MyHTML_TAG_CATEGORIES_SCOPE_LIST_ITEM = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SCOPE_LIST_ITEM;
    enum MyHTML_TAG_CATEGORIES_SCOPE_BUTTON = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SCOPE_BUTTON;
    enum MyHTML_TAG_CATEGORIES_SCOPE_TABLE = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SCOPE_TABLE;
    enum MyHTML_TAG_CATEGORIES_SCOPE_SELECT = myhtml_tag_categories.MyHTML_TAG_CATEGORIES_SCOPE_SELECT;
    mythread_t* mythread_create() @nogc nothrow;
    void mythread_queue_list_entry_clean(mythread_queue_list_entry_t*) @nogc nothrow;
    mystatus_t myhtml_parse_chunk_fragment_single(myhtml_tree_t*, const(char)*, size_t, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    mcobject_async_status_t mcobject_async_free(mcobject_async_t*, void*) @nogc nothrow;
    mystatus_t myhtml_parse_chunk_end(myhtml_tree_t*) @nogc nothrow;
    void mythread_queue_list_entry_wait_for_done(mythread_t*, mythread_queue_list_entry_t*) @nogc nothrow;
    mystatus_t mythread_init(mythread_t*, mythread_type_t, size_t, size_t) @nogc nothrow;
    const(myhtml_tag_context_t)* myhtml_tag_get_by_id(myhtml_tag_t*, myhtml_tag_id_t) @nogc nothrow;
    void mythread_queue_list_entry_make_batch(mythread_t*, mythread_queue_list_entry_t*) @nogc nothrow;
    void mythread_clean(mythread_t*) @nogc nothrow;
    const(myhtml_tag_context_t)* myhtml_tag_get_by_name(myhtml_tag_t*, const(char)*, size_t) @nogc nothrow;
    enum myhtml_tree_doctype_id
    {
        MyHTML_TREE_DOCTYPE_ID_NAME = 0,
        MyHTML_TREE_DOCTYPE_ID_SYSTEM = 1,
        MyHTML_TREE_DOCTYPE_ID_PUBLIC = 2,
    }
    enum MyHTML_TREE_DOCTYPE_ID_NAME = myhtml_tree_doctype_id.MyHTML_TREE_DOCTYPE_ID_NAME;
    enum MyHTML_TREE_DOCTYPE_ID_SYSTEM = myhtml_tree_doctype_id.MyHTML_TREE_DOCTYPE_ID_SYSTEM;
    enum MyHTML_TREE_DOCTYPE_ID_PUBLIC = myhtml_tree_doctype_id.MyHTML_TREE_DOCTYPE_ID_PUBLIC;
    mcobject_async_chunk_t* mcobject_async_chunk_malloc(mcobject_async_t*, size_t, mcobject_async_status_t*) @nogc nothrow;
    void mythread_queue_list_entry_make_stream(mythread_t*, mythread_queue_list_entry_t*) @nogc nothrow;
    mythread_t* mythread_destroy(mythread_t*, mythread_callback_before_entry_join_f, void*, bool) @nogc nothrow;
    mcobject_async_chunk_t* mcobject_async_chunk_malloc_without_lock(mcobject_async_t*, size_t, mcobject_async_status_t*) @nogc nothrow;
    void myhtml_encoding_set(myhtml_tree_t*, myencoding_t) @nogc nothrow;
    const(myhtml_tag_context_t)* myhtml_tag_static_get_by_id(size_t) @nogc nothrow;
    myhtml_token_t* myhtml_token_create(myhtml_tree_t*, size_t) @nogc nothrow;
    myencoding_t myhtml_encoding_get(myhtml_tree_t*) @nogc nothrow;
    mythread_id_t myhread_increase_id_by_entry_id(mythread_t*, mythread_id_t) @nogc nothrow;
    const(myhtml_tag_context_t)* myhtml_tag_static_search(const(char)*, size_t) @nogc nothrow;
    void myhtml_token_clean(myhtml_token_t*) @nogc nothrow;
    void myhtml_token_clean_all(myhtml_token_t*) @nogc nothrow;
    myhtml_token_t* myhtml_token_destroy(myhtml_token_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_tag_id(myhtml_tree_t*, myhtml_collection_t*, myhtml_tag_id_t, mystatus_t*) @nogc nothrow;
    mystatus_t mythread_join(mythread_t*, mythread_callback_before_entry_join_f, void*) @nogc nothrow;
    enum myhtml_tree_insertion_mode
    {
        MyHTML_TREE_INSERTION_MODE_DEFAULT = 0,
        MyHTML_TREE_INSERTION_MODE_BEFORE = 1,
        MyHTML_TREE_INSERTION_MODE_AFTER = 2,
    }
    enum MyHTML_TREE_INSERTION_MODE_DEFAULT = myhtml_tree_insertion_mode.MyHTML_TREE_INSERTION_MODE_DEFAULT;
    enum MyHTML_TREE_INSERTION_MODE_BEFORE = myhtml_tree_insertion_mode.MyHTML_TREE_INSERTION_MODE_BEFORE;
    enum MyHTML_TREE_INSERTION_MODE_AFTER = myhtml_tree_insertion_mode.MyHTML_TREE_INSERTION_MODE_AFTER;
    myhtml_collection_t* myhtml_get_nodes_by_name(myhtml_tree_t*, myhtml_collection_t*, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_key(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    mystatus_t mythread_quit(mythread_t*, mythread_callback_before_entry_join_f, void*) @nogc nothrow;
    myhtml_tag_id_t myhtml_token_node_tag_id(myhtml_token_node_t*) @nogc nothrow;
    myhtml_position_t myhtml_token_node_raw_position(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_stop(mythread_t*) @nogc nothrow;
    myhtml_position_t myhtml_token_node_element_position(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_resume(mythread_t*, mythread_thread_opt_t) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    mystatus_t mythread_suspend(mythread_t*) @nogc nothrow;
    alias myhtml_tag_index_node_t = myhtml_tag_index_node;
    struct myhtml_tag_index_node;
    mystatus_t mythread_check_status(mythread_t*) @nogc nothrow;
    struct myhtml_tag_index_entry;
    alias myhtml_tag_index_entry_t = myhtml_tag_index_entry;
    myhtml_tree_attr_t* myhtml_token_node_attribute_first(myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_token_node_attribute_last(myhtml_token_node_t*) @nogc nothrow;
    struct myhtml_tag_index;
    alias myhtml_tag_index_t = myhtml_tag_index;
    struct myhtml_async_args
    {
        size_t mchar_node_id;
    }
    mythread_thread_opt_t mythread_option(mythread_t*) @nogc nothrow;
    alias myhtml_tag_id_t = c_ulong;
    void mythread_option_set(mythread_t*, mythread_thread_opt_t) @nogc nothrow;
    const(char)* myhtml_token_node_text(myhtml_token_node_t*, size_t*) @nogc nothrow;
    mycore_string_t* myhtml_token_node_string(myhtml_token_node_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value_whitespace_separated(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    struct myhtml_tree_doctype
    {
        bool is_html;
        char* attr_name;
        char* attr_public;
        char* attr_system;
    }
    alias myhtml_tag_t = myhtml_tag;
    bool myhtml_token_node_is_close(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t myhread_entry_create(mythread_t*, mythread_process_f, mythread_work_f, mythread_thread_opt_t) @nogc nothrow;
    bool myhtml_token_node_is_close_self(myhtml_token_node_t*) @nogc nothrow;
    alias myhtml_stream_buffer_entry_t = myhtml_stream_buffer_entry;
    mystatus_t mythread_entry_join(mythread_entry_t*, mythread_callback_before_entry_join_f, void*) @nogc nothrow;
    mystatus_t mythread_entry_quit(mythread_entry_t*, mythread_callback_before_entry_join_f, void*) @nogc nothrow;
    alias myhtml_stream_buffer_t = myhtml_stream_buffer;
    myhtml_token_node_t* myhtml_token_node_create(myhtml_token_t*, size_t) @nogc nothrow;
    mystatus_t mythread_entry_stop(mythread_entry_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value_begin(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    void myhtml_token_node_clean(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_entry_resume(mythread_entry_t*, mythread_thread_opt_t) @nogc nothrow;
    enum myhtml_tokenizer_state
    {
        MyHTML_TOKENIZER_STATE_DATA = 0,
        MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_DATA = 1,
        MyHTML_TOKENIZER_STATE_RCDATA = 2,
        MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_RCDATA = 3,
        MyHTML_TOKENIZER_STATE_RAWTEXT = 4,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA = 5,
        MyHTML_TOKENIZER_STATE_PLAINTEXT = 6,
        MyHTML_TOKENIZER_STATE_TAG_OPEN = 7,
        MyHTML_TOKENIZER_STATE_END_TAG_OPEN = 8,
        MyHTML_TOKENIZER_STATE_TAG_NAME = 9,
        MyHTML_TOKENIZER_STATE_RCDATA_LESS_THAN_SIGN = 10,
        MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_OPEN = 11,
        MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_NAME = 12,
        MyHTML_TOKENIZER_STATE_RAWTEXT_LESS_THAN_SIGN = 13,
        MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_OPEN = 14,
        MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_NAME = 15,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_LESS_THAN_SIGN = 16,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_OPEN = 17,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_NAME = 18,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START = 19,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START_DASH = 20,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED = 21,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH = 22,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH_DASH = 23,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_LESS_THAN_SIGN = 24,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_OPEN = 25,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_NAME = 26,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_START = 27,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED = 28,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH = 29,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH_DASH = 30,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_LESS_THAN_SIGN = 31,
        MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_END = 32,
        MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_NAME = 33,
        MyHTML_TOKENIZER_STATE_ATTRIBUTE_NAME = 34,
        MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_NAME = 35,
        MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_VALUE = 36,
        MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_DOUBLE_QUOTED = 37,
        MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_SINGLE_QUOTED = 38,
        MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_UNQUOTED = 39,
        MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_ATTRIBUTE_VALUE = 40,
        MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_VALUE_QUOTED = 41,
        MyHTML_TOKENIZER_STATE_SELF_CLOSING_START_TAG = 42,
        MyHTML_TOKENIZER_STATE_BOGUS_COMMENT = 43,
        MyHTML_TOKENIZER_STATE_MARKUP_DECLARATION_OPEN = 44,
        MyHTML_TOKENIZER_STATE_COMMENT_START = 45,
        MyHTML_TOKENIZER_STATE_COMMENT_START_DASH = 46,
        MyHTML_TOKENIZER_STATE_COMMENT = 47,
        MyHTML_TOKENIZER_STATE_COMMENT_END_DASH = 48,
        MyHTML_TOKENIZER_STATE_COMMENT_END = 49,
        MyHTML_TOKENIZER_STATE_COMMENT_END_BANG = 50,
        MyHTML_TOKENIZER_STATE_DOCTYPE = 51,
        MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_NAME = 52,
        MyHTML_TOKENIZER_STATE_DOCTYPE_NAME = 53,
        MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_NAME = 54,
        MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_KEYWORD = 55,
        MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_PUBLIC_IDENTIFIER = 56,
        MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_DOUBLE_QUOTED = 57,
        MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_SINGLE_QUOTED = 58,
        MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_IDENTIFIER = 59,
        MyHTML_TOKENIZER_STATE_BETWEEN_DOCTYPE_PUBLIC_AND_SYSTEM_IDENTIFIERS = 60,
        MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_KEYWORD = 61,
        MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_SYSTEM_IDENTIFIER = 62,
        MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_DOUBLE_QUOTED = 63,
        MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_SINGLE_QUOTED = 64,
        MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_IDENTIFIER = 65,
        MyHTML_TOKENIZER_STATE_BOGUS_DOCTYPE = 66,
        MyHTML_TOKENIZER_STATE_CDATA_SECTION = 67,
        MyHTML_TOKENIZER_STATE_CUSTOM_AFTER_DOCTYPE_NAME_A_Z = 68,
        MyHTML_TOKENIZER_STATE_PARSE_ERROR_STOP = 69,
        MyHTML_TOKENIZER_STATE_FIRST_ENTRY = 0,
        MyHTML_TOKENIZER_STATE_LAST_ENTRY = 70,
    }
    enum MyHTML_TOKENIZER_STATE_DATA = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DATA;
    enum MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_DATA = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_DATA;
    enum MyHTML_TOKENIZER_STATE_RCDATA = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RCDATA;
    enum MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_RCDATA = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_RCDATA;
    enum MyHTML_TOKENIZER_STATE_RAWTEXT = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RAWTEXT;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA;
    enum MyHTML_TOKENIZER_STATE_PLAINTEXT = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_PLAINTEXT;
    enum MyHTML_TOKENIZER_STATE_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_END_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_END_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_TAG_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_TAG_NAME;
    enum MyHTML_TOKENIZER_STATE_RCDATA_LESS_THAN_SIGN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RCDATA_LESS_THAN_SIGN;
    enum MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RCDATA_END_TAG_NAME;
    enum MyHTML_TOKENIZER_STATE_RAWTEXT_LESS_THAN_SIGN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RAWTEXT_LESS_THAN_SIGN;
    enum MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_RAWTEXT_END_TAG_NAME;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_LESS_THAN_SIGN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_LESS_THAN_SIGN;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_END_TAG_NAME;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPE_START_DASH;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_DASH_DASH;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_LESS_THAN_SIGN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_LESS_THAN_SIGN;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_OPEN;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_ESCAPED_END_TAG_NAME;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_START = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_START;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_DASH_DASH;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_LESS_THAN_SIGN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPED_LESS_THAN_SIGN;
    enum MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_END = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SCRIPT_DATA_DOUBLE_ESCAPE_END;
    enum MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_NAME;
    enum MyHTML_TOKENIZER_STATE_ATTRIBUTE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_ATTRIBUTE_NAME;
    enum MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_NAME;
    enum MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_VALUE = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BEFORE_ATTRIBUTE_VALUE;
    enum MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_DOUBLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_DOUBLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_SINGLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_SINGLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_UNQUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_ATTRIBUTE_VALUE_UNQUOTED;
    enum MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_ATTRIBUTE_VALUE = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_CHARACTER_REFERENCE_IN_ATTRIBUTE_VALUE;
    enum MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_VALUE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_ATTRIBUTE_VALUE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_SELF_CLOSING_START_TAG = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_SELF_CLOSING_START_TAG;
    enum MyHTML_TOKENIZER_STATE_BOGUS_COMMENT = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BOGUS_COMMENT;
    enum MyHTML_TOKENIZER_STATE_MARKUP_DECLARATION_OPEN = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_MARKUP_DECLARATION_OPEN;
    enum MyHTML_TOKENIZER_STATE_COMMENT_START = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT_START;
    enum MyHTML_TOKENIZER_STATE_COMMENT_START_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT_START_DASH;
    enum MyHTML_TOKENIZER_STATE_COMMENT = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT;
    enum MyHTML_TOKENIZER_STATE_COMMENT_END_DASH = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT_END_DASH;
    enum MyHTML_TOKENIZER_STATE_COMMENT_END = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT_END;
    enum MyHTML_TOKENIZER_STATE_COMMENT_END_BANG = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_COMMENT_END_BANG;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE;
    enum MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_NAME;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE_NAME;
    enum MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_NAME = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_NAME;
    enum MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_KEYWORD = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_KEYWORD;
    enum MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_PUBLIC_IDENTIFIER = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_PUBLIC_IDENTIFIER;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_DOUBLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_DOUBLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_SINGLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE_PUBLIC_IDENTIFIER_SINGLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_IDENTIFIER = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_PUBLIC_IDENTIFIER;
    enum MyHTML_TOKENIZER_STATE_BETWEEN_DOCTYPE_PUBLIC_AND_SYSTEM_IDENTIFIERS = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BETWEEN_DOCTYPE_PUBLIC_AND_SYSTEM_IDENTIFIERS;
    enum MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_KEYWORD = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_KEYWORD;
    enum MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_SYSTEM_IDENTIFIER = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BEFORE_DOCTYPE_SYSTEM_IDENTIFIER;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_DOUBLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_DOUBLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_SINGLE_QUOTED = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_DOCTYPE_SYSTEM_IDENTIFIER_SINGLE_QUOTED;
    enum MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_IDENTIFIER = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_AFTER_DOCTYPE_SYSTEM_IDENTIFIER;
    enum MyHTML_TOKENIZER_STATE_BOGUS_DOCTYPE = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_BOGUS_DOCTYPE;
    enum MyHTML_TOKENIZER_STATE_CDATA_SECTION = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_CDATA_SECTION;
    enum MyHTML_TOKENIZER_STATE_CUSTOM_AFTER_DOCTYPE_NAME_A_Z = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_CUSTOM_AFTER_DOCTYPE_NAME_A_Z;
    enum MyHTML_TOKENIZER_STATE_PARSE_ERROR_STOP = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_PARSE_ERROR_STOP;
    enum MyHTML_TOKENIZER_STATE_FIRST_ENTRY = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_FIRST_ENTRY;
    enum MyHTML_TOKENIZER_STATE_LAST_ENTRY = myhtml_tokenizer_state.MyHTML_TOKENIZER_STATE_LAST_ENTRY;
    myhtml_token_attr_t* myhtml_token_attr_create(myhtml_token_t*, size_t) @nogc nothrow;
    mystatus_t mythread_entry_suspend(mythread_entry_t*) @nogc nothrow;
    struct myhtml_tree_list
    {
        myhtml_tree_node_t** list;
         size_t length;
        size_t size;
    }
    void myhtml_token_attr_clean(myhtml_token_attr_t*) @nogc nothrow;
    mystatus_t mythread_entry_status(mythread_entry_t*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_attr_remove(myhtml_token_node_t*, myhtml_token_attr_t*) @nogc nothrow;
    mythread_t* mythread_entry_mythread(mythread_entry_t*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_attr_remove_by_name(myhtml_token_node_t*, const(char)*, size_t) @nogc nothrow;
    void myhtml_token_attr_delete_all(myhtml_token_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value_end(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    void* mythread_thread_create(mythread_t*, mythread_process_f, void*) @nogc nothrow;
    struct myhtml_tree_token_list
    {
        myhtml_token_node_t** list;
        size_t length;
        size_t size;
    }
    void myhtml_token_delete(myhtml_token_t*, myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_thread_join(mythread_t*, void*) @nogc nothrow;
    void myhtml_token_node_wait_for_done(myhtml_token_t*, myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_thread_cancel(mythread_t*, void*) @nogc nothrow;
    void myhtml_token_set_done(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_thread_destroy(mythread_t*, void*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_attr_match(myhtml_token_t*, myhtml_token_node_t*, const(char)*, size_t, const(char)*, size_t) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value_contain(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    void* mythread_thread_attr_init(mythread_t*) @nogc nothrow;
    void mythread_thread_attr_clean(mythread_t*, void*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_attr_match_case(myhtml_token_t*, myhtml_token_node_t*, const(char)*, size_t, const(char)*, size_t) @nogc nothrow;
    struct myhtml_tree_insertion_list
    {
        myhtml_insertion_mode* list;
        size_t length;
        size_t size;
    }
    void mythread_thread_attr_destroy(mythread_t*, void*) @nogc nothrow;
    bool myhtml_token_release_and_check_doctype_attributes(myhtml_token_t*, myhtml_token_node_t*, myhtml_tree_doctype_t*) @nogc nothrow;
    void* mythread_mutex_create(mythread_t*) @nogc nothrow;
    mystatus_t mythread_mutex_post(mythread_t*, void*) @nogc nothrow;
    void myhtml_token_adjust_mathml_attributes(myhtml_token_node_t*) @nogc nothrow;
    void myhtml_token_adjust_svg_attributes(myhtml_token_node_t*) @nogc nothrow;
    mystatus_t mythread_mutex_wait(mythread_t*, void*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_attribute_value_hyphen_separated(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, bool, const(char)*, size_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    void mythread_mutex_close(mythread_t*, void*) @nogc nothrow;
    void myhtml_token_adjust_foreign_attributes(myhtml_token_node_t*) @nogc nothrow;
    struct myhtml_tree_temp_tag_name
    {
        char* data;
        size_t length;
        size_t size;
    }
    myhtml_token_attr_t* myhtml_token_node_attr_append(myhtml_token_t*, myhtml_token_node_t*, const(char)*, size_t, const(char)*, size_t, size_t) @nogc nothrow;
    void* mythread_nanosleep_create(mythread_t*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_node_attr_append_with_convert_encoding(myhtml_token_t*, myhtml_token_node_t*, const(char)*, size_t, const(char)*, size_t, size_t, myencoding_t) @nogc nothrow;
    void mythread_nanosleep_clean(void*) @nogc nothrow;
    void mythread_nanosleep_destroy(void*) @nogc nothrow;
    void myhtml_token_node_text_append(myhtml_token_t*, myhtml_token_node_t*, const(char)*, size_t) @nogc nothrow;
    mystatus_t mythread_nanosleep_sleep(void*) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_tag_id_in_scope(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, myhtml_tag_id_t, mystatus_t*) @nogc nothrow;
    void myhtml_token_node_attr_copy(myhtml_token_t*, myhtml_token_node_t*, myhtml_token_node_t*, size_t) @nogc nothrow;
    void myhtml_token_node_attr_copy_with_check(myhtml_token_t*, myhtml_token_node_t*, myhtml_token_node_t*, size_t) @nogc nothrow;
    myhtml_collection_t* myhtml_get_nodes_by_name_in_scope(myhtml_tree_t*, myhtml_collection_t*, myhtml_tree_node_t*, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    myhtml_token_node_t* myhtml_token_node_clone(myhtml_token_t*, myhtml_token_node_t*, size_t, size_t) @nogc nothrow;
    alias myhtml_tree_special_token_t = myhtml_tree_special_token;
    struct myhtml_tree_special_token
    {
        myhtml_token_node_t* token;
        myhtml_namespace_t ns;
    }
    bool myhtml_token_attr_copy(myhtml_token_t*, myhtml_token_attr_t*, myhtml_token_node_t*, size_t) @nogc nothrow;
    void mythread_callback_quit(mythread_t*, mythread_entry_t*, void*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_first(myhtml_tree_t*) @nogc nothrow;
    myhtml_token_attr_t* myhtml_token_attr_by_name(myhtml_token_node_t*, const(char)*, size_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_next(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_prev(myhtml_tree_node_t*) @nogc nothrow;
    bool myhtml_token_attr_compare(myhtml_token_node_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_parent(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_token_node_t* myhtml_token_merged_two_token_string(myhtml_tree_t*, myhtml_token_node_t*, myhtml_token_node_t*, bool) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_child(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_token_set_replacement_character_for_null_token(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    struct myhtml_tree_special_token_list
    {
        myhtml_tree_special_token_t* list;
        size_t length;
        size_t size;
    }
    alias myhtml_tree_special_token_list_t = myhtml_tree_special_token_list;
    myhtml_tree_node_t* myhtml_node_last_child(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_insert_to_appropriate_place(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_append_child(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_insert_after(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_insert_before(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_node_create(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace) @nogc nothrow;
    struct myhtml_tree_temp_stream
    {
        myhtml_tree_temp_tag_name** data;
        size_t length;
        size_t size;
        myencoding_result_t res;
        myhtml_tree_temp_tag_name* current;
    }
    myhtml_tree_node_t* myhtml_node_remove(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_node_delete(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_node_delete_recursive(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_node_free(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_token_node_t* myhtml_node_token(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_namespace_t myhtml_node_namespace(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_node_namespace_set(myhtml_tree_node_t*, myhtml_namespace_t) @nogc nothrow;
    struct myhtml_tree
    {
        myhtml_t* myhtml_;
        mchar_async_t* mchar;
        myhtml_token_t* token;
        mcobject_async_t* tree_obj;
        mcsync_t* sync;
        mythread_queue_list_entry_t* queue_entry;
        mythread_queue_t* queue;
        myhtml_tag_t* tags;
        void* modest_;
        void* context;
        size_t mcasync_rules_token_id;
        size_t mcasync_rules_attr_id;
        size_t mcasync_tree_id;
        size_t mchar_node_id;
        myhtml_token_attr_t* attr_current;
        myhtml_tag_id_t tmp_tag_id;
        myhtml_token_node_t* current_token_node;
        mythread_queue_node_t* current_qnode;
        mcobject_t* mcobject_incoming_buf;
        mycore_incoming_buffer_t* incoming_buf;
        mycore_incoming_buffer_t* incoming_buf_first;
        myhtml_tree_node_t* document;
        myhtml_tree_node_t* fragment;
        myhtml_tree_node_t* node_head;
        myhtml_tree_node_t* node_html;
        myhtml_tree_node_t* node_body;
        myhtml_tree_node_t* node_form;
        myhtml_tree_doctype_t doctype;
        myhtml_tree_list_t* active_formatting;
        myhtml_tree_list_t* open_elements;
        myhtml_tree_list_t* other_elements;
        myhtml_tree_token_list_t* token_list;
        myhtml_tree_insertion_list_t* template_insertion;
        myhtml_async_args_t* async_args;
        myhtml_stream_buffer_t* stream_buffer;
        myhtml_token_node_t* token_last_done;
        myhtml_token_node_t* token_namespace;
        myhtml_tokenizer_state state;
        myhtml_tokenizer_state state_of_builder;
        myhtml_insertion_mode insert_mode;
        myhtml_insertion_mode orig_insert_mode;
        myhtml_tree_compat_mode compat_mode;
         myhtml_tree_flags flags;
         myhtml_tree_parse_flags_t parse_flags;
        bool foster_parenting;
        size_t global_offset;
        mystatus_t tokenizer_status;
        myencoding_t encoding;
        myencoding_t encoding_usereq;
        myhtml_tree_temp_tag_name_t temp_tag_name;
        myhtml_callback_token_f callback_before_token;
        myhtml_callback_token_f callback_after_token;
        void* callback_before_token_ctx;
        void* callback_after_token_ctx;
        myhtml_callback_tree_node_f callback_tree_node_insert;
        myhtml_callback_tree_node_f callback_tree_node_remove;
        void* callback_tree_node_insert_ctx;
        void* callback_tree_node_remove_ctx;
    }
    myhtml_tag_id_t myhtml_node_tag_id(myhtml_tree_node_t*) @nogc nothrow;
    const(char)* myhtml_tag_name_by_id(myhtml_tree_t*, myhtml_tag_id_t, size_t*) @nogc nothrow;
    myhtml_tag_id_t myhtml_tag_id_by_name(myhtml_tree_t*, const(char)*, size_t) @nogc nothrow;
    bool myhtml_node_is_close_self(myhtml_tree_node_t*) @nogc nothrow;
    bool myhtml_node_is_void_element(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_node_attribute_first(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_node_attribute_last(myhtml_tree_node_t*) @nogc nothrow;
    const(char)* myhtml_node_text(myhtml_tree_node_t*, size_t*) @nogc nothrow;
    mycore_string_t* myhtml_node_string(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_position_t myhtml_node_raw_position(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_position_t myhtml_node_element_position(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_node_set_data(myhtml_tree_node_t*, void*) @nogc nothrow;
    void* myhtml_node_get_data(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_next(myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_prev(myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_namespace myhtml_attribute_namespace(myhtml_tree_attr_t*) @nogc nothrow;
    void myhtml_attribute_namespace_set(myhtml_tree_attr_t*, myhtml_namespace_t) @nogc nothrow;
    const(char)* myhtml_attribute_key(myhtml_tree_attr_t*, size_t*) @nogc nothrow;
    const(char)* myhtml_attribute_value(myhtml_tree_attr_t*, size_t*) @nogc nothrow;
    mycore_string_t* myhtml_attribute_key_string(myhtml_tree_attr_t*) @nogc nothrow;
    mycore_string_t* myhtml_attribute_value_string(myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_by_key(myhtml_tree_node_t*, const(char)*, size_t) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_add(myhtml_tree_node_t*, const(char)*, size_t, const(char)*, size_t, myencoding_t) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_remove(myhtml_tree_node_t*, myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_tree_attr_t* myhtml_attribute_remove_by_key(myhtml_tree_node_t*, const(char)*, size_t) @nogc nothrow;
    void myhtml_attribute_delete(myhtml_tree_t*, myhtml_tree_node_t*, myhtml_tree_attr_t*) @nogc nothrow;
    void myhtml_attribute_free(myhtml_tree_t*, myhtml_tree_attr_t*) @nogc nothrow;
    enum myhtml_insertion_mode
    {
        MyHTML_INSERTION_MODE_INITIAL = 0,
        MyHTML_INSERTION_MODE_BEFORE_HTML = 1,
        MyHTML_INSERTION_MODE_BEFORE_HEAD = 2,
        MyHTML_INSERTION_MODE_IN_HEAD = 3,
        MyHTML_INSERTION_MODE_IN_HEAD_NOSCRIPT = 4,
        MyHTML_INSERTION_MODE_AFTER_HEAD = 5,
        MyHTML_INSERTION_MODE_IN_BODY = 6,
        MyHTML_INSERTION_MODE_TEXT = 7,
        MyHTML_INSERTION_MODE_IN_TABLE = 8,
        MyHTML_INSERTION_MODE_IN_TABLE_TEXT = 9,
        MyHTML_INSERTION_MODE_IN_CAPTION = 10,
        MyHTML_INSERTION_MODE_IN_COLUMN_GROUP = 11,
        MyHTML_INSERTION_MODE_IN_TABLE_BODY = 12,
        MyHTML_INSERTION_MODE_IN_ROW = 13,
        MyHTML_INSERTION_MODE_IN_CELL = 14,
        MyHTML_INSERTION_MODE_IN_SELECT = 15,
        MyHTML_INSERTION_MODE_IN_SELECT_IN_TABLE = 16,
        MyHTML_INSERTION_MODE_IN_TEMPLATE = 17,
        MyHTML_INSERTION_MODE_AFTER_BODY = 18,
        MyHTML_INSERTION_MODE_IN_FRAMESET = 19,
        MyHTML_INSERTION_MODE_AFTER_FRAMESET = 20,
        MyHTML_INSERTION_MODE_AFTER_AFTER_BODY = 21,
        MyHTML_INSERTION_MODE_AFTER_AFTER_FRAMESET = 22,
        MyHTML_INSERTION_MODE_LAST_ENTRY = 23,
    }
    enum MyHTML_INSERTION_MODE_INITIAL = myhtml_insertion_mode.MyHTML_INSERTION_MODE_INITIAL;
    enum MyHTML_INSERTION_MODE_BEFORE_HTML = myhtml_insertion_mode.MyHTML_INSERTION_MODE_BEFORE_HTML;
    enum MyHTML_INSERTION_MODE_BEFORE_HEAD = myhtml_insertion_mode.MyHTML_INSERTION_MODE_BEFORE_HEAD;
    enum MyHTML_INSERTION_MODE_IN_HEAD = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_HEAD;
    enum MyHTML_INSERTION_MODE_IN_HEAD_NOSCRIPT = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_HEAD_NOSCRIPT;
    enum MyHTML_INSERTION_MODE_AFTER_HEAD = myhtml_insertion_mode.MyHTML_INSERTION_MODE_AFTER_HEAD;
    enum MyHTML_INSERTION_MODE_IN_BODY = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_BODY;
    enum MyHTML_INSERTION_MODE_TEXT = myhtml_insertion_mode.MyHTML_INSERTION_MODE_TEXT;
    enum MyHTML_INSERTION_MODE_IN_TABLE = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_TABLE;
    enum MyHTML_INSERTION_MODE_IN_TABLE_TEXT = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_TABLE_TEXT;
    enum MyHTML_INSERTION_MODE_IN_CAPTION = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_CAPTION;
    enum MyHTML_INSERTION_MODE_IN_COLUMN_GROUP = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_COLUMN_GROUP;
    enum MyHTML_INSERTION_MODE_IN_TABLE_BODY = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_TABLE_BODY;
    enum MyHTML_INSERTION_MODE_IN_ROW = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_ROW;
    enum MyHTML_INSERTION_MODE_IN_CELL = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_CELL;
    enum MyHTML_INSERTION_MODE_IN_SELECT = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_SELECT;
    enum MyHTML_INSERTION_MODE_IN_SELECT_IN_TABLE = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_SELECT_IN_TABLE;
    enum MyHTML_INSERTION_MODE_IN_TEMPLATE = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_TEMPLATE;
    enum MyHTML_INSERTION_MODE_AFTER_BODY = myhtml_insertion_mode.MyHTML_INSERTION_MODE_AFTER_BODY;
    enum MyHTML_INSERTION_MODE_IN_FRAMESET = myhtml_insertion_mode.MyHTML_INSERTION_MODE_IN_FRAMESET;
    enum MyHTML_INSERTION_MODE_AFTER_FRAMESET = myhtml_insertion_mode.MyHTML_INSERTION_MODE_AFTER_FRAMESET;
    enum MyHTML_INSERTION_MODE_AFTER_AFTER_BODY = myhtml_insertion_mode.MyHTML_INSERTION_MODE_AFTER_AFTER_BODY;
    enum MyHTML_INSERTION_MODE_AFTER_AFTER_FRAMESET = myhtml_insertion_mode.MyHTML_INSERTION_MODE_AFTER_AFTER_FRAMESET;
    enum MyHTML_INSERTION_MODE_LAST_ENTRY = myhtml_insertion_mode.MyHTML_INSERTION_MODE_LAST_ENTRY;
    myhtml_position_t myhtml_attribute_key_raw_position(myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_position_t myhtml_attribute_value_raw_position(myhtml_tree_attr_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_collection_create(size_t, mystatus_t*) @nogc nothrow;
    void myhtml_collection_clean(myhtml_collection_t*) @nogc nothrow;
    myhtml_collection_t* myhtml_collection_destroy(myhtml_collection_t*) @nogc nothrow;
    mystatus_t myhtml_collection_check_size(myhtml_collection_t*, size_t, size_t) @nogc nothrow;
    mycore_string_t* myhtml_node_text_set(myhtml_tree_node_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;
    mycore_string_t* myhtml_node_text_set_with_charef(myhtml_tree_node_t*, const(char)*, size_t, myencoding_t) @nogc nothrow;
    bool myhtml_utils_strcmp(const(char)*, const(char)*, size_t) @nogc nothrow;
    bool myhtml_is_html_node(myhtml_tree_node_t*, myhtml_tag_id_t) @nogc nothrow;
    mystatus_t myhtml_queue_add(myhtml_tree_t*, size_t, myhtml_token_node_t*) @nogc nothrow;
    pragma(mangle, "myhtml_version") myhtml_version_t myhtml_version_() @nogc nothrow;
    enum myhtml_status
    {
        MyHTML_STATUS_OK = 0,
        MyHTML_STATUS_ERROR = 1,
        MyHTML_STATUS_ERROR_MEMORY_ALLOCATION = 2,
        MyHTML_STATUS_RULES_ERROR_MEMORY_ALLOCATION = 36964,
        MyHTML_STATUS_TOKENIZER_ERROR_MEMORY_ALLOCATION = 37164,
        MyHTML_STATUS_TOKENIZER_ERROR_FRAGMENT_INIT = 37165,
        MyHTML_STATUS_TAGS_ERROR_MEMORY_ALLOCATION = 37264,
        MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE = 37265,
        MyHTML_STATUS_TAGS_ERROR_MCOBJECT_MALLOC = 37266,
        MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE_NODE = 37267,
        MyHTML_STATUS_TAGS_ERROR_CACHE_MEMORY_ALLOCATION = 37268,
        MyHTML_STATUS_TAGS_ERROR_INDEX_MEMORY_ALLOCATION = 37269,
        MyHTML_STATUS_TREE_ERROR_MEMORY_ALLOCATION = 37364,
        MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE = 37365,
        MyHTML_STATUS_TREE_ERROR_MCOBJECT_INIT = 37366,
        MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE_NODE = 37367,
        MyHTML_STATUS_TREE_ERROR_INCOMING_BUFFER_CREATE = 37368,
        MyHTML_STATUS_ATTR_ERROR_ALLOCATION = 37464,
        MyHTML_STATUS_ATTR_ERROR_CREATE = 37465,
        MyHTML_STATUS_STREAM_BUFFER_ERROR_CREATE = 37632,
        MyHTML_STATUS_STREAM_BUFFER_ERROR_INIT = 37633,
        MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_CREATE = 37634,
        MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_INIT = 37635,
        MyHTML_STATUS_STREAM_BUFFER_ERROR_ADD_ENTRY = 37636,
    }
    enum MyHTML_STATUS_OK = myhtml_status.MyHTML_STATUS_OK;
    enum MyHTML_STATUS_ERROR = myhtml_status.MyHTML_STATUS_ERROR;
    enum MyHTML_STATUS_ERROR_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_ERROR_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_RULES_ERROR_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_RULES_ERROR_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TOKENIZER_ERROR_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_TOKENIZER_ERROR_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TOKENIZER_ERROR_FRAGMENT_INIT = myhtml_status.MyHTML_STATUS_TOKENIZER_ERROR_FRAGMENT_INIT;
    enum MyHTML_STATUS_TAGS_ERROR_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_TAGS_ERROR_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE = myhtml_status.MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE;
    enum MyHTML_STATUS_TAGS_ERROR_MCOBJECT_MALLOC = myhtml_status.MyHTML_STATUS_TAGS_ERROR_MCOBJECT_MALLOC;
    enum MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE_NODE = myhtml_status.MyHTML_STATUS_TAGS_ERROR_MCOBJECT_CREATE_NODE;
    enum MyHTML_STATUS_TAGS_ERROR_CACHE_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_TAGS_ERROR_CACHE_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TAGS_ERROR_INDEX_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_TAGS_ERROR_INDEX_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TREE_ERROR_MEMORY_ALLOCATION = myhtml_status.MyHTML_STATUS_TREE_ERROR_MEMORY_ALLOCATION;
    enum MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE = myhtml_status.MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE;
    enum MyHTML_STATUS_TREE_ERROR_MCOBJECT_INIT = myhtml_status.MyHTML_STATUS_TREE_ERROR_MCOBJECT_INIT;
    enum MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE_NODE = myhtml_status.MyHTML_STATUS_TREE_ERROR_MCOBJECT_CREATE_NODE;
    enum MyHTML_STATUS_TREE_ERROR_INCOMING_BUFFER_CREATE = myhtml_status.MyHTML_STATUS_TREE_ERROR_INCOMING_BUFFER_CREATE;
    enum MyHTML_STATUS_ATTR_ERROR_ALLOCATION = myhtml_status.MyHTML_STATUS_ATTR_ERROR_ALLOCATION;
    enum MyHTML_STATUS_ATTR_ERROR_CREATE = myhtml_status.MyHTML_STATUS_ATTR_ERROR_CREATE;
    enum MyHTML_STATUS_STREAM_BUFFER_ERROR_CREATE = myhtml_status.MyHTML_STATUS_STREAM_BUFFER_ERROR_CREATE;
    enum MyHTML_STATUS_STREAM_BUFFER_ERROR_INIT = myhtml_status.MyHTML_STATUS_STREAM_BUFFER_ERROR_INIT;
    enum MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_CREATE = myhtml_status.MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_CREATE;
    enum MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_INIT = myhtml_status.MyHTML_STATUS_STREAM_BUFFER_ENTRY_ERROR_INIT;
    enum MyHTML_STATUS_STREAM_BUFFER_ERROR_ADD_ENTRY = myhtml_status.MyHTML_STATUS_STREAM_BUFFER_ERROR_ADD_ENTRY;
    alias myhtml_status_t = myhtml_status;
    myhtml_tree_t* myhtml_tree_create() @nogc nothrow;
    mystatus_t myhtml_tree_init(myhtml_tree_t*, myhtml_t*) @nogc nothrow;
    void myhtml_tree_clean(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_clean_all(myhtml_tree_t*) @nogc nothrow;
    enum myhtml_namespace
    {
        MyHTML_NAMESPACE_UNDEF = 0,
        MyHTML_NAMESPACE_HTML = 1,
        MyHTML_NAMESPACE_MATHML = 2,
        MyHTML_NAMESPACE_SVG = 3,
        MyHTML_NAMESPACE_XLINK = 4,
        MyHTML_NAMESPACE_XML = 5,
        MyHTML_NAMESPACE_XMLNS = 6,
        MyHTML_NAMESPACE_ANY = 7,
        MyHTML_NAMESPACE_LAST_ENTRY = 7,
    }
    enum MyHTML_NAMESPACE_UNDEF = myhtml_namespace.MyHTML_NAMESPACE_UNDEF;
    enum MyHTML_NAMESPACE_HTML = myhtml_namespace.MyHTML_NAMESPACE_HTML;
    enum MyHTML_NAMESPACE_MATHML = myhtml_namespace.MyHTML_NAMESPACE_MATHML;
    enum MyHTML_NAMESPACE_SVG = myhtml_namespace.MyHTML_NAMESPACE_SVG;
    enum MyHTML_NAMESPACE_XLINK = myhtml_namespace.MyHTML_NAMESPACE_XLINK;
    enum MyHTML_NAMESPACE_XML = myhtml_namespace.MyHTML_NAMESPACE_XML;
    enum MyHTML_NAMESPACE_XMLNS = myhtml_namespace.MyHTML_NAMESPACE_XMLNS;
    enum MyHTML_NAMESPACE_ANY = myhtml_namespace.MyHTML_NAMESPACE_ANY;
    enum MyHTML_NAMESPACE_LAST_ENTRY = myhtml_namespace.MyHTML_NAMESPACE_LAST_ENTRY;
    alias myhtml_namespace_t = myhtml_namespace;
    myhtml_tree_t* myhtml_tree_destroy(myhtml_tree_t*) @nogc nothrow;
    pragma(mangle, "myhtml_tree_parse_flags") myhtml_tree_parse_flags_t myhtml_tree_parse_flags_(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_parse_flags_set(myhtml_tree_t*, myhtml_tree_parse_flags_t) @nogc nothrow;
    myhtml_t* myhtml_tree_get_myhtml(myhtml_tree_t*) @nogc nothrow;
    myhtml_tag_t* myhtml_tree_get_tag(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_get_document(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_get_node_html(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_get_node_head(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_get_node_body(myhtml_tree_t*) @nogc nothrow;
    mchar_async_t* myhtml_tree_get_mchar(myhtml_tree_t*) @nogc nothrow;
    size_t myhtml_tree_get_mchar_node_id(myhtml_tree_t*) @nogc nothrow;
    enum myhtml_options
    {
        MyHTML_OPTIONS_DEFAULT = 0,
        MyHTML_OPTIONS_PARSE_MODE_SINGLE = 1,
        MyHTML_OPTIONS_PARSE_MODE_ALL_IN_ONE = 2,
        MyHTML_OPTIONS_PARSE_MODE_SEPARATELY = 4,
    }
    enum MyHTML_OPTIONS_DEFAULT = myhtml_options.MyHTML_OPTIONS_DEFAULT;
    enum MyHTML_OPTIONS_PARSE_MODE_SINGLE = myhtml_options.MyHTML_OPTIONS_PARSE_MODE_SINGLE;
    enum MyHTML_OPTIONS_PARSE_MODE_ALL_IN_ONE = myhtml_options.MyHTML_OPTIONS_PARSE_MODE_ALL_IN_ONE;
    enum MyHTML_OPTIONS_PARSE_MODE_SEPARATELY = myhtml_options.MyHTML_OPTIONS_PARSE_MODE_SEPARATELY;
    myhtml_tree_list_t* myhtml_tree_list_init() @nogc nothrow;
    void myhtml_tree_list_clean(myhtml_tree_list_t*) @nogc nothrow;
    myhtml_tree_list_t* myhtml_tree_list_destroy(myhtml_tree_list_t*, bool) @nogc nothrow;
    void myhtml_tree_list_append(myhtml_tree_list_t*, myhtml_tree_node_t*) @nogc nothrow;
    alias myhtml_position_t = myhtml_position;
    struct myhtml_position
    {
        size_t begin;
        size_t length;
    }
    void myhtml_tree_list_append_after_index(myhtml_tree_list_t*, myhtml_tree_node_t*, size_t) @nogc nothrow;
    void myhtml_tree_list_insert_by_index(myhtml_tree_list_t*, myhtml_tree_node_t*, size_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_list_current_node(myhtml_tree_list_t*) @nogc nothrow;
    myhtml_tree_token_list_t* myhtml_tree_token_list_init() @nogc nothrow;
    void myhtml_tree_token_list_clean(myhtml_tree_token_list_t*) @nogc nothrow;
    struct myhtml_version
    {
        int major;
        int minor;
        int patch;
    }
    alias myhtml_version_t = myhtml_version;
    myhtml_tree_token_list_t* myhtml_tree_token_list_destroy(myhtml_tree_token_list_t*, bool) @nogc nothrow;
    void myhtml_tree_token_list_append(myhtml_tree_token_list_t*, myhtml_token_node_t*) @nogc nothrow;
    void myhtml_tree_token_list_append_after_index(myhtml_tree_token_list_t*, myhtml_token_node_t*, size_t) @nogc nothrow;
    myhtml_token_node_t* myhtml_tree_token_list_current_node(myhtml_tree_token_list_t*) @nogc nothrow;
    alias myhtml_tree_attr_t = myhtml_token_attr;
    alias myhtml_collection_t = myhtml_collection;
    myhtml_tree_list_t* myhtml_tree_active_formatting_init(myhtml_tree_t*) @nogc nothrow;
    alias myhtml_t = myhtml;
    void myhtml_tree_active_formatting_clean(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_list_t* myhtml_tree_active_formatting_destroy(myhtml_tree_t*) @nogc nothrow;
    alias myhtml_tokenizer_state_f = c_ulong function(myhtml_tree_t*, myhtml_token_node_t*, const(char)*, size_t, size_t);
    bool myhtml_tree_active_formatting_is_marker(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_active_formatting_between_last_marker(myhtml_tree_t*, myhtml_tag_id_t, size_t*) @nogc nothrow;
    alias myhtml_insertion_f = bool function(myhtml_tree_t*, myhtml_token_node_t*);
    void myhtml_tree_active_formatting_append(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_active_formatting_append_with_check(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_active_formatting_pop(myhtml_tree_t*) @nogc nothrow;
    alias myhtml_data_process_state_f = c_ulong function(myhtml_data_process_entry_t*, mycore_string_t*, const(char)*, size_t, size_t);
    void myhtml_tree_active_formatting_remove(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_active_formatting_remove_by_index(myhtml_tree_t*, size_t) @nogc nothrow;
    alias myhtml_callback_token_f = void* function(myhtml_tree_t*, myhtml_token_node_t*, void*);
    void myhtml_tree_active_formatting_reconstruction(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_active_formatting_up_to_last_marker(myhtml_tree_t*) @nogc nothrow;
    alias myhtml_callback_tree_node_f = void function(myhtml_tree_t*, myhtml_tree_node_t*, void*);
    bool myhtml_tree_active_formatting_find(myhtml_tree_t*, myhtml_tree_node_t*, size_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_active_formatting_current_node(myhtml_tree_t*) @nogc nothrow;
    alias myhtml_attribute_value_find_f = bool function(mycore_string_t*, const(char)*, size_t);
    myhtml_tree_list_t* myhtml_tree_open_elements_init(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_open_elements_clean(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_list_t* myhtml_tree_open_elements_destroy(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_current_node(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_adjusted_current_node(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_open_elements_append(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_open_elements_append_after_index(myhtml_tree_t*, myhtml_tree_node_t*, size_t) @nogc nothrow;
    void myhtml_tree_open_elements_pop(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_open_elements_pop_until(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t, bool) @nogc nothrow;
    void myhtml_tree_open_elements_pop_until_by_node(myhtml_tree_t*, myhtml_tree_node_t*, bool) @nogc nothrow;
    void myhtml_tree_open_elements_pop_until_by_index(myhtml_tree_t*, size_t, bool) @nogc nothrow;
    void myhtml_tree_open_elements_remove(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    bool myhtml_tree_open_elements_find(myhtml_tree_t*, myhtml_tree_node_t*, size_t*) @nogc nothrow;
    bool myhtml_tree_open_elements_find_reverse(myhtml_tree_t*, myhtml_tree_node_t*, size_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_open_elements_find_by_tag_idx(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t, size_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_open_elements_find_by_tag_idx_reverse(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t, size_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_element_in_scope(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t, myhtml_tag_categories) @nogc nothrow;
    bool myhtml_tree_element_in_scope_by_node(myhtml_tree_node_t*, myhtml_tag_categories) @nogc nothrow;
    void myhtml_tree_generate_implied_end_tags(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t) @nogc nothrow;
    void myhtml_tree_generate_all_implied_end_tags(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_appropriate_place_inserting(myhtml_tree_t*, myhtml_tree_node_t*, myhtml_tree_insertion_mode*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_appropriate_place_inserting_in_tree(myhtml_tree_node_t*, myhtml_tree_insertion_mode*) @nogc nothrow;
    myhtml_tree_insertion_list_t* myhtml_tree_template_insertion_init(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_template_insertion_clean(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_insertion_list_t* myhtml_tree_template_insertion_destroy(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_template_insertion_append(myhtml_tree_t*, myhtml_insertion_mode) @nogc nothrow;
    void myhtml_tree_template_insertion_pop(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_reset_insertion_mode_appropriately(myhtml_tree_t*) @nogc nothrow;
    bool myhtml_tree_adoption_agency_algorithm(myhtml_tree_t*, myhtml_token_node_t*, myhtml_tag_id_t) @nogc nothrow;
    size_t myhtml_tree_template_insertion_length(myhtml_tree_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_create(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_node_delete(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_delete_recursive(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_clean(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_free(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_clone(myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_add_child(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_insert_before(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_insert_after(myhtml_tree_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    void myhtml_tree_node_insert_by_mode(myhtml_tree_node_t*, myhtml_tree_node_t*, myhtml_tree_insertion_mode) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_remove(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_html_element(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_foreign_element(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_by_token(myhtml_tree_t*, myhtml_token_node_t*, myhtml_namespace_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert(myhtml_tree_t*, myhtml_tag_id_t, myhtml_namespace_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_by_node(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_comment(myhtml_tree_t*, myhtml_token_node_t*, myhtml_tree_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_doctype(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_root(myhtml_tree_t*, myhtml_token_node_t*, myhtml_namespace_t) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_insert_text(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_node_find_parent_by_tag_id(myhtml_tree_node_t*, myhtml_tag_id_t) @nogc nothrow;
    void myhtml_tree_wait_for_last_done_token(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    void myhtml_tree_tags_close_p(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    myhtml_tree_node_t* myhtml_tree_generic_raw_text_element_parsing_algorithm(myhtml_tree_t*, myhtml_token_node_t*) @nogc nothrow;
    void myhtml_tree_clear_stack_back_table_context(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_clear_stack_back_table_body_context(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_clear_stack_back_table_row_context(myhtml_tree_t*) @nogc nothrow;
    void myhtml_tree_close_cell(myhtml_tree_t*, myhtml_tree_node_t*, myhtml_token_node_t*) @nogc nothrow;
    bool myhtml_tree_is_mathml_integration_point(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    bool myhtml_tree_is_html_integration_point(myhtml_tree_t*, myhtml_tree_node_t*) @nogc nothrow;
    mystatus_t myhtml_tree_temp_tag_name_init(myhtml_tree_temp_tag_name_t*) @nogc nothrow;
    void myhtml_tree_temp_tag_name_clean(myhtml_tree_temp_tag_name_t*) @nogc nothrow;
    myhtml_tree_temp_tag_name_t* myhtml_tree_temp_tag_name_destroy(myhtml_tree_temp_tag_name_t*, bool) @nogc nothrow;
    mystatus_t myhtml_tree_temp_tag_name_append(myhtml_tree_temp_tag_name_t*, const(char)*, size_t) @nogc nothrow;
    mystatus_t myhtml_tree_temp_tag_name_append_one(myhtml_tree_temp_tag_name_t*, const(char)) @nogc nothrow;
    mystatus_t myhtml_tree_special_list_init(myhtml_tree_special_token_list_t*) @nogc nothrow;
    mystatus_t myhtml_tree_special_list_append(myhtml_tree_special_token_list_t*, myhtml_token_node_t*, myhtml_namespace_t) @nogc nothrow;
    size_t myhtml_tree_special_list_length(myhtml_tree_special_token_list_t*) @nogc nothrow;
    myhtml_tree_special_token_t* myhtml_tree_special_list_get_last(myhtml_tree_special_token_list_t*) @nogc nothrow;
    size_t myhtml_tree_special_list_pop(myhtml_tree_special_token_list_t*) @nogc nothrow;
    mycore_incoming_buffer_t* myhtml_tree_incoming_buffer_first(myhtml_tree_t*) @nogc nothrow;
    const(char)* myhtml_tree_incomming_buffer_make_data(myhtml_tree_t*, size_t, size_t) @nogc nothrow;
}

extern(C)
{
    alias ptrdiff_t = c_long;






    struct max_align_t
    {
        long __max_align_ll;
        real __max_align_ld;
    }
    myhtml_tree_t* myhtml_node_tree(myhtml_tree_node_t*) @nogc nothrow;
    myhtml_namespace_t myhtml_attribute_namespace(myhtml_tree_attr_t*) @nogc nothrow;
    const(char)* myhtml_namespace_name_by_id(myhtml_namespace_t, size_t*) @nogc nothrow;
    bool myhtml_namespace_id_by_name(const(char)*, size_t, myhtml_namespace_t*) @nogc nothrow;
    mystatus_t myhtml_serialization(myhtml_tree_node_t*, mycore_string_raw_t*) @nogc nothrow;
    mystatus_t myhtml_serialization_node(myhtml_tree_node_t*, mycore_string_raw_t*) @nogc nothrow;
    mystatus_t myhtml_serialization_tree_buffer(myhtml_tree_node_t*, mycore_string_raw_t*) @nogc nothrow;
    mystatus_t myhtml_serialization_node_buffer(myhtml_tree_node_t*, mycore_string_raw_t*) @nogc nothrow;
    mystatus_t myhtml_serialization_tree_callback(myhtml_tree_node_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mystatus_t myhtml_serialization_node_callback(myhtml_tree_node_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
}

extern(C)
{
}

extern(C)
{
    enum mycss_values_color_id
    {
        MyCSS_VALUES_COLOR_ID_UNDEF = 0,
        MyCSS_VALUES_COLOR_ID_ALICEBLUE = 1,
        MyCSS_VALUES_COLOR_ID_ANTIQUEWHITE = 2,
        MyCSS_VALUES_COLOR_ID_AQUA = 3,
        MyCSS_VALUES_COLOR_ID_AQUAMARINE = 4,
        MyCSS_VALUES_COLOR_ID_AZURE = 5,
        MyCSS_VALUES_COLOR_ID_BEIGE = 6,
        MyCSS_VALUES_COLOR_ID_BISQUE = 7,
        MyCSS_VALUES_COLOR_ID_BLACK = 8,
        MyCSS_VALUES_COLOR_ID_BLANCHEDALMOND = 9,
        MyCSS_VALUES_COLOR_ID_BLUE = 10,
        MyCSS_VALUES_COLOR_ID_BLUEVIOLET = 11,
        MyCSS_VALUES_COLOR_ID_BROWN = 12,
        MyCSS_VALUES_COLOR_ID_BURLYWOOD = 13,
        MyCSS_VALUES_COLOR_ID_CADETBLUE = 14,
        MyCSS_VALUES_COLOR_ID_CHARTREUSE = 15,
        MyCSS_VALUES_COLOR_ID_CHOCOLATE = 16,
        MyCSS_VALUES_COLOR_ID_CORAL = 17,
        MyCSS_VALUES_COLOR_ID_CORNFLOWERBLUE = 18,
        MyCSS_VALUES_COLOR_ID_CORNSILK = 19,
        MyCSS_VALUES_COLOR_ID_CRIMSON = 20,
        MyCSS_VALUES_COLOR_ID_CURRENTCOLOR = 21,
        MyCSS_VALUES_COLOR_ID_CYAN = 22,
        MyCSS_VALUES_COLOR_ID_DARKBLUE = 23,
        MyCSS_VALUES_COLOR_ID_DARKCYAN = 24,
        MyCSS_VALUES_COLOR_ID_DARKGOLDENROD = 25,
        MyCSS_VALUES_COLOR_ID_DARKGRAY = 26,
        MyCSS_VALUES_COLOR_ID_DARKGREEN = 27,
        MyCSS_VALUES_COLOR_ID_DARKGREY = 28,
        MyCSS_VALUES_COLOR_ID_DARKKHAKI = 29,
        MyCSS_VALUES_COLOR_ID_DARKMAGENTA = 30,
        MyCSS_VALUES_COLOR_ID_DARKOLIVEGREEN = 31,
        MyCSS_VALUES_COLOR_ID_DARKORANGE = 32,
        MyCSS_VALUES_COLOR_ID_DARKORCHID = 33,
        MyCSS_VALUES_COLOR_ID_DARKRED = 34,
        MyCSS_VALUES_COLOR_ID_DARKSALMON = 35,
        MyCSS_VALUES_COLOR_ID_DARKSEAGREEN = 36,
        MyCSS_VALUES_COLOR_ID_DARKSLATEBLUE = 37,
        MyCSS_VALUES_COLOR_ID_DARKSLATEGRAY = 38,
        MyCSS_VALUES_COLOR_ID_DARKSLATEGREY = 39,
        MyCSS_VALUES_COLOR_ID_DARKTURQUOISE = 40,
        MyCSS_VALUES_COLOR_ID_DARKVIOLET = 41,
        MyCSS_VALUES_COLOR_ID_DEEPPINK = 42,
        MyCSS_VALUES_COLOR_ID_DEEPSKYBLUE = 43,
        MyCSS_VALUES_COLOR_ID_DIMGRAY = 44,
        MyCSS_VALUES_COLOR_ID_DIMGREY = 45,
        MyCSS_VALUES_COLOR_ID_DODGERBLUE = 46,
        MyCSS_VALUES_COLOR_ID_FIREBRICK = 47,
        MyCSS_VALUES_COLOR_ID_FLORALWHITE = 48,
        MyCSS_VALUES_COLOR_ID_FORESTGREEN = 49,
        MyCSS_VALUES_COLOR_ID_FUCHSIA = 50,
        MyCSS_VALUES_COLOR_ID_GAINSBORO = 51,
        MyCSS_VALUES_COLOR_ID_GHOSTWHITE = 52,
        MyCSS_VALUES_COLOR_ID_GOLD = 53,
        MyCSS_VALUES_COLOR_ID_GOLDENROD = 54,
        MyCSS_VALUES_COLOR_ID_GRAY = 55,
        MyCSS_VALUES_COLOR_ID_GREEN = 56,
        MyCSS_VALUES_COLOR_ID_GREENYELLOW = 57,
        MyCSS_VALUES_COLOR_ID_GREY = 58,
        MyCSS_VALUES_COLOR_ID_HONEYDEW = 59,
        MyCSS_VALUES_COLOR_ID_HOTPINK = 60,
        MyCSS_VALUES_COLOR_ID_INDIANRED = 61,
        MyCSS_VALUES_COLOR_ID_INDIGO = 62,
        MyCSS_VALUES_COLOR_ID_IVORY = 63,
        MyCSS_VALUES_COLOR_ID_KHAKI = 64,
        MyCSS_VALUES_COLOR_ID_LAVENDER = 65,
        MyCSS_VALUES_COLOR_ID_LAVENDERBLUSH = 66,
        MyCSS_VALUES_COLOR_ID_LAWNGREEN = 67,
        MyCSS_VALUES_COLOR_ID_LEMONCHIFFON = 68,
        MyCSS_VALUES_COLOR_ID_LIGHTBLUE = 69,
        MyCSS_VALUES_COLOR_ID_LIGHTCORAL = 70,
        MyCSS_VALUES_COLOR_ID_LIGHTCYAN = 71,
        MyCSS_VALUES_COLOR_ID_LIGHTGOLDENRODYELLOW = 72,
        MyCSS_VALUES_COLOR_ID_LIGHTGRAY = 73,
        MyCSS_VALUES_COLOR_ID_LIGHTGREEN = 74,
        MyCSS_VALUES_COLOR_ID_LIGHTGREY = 75,
        MyCSS_VALUES_COLOR_ID_LIGHTPINK = 76,
        MyCSS_VALUES_COLOR_ID_LIGHTSALMON = 77,
        MyCSS_VALUES_COLOR_ID_LIGHTSEAGREEN = 78,
        MyCSS_VALUES_COLOR_ID_LIGHTSKYBLUE = 79,
        MyCSS_VALUES_COLOR_ID_LIGHTSLATEGRAY = 80,
        MyCSS_VALUES_COLOR_ID_LIGHTSLATEGREY = 81,
        MyCSS_VALUES_COLOR_ID_LIGHTSTEELBLUE = 82,
        MyCSS_VALUES_COLOR_ID_LIGHTYELLOW = 83,
        MyCSS_VALUES_COLOR_ID_LIME = 84,
        MyCSS_VALUES_COLOR_ID_LIMEGREEN = 85,
        MyCSS_VALUES_COLOR_ID_LINEN = 86,
        MyCSS_VALUES_COLOR_ID_MAGENTA = 87,
        MyCSS_VALUES_COLOR_ID_MAROON = 88,
        MyCSS_VALUES_COLOR_ID_MEDIUMAQUAMARINE = 89,
        MyCSS_VALUES_COLOR_ID_MEDIUMBLUE = 90,
        MyCSS_VALUES_COLOR_ID_MEDIUMORCHID = 91,
        MyCSS_VALUES_COLOR_ID_MEDIUMPURPLE = 92,
        MyCSS_VALUES_COLOR_ID_MEDIUMSEAGREEN = 93,
        MyCSS_VALUES_COLOR_ID_MEDIUMSLATEBLUE = 94,
        MyCSS_VALUES_COLOR_ID_MEDIUMSPRINGGREEN = 95,
        MyCSS_VALUES_COLOR_ID_MEDIUMTURQUOISE = 96,
        MyCSS_VALUES_COLOR_ID_MEDIUMVIOLETRED = 97,
        MyCSS_VALUES_COLOR_ID_MIDNIGHTBLUE = 98,
        MyCSS_VALUES_COLOR_ID_MINTCREAM = 99,
        MyCSS_VALUES_COLOR_ID_MISTYROSE = 100,
        MyCSS_VALUES_COLOR_ID_MOCCASIN = 101,
        MyCSS_VALUES_COLOR_ID_NAVAJOWHITE = 102,
        MyCSS_VALUES_COLOR_ID_NAVY = 103,
        MyCSS_VALUES_COLOR_ID_OLDLACE = 104,
        MyCSS_VALUES_COLOR_ID_OLIVE = 105,
        MyCSS_VALUES_COLOR_ID_OLIVEDRAB = 106,
        MyCSS_VALUES_COLOR_ID_ORANGE = 107,
        MyCSS_VALUES_COLOR_ID_ORANGERED = 108,
        MyCSS_VALUES_COLOR_ID_ORCHID = 109,
        MyCSS_VALUES_COLOR_ID_PALEGOLDENROD = 110,
        MyCSS_VALUES_COLOR_ID_PALEGREEN = 111,
        MyCSS_VALUES_COLOR_ID_PALETURQUOISE = 112,
        MyCSS_VALUES_COLOR_ID_PALEVIOLETRED = 113,
        MyCSS_VALUES_COLOR_ID_PAPAYAWHIP = 114,
        MyCSS_VALUES_COLOR_ID_PEACHPUFF = 115,
        MyCSS_VALUES_COLOR_ID_PERU = 116,
        MyCSS_VALUES_COLOR_ID_PINK = 117,
        MyCSS_VALUES_COLOR_ID_PLUM = 118,
        MyCSS_VALUES_COLOR_ID_POWDERBLUE = 119,
        MyCSS_VALUES_COLOR_ID_PURPLE = 120,
        MyCSS_VALUES_COLOR_ID_REBECCAPURPLE = 121,
        MyCSS_VALUES_COLOR_ID_RED = 122,
        MyCSS_VALUES_COLOR_ID_ROSYBROWN = 123,
        MyCSS_VALUES_COLOR_ID_ROYALBLUE = 124,
        MyCSS_VALUES_COLOR_ID_SADDLEBROWN = 125,
        MyCSS_VALUES_COLOR_ID_SALMON = 126,
        MyCSS_VALUES_COLOR_ID_SANDYBROWN = 127,
        MyCSS_VALUES_COLOR_ID_SEAGREEN = 128,
        MyCSS_VALUES_COLOR_ID_SEASHELL = 129,
        MyCSS_VALUES_COLOR_ID_SIENNA = 130,
        MyCSS_VALUES_COLOR_ID_SILVER = 131,
        MyCSS_VALUES_COLOR_ID_SKYBLUE = 132,
        MyCSS_VALUES_COLOR_ID_SLATEBLUE = 133,
        MyCSS_VALUES_COLOR_ID_SLATEGRAY = 134,
        MyCSS_VALUES_COLOR_ID_SLATEGREY = 135,
        MyCSS_VALUES_COLOR_ID_SNOW = 136,
        MyCSS_VALUES_COLOR_ID_SPRINGGREEN = 137,
        MyCSS_VALUES_COLOR_ID_STEELBLUE = 138,
        MyCSS_VALUES_COLOR_ID_TAN = 139,
        MyCSS_VALUES_COLOR_ID_TEAL = 140,
        MyCSS_VALUES_COLOR_ID_THISTLE = 141,
        MyCSS_VALUES_COLOR_ID_TOMATO = 142,
        MyCSS_VALUES_COLOR_ID_TRANSPARENT = 143,
        MyCSS_VALUES_COLOR_ID_TURQUOISE = 144,
        MyCSS_VALUES_COLOR_ID_VIOLET = 145,
        MyCSS_VALUES_COLOR_ID_WHEAT = 146,
        MyCSS_VALUES_COLOR_ID_WHITE = 147,
        MyCSS_VALUES_COLOR_ID_WHITESMOKE = 148,
        MyCSS_VALUES_COLOR_ID_YELLOW = 149,
        MyCSS_VALUES_COLOR_ID_YELLOWGREEN = 150,
        MyCSS_VALUES_COLOR_ID_LAST_ENTRY = 152,
    }
    enum MyCSS_VALUES_COLOR_ID_UNDEF = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_UNDEF;
    enum MyCSS_VALUES_COLOR_ID_ALICEBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ALICEBLUE;
    enum MyCSS_VALUES_COLOR_ID_ANTIQUEWHITE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ANTIQUEWHITE;
    enum MyCSS_VALUES_COLOR_ID_AQUA = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_AQUA;
    enum MyCSS_VALUES_COLOR_ID_AQUAMARINE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_AQUAMARINE;
    enum MyCSS_VALUES_COLOR_ID_AZURE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_AZURE;
    enum MyCSS_VALUES_COLOR_ID_BEIGE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BEIGE;
    enum MyCSS_VALUES_COLOR_ID_BISQUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BISQUE;
    enum MyCSS_VALUES_COLOR_ID_BLACK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BLACK;
    enum MyCSS_VALUES_COLOR_ID_BLANCHEDALMOND = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BLANCHEDALMOND;
    enum MyCSS_VALUES_COLOR_ID_BLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BLUE;
    enum MyCSS_VALUES_COLOR_ID_BLUEVIOLET = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BLUEVIOLET;
    enum MyCSS_VALUES_COLOR_ID_BROWN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BROWN;
    enum MyCSS_VALUES_COLOR_ID_BURLYWOOD = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_BURLYWOOD;
    enum MyCSS_VALUES_COLOR_ID_CADETBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CADETBLUE;
    enum MyCSS_VALUES_COLOR_ID_CHARTREUSE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CHARTREUSE;
    enum MyCSS_VALUES_COLOR_ID_CHOCOLATE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CHOCOLATE;
    enum MyCSS_VALUES_COLOR_ID_CORAL = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CORAL;
    enum MyCSS_VALUES_COLOR_ID_CORNFLOWERBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CORNFLOWERBLUE;
    enum MyCSS_VALUES_COLOR_ID_CORNSILK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CORNSILK;
    enum MyCSS_VALUES_COLOR_ID_CRIMSON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CRIMSON;
    enum MyCSS_VALUES_COLOR_ID_CURRENTCOLOR = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CURRENTCOLOR;
    enum MyCSS_VALUES_COLOR_ID_CYAN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_CYAN;
    enum MyCSS_VALUES_COLOR_ID_DARKBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKBLUE;
    enum MyCSS_VALUES_COLOR_ID_DARKCYAN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKCYAN;
    enum MyCSS_VALUES_COLOR_ID_DARKGOLDENROD = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKGOLDENROD;
    enum MyCSS_VALUES_COLOR_ID_DARKGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKGRAY;
    enum MyCSS_VALUES_COLOR_ID_DARKGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKGREEN;
    enum MyCSS_VALUES_COLOR_ID_DARKGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKGREY;
    enum MyCSS_VALUES_COLOR_ID_DARKKHAKI = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKKHAKI;
    enum MyCSS_VALUES_COLOR_ID_DARKMAGENTA = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKMAGENTA;
    enum MyCSS_VALUES_COLOR_ID_DARKOLIVEGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKOLIVEGREEN;
    enum MyCSS_VALUES_COLOR_ID_DARKORANGE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKORANGE;
    enum MyCSS_VALUES_COLOR_ID_DARKORCHID = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKORCHID;
    enum MyCSS_VALUES_COLOR_ID_DARKRED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKRED;
    enum MyCSS_VALUES_COLOR_ID_DARKSALMON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKSALMON;
    enum MyCSS_VALUES_COLOR_ID_DARKSEAGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKSEAGREEN;
    enum MyCSS_VALUES_COLOR_ID_DARKSLATEBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKSLATEBLUE;
    enum MyCSS_VALUES_COLOR_ID_DARKSLATEGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKSLATEGRAY;
    enum MyCSS_VALUES_COLOR_ID_DARKSLATEGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKSLATEGREY;
    enum MyCSS_VALUES_COLOR_ID_DARKTURQUOISE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKTURQUOISE;
    enum MyCSS_VALUES_COLOR_ID_DARKVIOLET = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DARKVIOLET;
    enum MyCSS_VALUES_COLOR_ID_DEEPPINK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DEEPPINK;
    enum MyCSS_VALUES_COLOR_ID_DEEPSKYBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DEEPSKYBLUE;
    enum MyCSS_VALUES_COLOR_ID_DIMGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DIMGRAY;
    enum MyCSS_VALUES_COLOR_ID_DIMGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DIMGREY;
    enum MyCSS_VALUES_COLOR_ID_DODGERBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_DODGERBLUE;
    enum MyCSS_VALUES_COLOR_ID_FIREBRICK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_FIREBRICK;
    enum MyCSS_VALUES_COLOR_ID_FLORALWHITE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_FLORALWHITE;
    enum MyCSS_VALUES_COLOR_ID_FORESTGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_FORESTGREEN;
    enum MyCSS_VALUES_COLOR_ID_FUCHSIA = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_FUCHSIA;
    enum MyCSS_VALUES_COLOR_ID_GAINSBORO = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GAINSBORO;
    enum MyCSS_VALUES_COLOR_ID_GHOSTWHITE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GHOSTWHITE;
    enum MyCSS_VALUES_COLOR_ID_GOLD = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GOLD;
    enum MyCSS_VALUES_COLOR_ID_GOLDENROD = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GOLDENROD;
    enum MyCSS_VALUES_COLOR_ID_GRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GRAY;
    enum MyCSS_VALUES_COLOR_ID_GREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GREEN;
    enum MyCSS_VALUES_COLOR_ID_GREENYELLOW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GREENYELLOW;
    enum MyCSS_VALUES_COLOR_ID_GREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_GREY;
    enum MyCSS_VALUES_COLOR_ID_HONEYDEW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_HONEYDEW;
    enum MyCSS_VALUES_COLOR_ID_HOTPINK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_HOTPINK;
    enum MyCSS_VALUES_COLOR_ID_INDIANRED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_INDIANRED;
    enum MyCSS_VALUES_COLOR_ID_INDIGO = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_INDIGO;
    enum MyCSS_VALUES_COLOR_ID_IVORY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_IVORY;
    enum MyCSS_VALUES_COLOR_ID_KHAKI = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_KHAKI;
    enum MyCSS_VALUES_COLOR_ID_LAVENDER = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LAVENDER;
    enum MyCSS_VALUES_COLOR_ID_LAVENDERBLUSH = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LAVENDERBLUSH;
    enum MyCSS_VALUES_COLOR_ID_LAWNGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LAWNGREEN;
    enum MyCSS_VALUES_COLOR_ID_LEMONCHIFFON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LEMONCHIFFON;
    enum MyCSS_VALUES_COLOR_ID_LIGHTBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTBLUE;
    enum MyCSS_VALUES_COLOR_ID_LIGHTCORAL = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTCORAL;
    enum MyCSS_VALUES_COLOR_ID_LIGHTCYAN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTCYAN;
    enum MyCSS_VALUES_COLOR_ID_LIGHTGOLDENRODYELLOW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTGOLDENRODYELLOW;
    enum MyCSS_VALUES_COLOR_ID_LIGHTGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTGRAY;
    enum MyCSS_VALUES_COLOR_ID_LIGHTGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTGREEN;
    enum MyCSS_VALUES_COLOR_ID_LIGHTGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTGREY;
    enum MyCSS_VALUES_COLOR_ID_LIGHTPINK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTPINK;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSALMON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSALMON;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSEAGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSEAGREEN;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSKYBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSKYBLUE;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSLATEGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSLATEGRAY;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSLATEGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSLATEGREY;
    enum MyCSS_VALUES_COLOR_ID_LIGHTSTEELBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTSTEELBLUE;
    enum MyCSS_VALUES_COLOR_ID_LIGHTYELLOW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIGHTYELLOW;
    enum MyCSS_VALUES_COLOR_ID_LIME = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIME;
    enum MyCSS_VALUES_COLOR_ID_LIMEGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LIMEGREEN;
    enum MyCSS_VALUES_COLOR_ID_LINEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LINEN;
    enum MyCSS_VALUES_COLOR_ID_MAGENTA = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MAGENTA;
    enum MyCSS_VALUES_COLOR_ID_MAROON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MAROON;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMAQUAMARINE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMAQUAMARINE;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMBLUE;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMORCHID = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMORCHID;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMPURPLE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMPURPLE;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMSEAGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMSEAGREEN;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMSLATEBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMSLATEBLUE;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMSPRINGGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMSPRINGGREEN;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMTURQUOISE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMTURQUOISE;
    enum MyCSS_VALUES_COLOR_ID_MEDIUMVIOLETRED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MEDIUMVIOLETRED;
    enum MyCSS_VALUES_COLOR_ID_MIDNIGHTBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MIDNIGHTBLUE;
    enum MyCSS_VALUES_COLOR_ID_MINTCREAM = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MINTCREAM;
    enum MyCSS_VALUES_COLOR_ID_MISTYROSE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MISTYROSE;
    enum MyCSS_VALUES_COLOR_ID_MOCCASIN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_MOCCASIN;
    enum MyCSS_VALUES_COLOR_ID_NAVAJOWHITE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_NAVAJOWHITE;
    enum MyCSS_VALUES_COLOR_ID_NAVY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_NAVY;
    enum MyCSS_VALUES_COLOR_ID_OLDLACE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_OLDLACE;
    enum MyCSS_VALUES_COLOR_ID_OLIVE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_OLIVE;
    enum MyCSS_VALUES_COLOR_ID_OLIVEDRAB = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_OLIVEDRAB;
    enum MyCSS_VALUES_COLOR_ID_ORANGE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ORANGE;
    enum MyCSS_VALUES_COLOR_ID_ORANGERED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ORANGERED;
    enum MyCSS_VALUES_COLOR_ID_ORCHID = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ORCHID;
    enum MyCSS_VALUES_COLOR_ID_PALEGOLDENROD = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PALEGOLDENROD;
    enum MyCSS_VALUES_COLOR_ID_PALEGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PALEGREEN;
    enum MyCSS_VALUES_COLOR_ID_PALETURQUOISE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PALETURQUOISE;
    enum MyCSS_VALUES_COLOR_ID_PALEVIOLETRED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PALEVIOLETRED;
    enum MyCSS_VALUES_COLOR_ID_PAPAYAWHIP = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PAPAYAWHIP;
    enum MyCSS_VALUES_COLOR_ID_PEACHPUFF = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PEACHPUFF;
    enum MyCSS_VALUES_COLOR_ID_PERU = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PERU;
    enum MyCSS_VALUES_COLOR_ID_PINK = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PINK;
    enum MyCSS_VALUES_COLOR_ID_PLUM = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PLUM;
    enum MyCSS_VALUES_COLOR_ID_POWDERBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_POWDERBLUE;
    enum MyCSS_VALUES_COLOR_ID_PURPLE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_PURPLE;
    enum MyCSS_VALUES_COLOR_ID_REBECCAPURPLE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_REBECCAPURPLE;
    enum MyCSS_VALUES_COLOR_ID_RED = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_RED;
    enum MyCSS_VALUES_COLOR_ID_ROSYBROWN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ROSYBROWN;
    enum MyCSS_VALUES_COLOR_ID_ROYALBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_ROYALBLUE;
    enum MyCSS_VALUES_COLOR_ID_SADDLEBROWN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SADDLEBROWN;
    enum MyCSS_VALUES_COLOR_ID_SALMON = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SALMON;
    enum MyCSS_VALUES_COLOR_ID_SANDYBROWN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SANDYBROWN;
    enum MyCSS_VALUES_COLOR_ID_SEAGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SEAGREEN;
    enum MyCSS_VALUES_COLOR_ID_SEASHELL = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SEASHELL;
    enum MyCSS_VALUES_COLOR_ID_SIENNA = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SIENNA;
    enum MyCSS_VALUES_COLOR_ID_SILVER = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SILVER;
    enum MyCSS_VALUES_COLOR_ID_SKYBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SKYBLUE;
    enum MyCSS_VALUES_COLOR_ID_SLATEBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SLATEBLUE;
    enum MyCSS_VALUES_COLOR_ID_SLATEGRAY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SLATEGRAY;
    enum MyCSS_VALUES_COLOR_ID_SLATEGREY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SLATEGREY;
    enum MyCSS_VALUES_COLOR_ID_SNOW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SNOW;
    enum MyCSS_VALUES_COLOR_ID_SPRINGGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_SPRINGGREEN;
    enum MyCSS_VALUES_COLOR_ID_STEELBLUE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_STEELBLUE;
    enum MyCSS_VALUES_COLOR_ID_TAN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_TAN;
    enum MyCSS_VALUES_COLOR_ID_TEAL = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_TEAL;
    enum MyCSS_VALUES_COLOR_ID_THISTLE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_THISTLE;
    enum MyCSS_VALUES_COLOR_ID_TOMATO = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_TOMATO;
    enum MyCSS_VALUES_COLOR_ID_TRANSPARENT = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_TRANSPARENT;
    enum MyCSS_VALUES_COLOR_ID_TURQUOISE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_TURQUOISE;
    enum MyCSS_VALUES_COLOR_ID_VIOLET = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_VIOLET;
    enum MyCSS_VALUES_COLOR_ID_WHEAT = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_WHEAT;
    enum MyCSS_VALUES_COLOR_ID_WHITE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_WHITE;
    enum MyCSS_VALUES_COLOR_ID_WHITESMOKE = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_WHITESMOKE;
    enum MyCSS_VALUES_COLOR_ID_YELLOW = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_YELLOW;
    enum MyCSS_VALUES_COLOR_ID_YELLOWGREEN = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_YELLOWGREEN;
    enum MyCSS_VALUES_COLOR_ID_LAST_ENTRY = mycss_values_color_id.MyCSS_VALUES_COLOR_ID_LAST_ENTRY;
    alias mycss_values_color_id_t = mycss_values_color_id;


    alias mycss_property_type_t = mycss_property_type;
    enum mycss_property_type
    {
        MyCSS_PROPERTY_TYPE_UNDEF = 0,
        MyCSS_PROPERTY_TYPE_ALIGN_CONTENT = 1,
        MyCSS_PROPERTY_TYPE_ALIGN_ITEMS = 2,
        MyCSS_PROPERTY_TYPE_ALIGN_SELF = 3,
        MyCSS_PROPERTY_TYPE_ANIMATION = 4,
        MyCSS_PROPERTY_TYPE_ANIMATION_DELAY = 5,
        MyCSS_PROPERTY_TYPE_ANIMATION_DIRECTION = 6,
        MyCSS_PROPERTY_TYPE_ANIMATION_DURATION = 7,
        MyCSS_PROPERTY_TYPE_ANIMATION_FILL_MODE = 8,
        MyCSS_PROPERTY_TYPE_ANIMATION_ITERATION_COUNT = 9,
        MyCSS_PROPERTY_TYPE_ANIMATION_NAME = 10,
        MyCSS_PROPERTY_TYPE_ANIMATION_PLAY_STATE = 11,
        MyCSS_PROPERTY_TYPE_ANIMATION_TIMING_FUNCTION = 12,
        MyCSS_PROPERTY_TYPE_APPEARANCE = 13,
        MyCSS_PROPERTY_TYPE_BACKFACE_VISIBILITY = 14,
        MyCSS_PROPERTY_TYPE_BACKGROUND = 15,
        MyCSS_PROPERTY_TYPE_BACKGROUND_ATTACHMENT = 16,
        MyCSS_PROPERTY_TYPE_BACKGROUND_CLIP = 17,
        MyCSS_PROPERTY_TYPE_BACKGROUND_COLOR = 18,
        MyCSS_PROPERTY_TYPE_BACKGROUND_IMAGE = 19,
        MyCSS_PROPERTY_TYPE_BACKGROUND_ORIGIN = 20,
        MyCSS_PROPERTY_TYPE_BACKGROUND_POSITION = 21,
        MyCSS_PROPERTY_TYPE_BACKGROUND_REPEAT = 22,
        MyCSS_PROPERTY_TYPE_BACKGROUND_SIZE = 23,
        MyCSS_PROPERTY_TYPE_BOOKMARK_LABEL = 24,
        MyCSS_PROPERTY_TYPE_BOOKMARK_LEVEL = 25,
        MyCSS_PROPERTY_TYPE_BOOKMARK_STATE = 26,
        MyCSS_PROPERTY_TYPE_BORDER = 27,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END = 28,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_COLOR = 29,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_STYLE = 30,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_WIDTH = 31,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START = 32,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_COLOR = 33,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_STYLE = 34,
        MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_WIDTH = 35,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM = 36,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_COLOR = 37,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_LEFT_RADIUS = 38,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_RIGHT_RADIUS = 39,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_STYLE = 40,
        MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_WIDTH = 41,
        MyCSS_PROPERTY_TYPE_BORDER_COLLAPSE = 42,
        MyCSS_PROPERTY_TYPE_BORDER_COLOR = 43,
        MyCSS_PROPERTY_TYPE_BORDER_IMAGE = 44,
        MyCSS_PROPERTY_TYPE_BORDER_IMAGE_OUTSET = 45,
        MyCSS_PROPERTY_TYPE_BORDER_IMAGE_REPEAT = 46,
        MyCSS_PROPERTY_TYPE_BORDER_IMAGE_SLICE = 47,
        MyCSS_PROPERTY_TYPE_BORDER_IMAGE_WIDTH = 48,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_END = 49,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_COLOR = 50,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_STYLE = 51,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_WIDTH = 52,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_START = 53,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_COLOR = 54,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_STYLE = 55,
        MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_WIDTH = 56,
        MyCSS_PROPERTY_TYPE_BORDER_LEFT = 57,
        MyCSS_PROPERTY_TYPE_BORDER_LEFT_COLOR = 58,
        MyCSS_PROPERTY_TYPE_BORDER_LEFT_STYLE = 59,
        MyCSS_PROPERTY_TYPE_BORDER_LEFT_WIDTH = 60,
        MyCSS_PROPERTY_TYPE_BORDER_RADIUS = 61,
        MyCSS_PROPERTY_TYPE_BORDER_RIGHT = 62,
        MyCSS_PROPERTY_TYPE_BORDER_RIGHT_COLOR = 63,
        MyCSS_PROPERTY_TYPE_BORDER_RIGHT_STYLE = 64,
        MyCSS_PROPERTY_TYPE_BORDER_RIGHT_WIDTH = 65,
        MyCSS_PROPERTY_TYPE_BORDER_SPACING = 66,
        MyCSS_PROPERTY_TYPE_BORDER_STYLE = 67,
        MyCSS_PROPERTY_TYPE_BORDER_TOP = 68,
        MyCSS_PROPERTY_TYPE_BORDER_TOP_COLOR = 69,
        MyCSS_PROPERTY_TYPE_BORDER_TOP_LEFT_RADIUS = 70,
        MyCSS_PROPERTY_TYPE_BORDER_TOP_RIGHT_RADIUS = 71,
        MyCSS_PROPERTY_TYPE_BORDER_TOP_STYLE = 72,
        MyCSS_PROPERTY_TYPE_BORDER_TOP_WIDTH = 73,
        MyCSS_PROPERTY_TYPE_BORDER_WIDTH = 74,
        MyCSS_PROPERTY_TYPE_BOTTOM = 75,
        MyCSS_PROPERTY_TYPE_BOX_DECORATION_BREAK = 76,
        MyCSS_PROPERTY_TYPE_BOX_SHADOW = 77,
        MyCSS_PROPERTY_TYPE_BOX_SIZING = 78,
        MyCSS_PROPERTY_TYPE_BOX_SUPPRESS = 79,
        MyCSS_PROPERTY_TYPE_BREAK_AFTER = 80,
        MyCSS_PROPERTY_TYPE_BREAK_BEFORE = 81,
        MyCSS_PROPERTY_TYPE_BREAK_INSIDE = 82,
        MyCSS_PROPERTY_TYPE_CAPTION_SIDE = 83,
        MyCSS_PROPERTY_TYPE_CARET = 84,
        MyCSS_PROPERTY_TYPE_CARET_COLOR = 85,
        MyCSS_PROPERTY_TYPE_CARET_SHAPE = 86,
        MyCSS_PROPERTY_TYPE_CLEAR = 87,
        MyCSS_PROPERTY_TYPE_CLEAR_AFTER = 88,
        MyCSS_PROPERTY_TYPE_COLOR = 89,
        MyCSS_PROPERTY_TYPE_COLOR_ADJUST = 90,
        MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION = 91,
        MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION_FILTERS = 92,
        MyCSS_PROPERTY_TYPE_COLOR_RENDERING = 93,
        MyCSS_PROPERTY_TYPE_COLUMN_COUNT = 94,
        MyCSS_PROPERTY_TYPE_COLUMN_FILL = 95,
        MyCSS_PROPERTY_TYPE_COLUMN_GAP = 96,
        MyCSS_PROPERTY_TYPE_COLUMN_RULE = 97,
        MyCSS_PROPERTY_TYPE_COLUMN_RULE_COLOR = 98,
        MyCSS_PROPERTY_TYPE_COLUMN_RULE_STYLE = 99,
        MyCSS_PROPERTY_TYPE_COLUMN_RULE_WIDTH = 100,
        MyCSS_PROPERTY_TYPE_COLUMN_SPAN = 101,
        MyCSS_PROPERTY_TYPE_COLUMN_WIDTH = 102,
        MyCSS_PROPERTY_TYPE_COLUMNS = 103,
        MyCSS_PROPERTY_TYPE_CONTAIN = 104,
        MyCSS_PROPERTY_TYPE_CONTENT = 105,
        MyCSS_PROPERTY_TYPE_CONTINUE = 106,
        MyCSS_PROPERTY_TYPE_COUNTER_INCREMENT = 107,
        MyCSS_PROPERTY_TYPE_CUE = 108,
        MyCSS_PROPERTY_TYPE_CUE_AFTER = 109,
        MyCSS_PROPERTY_TYPE_CUE_BEFORE = 110,
        MyCSS_PROPERTY_TYPE_CURSOR = 111,
        MyCSS_PROPERTY_TYPE_DIRECTION = 112,
        MyCSS_PROPERTY_TYPE_DISPLAY = 113,
        MyCSS_PROPERTY_TYPE_EMPTY_CELLS = 114,
        MyCSS_PROPERTY_TYPE_FILL = 115,
        MyCSS_PROPERTY_TYPE_FILL_OPACITY = 116,
        MyCSS_PROPERTY_TYPE_FILL_RULE = 117,
        MyCSS_PROPERTY_TYPE_FLEX = 118,
        MyCSS_PROPERTY_TYPE_FLEX_BASIS = 119,
        MyCSS_PROPERTY_TYPE_FLEX_DIRECTION = 120,
        MyCSS_PROPERTY_TYPE_FLEX_FLOW = 121,
        MyCSS_PROPERTY_TYPE_FLEX_GROW = 122,
        MyCSS_PROPERTY_TYPE_FLEX_SHRINK = 123,
        MyCSS_PROPERTY_TYPE_FLEX_WRAP = 124,
        MyCSS_PROPERTY_TYPE_FLOAT = 125,
        MyCSS_PROPERTY_TYPE_FLOAT_DISPLACE = 126,
        MyCSS_PROPERTY_TYPE_FONT = 127,
        MyCSS_PROPERTY_TYPE_FONT_FAMILY = 128,
        MyCSS_PROPERTY_TYPE_FONT_FEATURE_SETTINGS = 129,
        MyCSS_PROPERTY_TYPE_FONT_KERNING = 130,
        MyCSS_PROPERTY_TYPE_FONT_LANGUAGE_OVERRIDE = 131,
        MyCSS_PROPERTY_TYPE_FONT_SIZE = 132,
        MyCSS_PROPERTY_TYPE_FONT_SIZE_ADJUST = 133,
        MyCSS_PROPERTY_TYPE_FONT_STRETCH = 134,
        MyCSS_PROPERTY_TYPE_FONT_STYLE = 135,
        MyCSS_PROPERTY_TYPE_FONT_SYNTHESIS = 136,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT = 137,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_ALTERNATES = 138,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_CAPS = 139,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_EAST_ASIAN = 140,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_LIGATURES = 141,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_NUMERIC = 142,
        MyCSS_PROPERTY_TYPE_FONT_VARIANT_POSITION = 143,
        MyCSS_PROPERTY_TYPE_FONT_WEIGHT = 144,
        MyCSS_PROPERTY_TYPE_GLYPH_ORIENTATION_VERTICAL = 145,
        MyCSS_PROPERTY_TYPE_HANGING_PUNCTUATION = 146,
        MyCSS_PROPERTY_TYPE_HEIGHT = 147,
        MyCSS_PROPERTY_TYPE_HYPHENS = 148,
        MyCSS_PROPERTY_TYPE_IMAGE_RENDERING = 149,
        MyCSS_PROPERTY_TYPE_INDENT_EDGE_RESET = 150,
        MyCSS_PROPERTY_TYPE_INLINE_SIZE_STEP = 151,
        MyCSS_PROPERTY_TYPE_JUSTIFY_CONTENT = 152,
        MyCSS_PROPERTY_TYPE_LEFT = 153,
        MyCSS_PROPERTY_TYPE_LETTER_SPACING = 154,
        MyCSS_PROPERTY_TYPE_LINE_BREAK = 155,
        MyCSS_PROPERTY_TYPE_LINE_HEIGHT = 156,
        MyCSS_PROPERTY_TYPE_LINE_HEIGHT_STEP = 157,
        MyCSS_PROPERTY_TYPE_LIST_STYLE = 158,
        MyCSS_PROPERTY_TYPE_LIST_STYLE_IMAGE = 159,
        MyCSS_PROPERTY_TYPE_LIST_STYLE_POSITION = 160,
        MyCSS_PROPERTY_TYPE_LIST_STYLE_TYPE = 161,
        MyCSS_PROPERTY_TYPE_MARGIN = 162,
        MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_END = 163,
        MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_START = 164,
        MyCSS_PROPERTY_TYPE_MARGIN_BOTTOM = 165,
        MyCSS_PROPERTY_TYPE_MARGIN_INLINE_END = 166,
        MyCSS_PROPERTY_TYPE_MARGIN_INLINE_START = 167,
        MyCSS_PROPERTY_TYPE_MARGIN_LEFT = 168,
        MyCSS_PROPERTY_TYPE_MARGIN_RIGHT = 169,
        MyCSS_PROPERTY_TYPE_MARGIN_TOP = 170,
        MyCSS_PROPERTY_TYPE_MARKER = 171,
        MyCSS_PROPERTY_TYPE_MARKER_END = 172,
        MyCSS_PROPERTY_TYPE_MARKER_MID = 173,
        MyCSS_PROPERTY_TYPE_MARKER_SIDE = 174,
        MyCSS_PROPERTY_TYPE_MARKER_START = 175,
        MyCSS_PROPERTY_TYPE_MAX_HEIGHT = 176,
        MyCSS_PROPERTY_TYPE_MAX_LINES = 177,
        MyCSS_PROPERTY_TYPE_MAX_WIDTH = 178,
        MyCSS_PROPERTY_TYPE_MIN_HEIGHT = 179,
        MyCSS_PROPERTY_TYPE_MIN_WIDTH = 180,
        MyCSS_PROPERTY_TYPE_NAV_DOWN = 181,
        MyCSS_PROPERTY_TYPE_NAV_LEFT = 182,
        MyCSS_PROPERTY_TYPE_NAV_RIGHT = 183,
        MyCSS_PROPERTY_TYPE_NAV_UP = 184,
        MyCSS_PROPERTY_TYPE_OFFSET_AFTER = 185,
        MyCSS_PROPERTY_TYPE_OFFSET_BEFORE = 186,
        MyCSS_PROPERTY_TYPE_OFFSET_END = 187,
        MyCSS_PROPERTY_TYPE_OFFSET_START = 188,
        MyCSS_PROPERTY_TYPE_OPACITY = 189,
        MyCSS_PROPERTY_TYPE_ORDER = 190,
        MyCSS_PROPERTY_TYPE_ORPHANS = 191,
        MyCSS_PROPERTY_TYPE_OUTLINE = 192,
        MyCSS_PROPERTY_TYPE_OUTLINE_COLOR = 193,
        MyCSS_PROPERTY_TYPE_OUTLINE_OFFSET = 194,
        MyCSS_PROPERTY_TYPE_OUTLINE_STYLE = 195,
        MyCSS_PROPERTY_TYPE_OUTLINE_WIDTH = 196,
        MyCSS_PROPERTY_TYPE_OVERFLOW = 197,
        MyCSS_PROPERTY_TYPE_OVERFLOW_WRAP = 198,
        MyCSS_PROPERTY_TYPE_OVERFLOW_X = 199,
        MyCSS_PROPERTY_TYPE_OVERFLOW_Y = 200,
        MyCSS_PROPERTY_TYPE_PADDING = 201,
        MyCSS_PROPERTY_TYPE_PADDING_BLOCK_END = 202,
        MyCSS_PROPERTY_TYPE_PADDING_BLOCK_START = 203,
        MyCSS_PROPERTY_TYPE_PADDING_BOTTOM = 204,
        MyCSS_PROPERTY_TYPE_PADDING_INLINE_END = 205,
        MyCSS_PROPERTY_TYPE_PADDING_INLINE_START = 206,
        MyCSS_PROPERTY_TYPE_PADDING_LEFT = 207,
        MyCSS_PROPERTY_TYPE_PADDING_RIGHT = 208,
        MyCSS_PROPERTY_TYPE_PADDING_TOP = 209,
        MyCSS_PROPERTY_TYPE_PAUSE = 210,
        MyCSS_PROPERTY_TYPE_PAUSE_AFTER = 211,
        MyCSS_PROPERTY_TYPE_PAUSE_BEFORE = 212,
        MyCSS_PROPERTY_TYPE_PERSPECTIVE = 213,
        MyCSS_PROPERTY_TYPE_PERSPECTIVE_ORIGIN = 214,
        MyCSS_PROPERTY_TYPE_POSITION = 215,
        MyCSS_PROPERTY_TYPE_PRESENTATION_LEVEL = 216,
        MyCSS_PROPERTY_TYPE_QUOTES = 217,
        MyCSS_PROPERTY_TYPE_REGION_FRAGMENT = 218,
        MyCSS_PROPERTY_TYPE_RESIZE = 219,
        MyCSS_PROPERTY_TYPE_REST = 220,
        MyCSS_PROPERTY_TYPE_REST_AFTER = 221,
        MyCSS_PROPERTY_TYPE_REST_BEFORE = 222,
        MyCSS_PROPERTY_TYPE_RIGHT = 223,
        MyCSS_PROPERTY_TYPE_RUBY_ALIGN = 224,
        MyCSS_PROPERTY_TYPE_RUBY_MERGE = 225,
        MyCSS_PROPERTY_TYPE_RUBY_POSITION = 226,
        MyCSS_PROPERTY_TYPE_SCROLL_PADDING = 227,
        MyCSS_PROPERTY_TYPE_SCROLL_SNAP_ALIGN = 228,
        MyCSS_PROPERTY_TYPE_SCROLL_SNAP_MARGIN = 229,
        MyCSS_PROPERTY_TYPE_SCROLL_SNAP_STOP = 230,
        MyCSS_PROPERTY_TYPE_SCROLL_SNAP_TYPE = 231,
        MyCSS_PROPERTY_TYPE_SHAPE_IMAGE_THRESHOLD = 232,
        MyCSS_PROPERTY_TYPE_SHAPE_MARGIN = 233,
        MyCSS_PROPERTY_TYPE_SHAPE_OUTSIDE = 234,
        MyCSS_PROPERTY_TYPE_SHAPE_RENDERING = 235,
        MyCSS_PROPERTY_TYPE_SPEAK = 236,
        MyCSS_PROPERTY_TYPE_SPEAK_AS = 237,
        MyCSS_PROPERTY_TYPE_STRING_SET = 238,
        MyCSS_PROPERTY_TYPE_STROKE = 239,
        MyCSS_PROPERTY_TYPE_STROKE_DASHARRAY = 240,
        MyCSS_PROPERTY_TYPE_STROKE_DASHOFFSET = 241,
        MyCSS_PROPERTY_TYPE_STROKE_LINECAP = 242,
        MyCSS_PROPERTY_TYPE_STROKE_LINEJOIN = 243,
        MyCSS_PROPERTY_TYPE_STROKE_MITERLIMIT = 244,
        MyCSS_PROPERTY_TYPE_STROKE_OPACITY = 245,
        MyCSS_PROPERTY_TYPE_STROKE_WIDTH = 246,
        MyCSS_PROPERTY_TYPE_TAB_SIZE = 247,
        MyCSS_PROPERTY_TYPE_TABLE_LAYOUT = 248,
        MyCSS_PROPERTY_TYPE_TEXT_ALIGN = 249,
        MyCSS_PROPERTY_TYPE_TEXT_ALIGN_ALL = 250,
        MyCSS_PROPERTY_TYPE_TEXT_ALIGN_LAST = 251,
        MyCSS_PROPERTY_TYPE_TEXT_COMBINE_UPRIGHT = 252,
        MyCSS_PROPERTY_TYPE_TEXT_DECORATION = 253,
        MyCSS_PROPERTY_TYPE_TEXT_DECORATION_COLOR = 254,
        MyCSS_PROPERTY_TYPE_TEXT_DECORATION_LINE = 255,
        MyCSS_PROPERTY_TYPE_TEXT_DECORATION_SKIP = 256,
        MyCSS_PROPERTY_TYPE_TEXT_DECORATION_STYLE = 257,
        MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS = 258,
        MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_COLOR = 259,
        MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_POSITION = 260,
        MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_STYLE = 261,
        MyCSS_PROPERTY_TYPE_TEXT_INDENT = 262,
        MyCSS_PROPERTY_TYPE_TEXT_JUSTIFY = 263,
        MyCSS_PROPERTY_TYPE_TEXT_ORIENTATION = 264,
        MyCSS_PROPERTY_TYPE_TEXT_OVERFLOW = 265,
        MyCSS_PROPERTY_TYPE_TEXT_RENDERING = 266,
        MyCSS_PROPERTY_TYPE_TEXT_SHADOW = 267,
        MyCSS_PROPERTY_TYPE_TEXT_SIZE_ADJUST = 268,
        MyCSS_PROPERTY_TYPE_TEXT_TRANSFORM = 269,
        MyCSS_PROPERTY_TYPE_TEXT_UNDERLINE_POSITION = 270,
        MyCSS_PROPERTY_TYPE_TOP = 271,
        MyCSS_PROPERTY_TYPE_TOUCH_ACTION = 272,
        MyCSS_PROPERTY_TYPE_TRANSFORM = 273,
        MyCSS_PROPERTY_TYPE_TRANSFORM_BOX = 274,
        MyCSS_PROPERTY_TYPE_TRANSFORM_ORIGIN = 275,
        MyCSS_PROPERTY_TYPE_TRANSFORM_STYLE = 276,
        MyCSS_PROPERTY_TYPE_TRANSITION = 277,
        MyCSS_PROPERTY_TYPE_TRANSITION_DELAY = 278,
        MyCSS_PROPERTY_TYPE_TRANSITION_DURATION = 279,
        MyCSS_PROPERTY_TYPE_TRANSITION_PROPERTY = 280,
        MyCSS_PROPERTY_TYPE_TRANSITION_TIMING_FUNCTION = 281,
        MyCSS_PROPERTY_TYPE_UNICODE_BIDI = 282,
        MyCSS_PROPERTY_TYPE_USER_SELECT = 283,
        MyCSS_PROPERTY_TYPE_VERTICAL_ALIGN = 284,
        MyCSS_PROPERTY_TYPE_VISIBILITY = 285,
        MyCSS_PROPERTY_TYPE_VOICE_BALANCE = 286,
        MyCSS_PROPERTY_TYPE_VOICE_DURATION = 287,
        MyCSS_PROPERTY_TYPE_VOICE_FAMILY = 288,
        MyCSS_PROPERTY_TYPE_VOICE_PITCH = 289,
        MyCSS_PROPERTY_TYPE_VOICE_RANGE = 290,
        MyCSS_PROPERTY_TYPE_VOICE_RATE = 291,
        MyCSS_PROPERTY_TYPE_VOICE_STRESS = 292,
        MyCSS_PROPERTY_TYPE_VOICE_VOLUME = 293,
        MyCSS_PROPERTY_TYPE_WHITE_SPACE = 294,
        MyCSS_PROPERTY_TYPE_WIDOWS = 295,
        MyCSS_PROPERTY_TYPE_WIDTH = 296,
        MyCSS_PROPERTY_TYPE_WILL_CHANGE = 297,
        MyCSS_PROPERTY_TYPE_WORD_BREAK = 298,
        MyCSS_PROPERTY_TYPE_WORD_SPACING = 299,
        MyCSS_PROPERTY_TYPE_WORD_WRAP = 300,
        MyCSS_PROPERTY_TYPE_WRAP_FLOW = 301,
        MyCSS_PROPERTY_TYPE_WRAP_THROUGH = 302,
        MyCSS_PROPERTY_TYPE_WRITING_MODE = 303,
        MyCSS_PROPERTY_TYPE_Z_INDEX = 304,
        MyCSS_PROPERTY_TYPE_LAST_ENTRY = 305,
    }
    enum MyCSS_PROPERTY_TYPE_UNDEF = mycss_property_type.MyCSS_PROPERTY_TYPE_UNDEF;
    enum MyCSS_PROPERTY_TYPE_ALIGN_CONTENT = mycss_property_type.MyCSS_PROPERTY_TYPE_ALIGN_CONTENT;
    enum MyCSS_PROPERTY_TYPE_ALIGN_ITEMS = mycss_property_type.MyCSS_PROPERTY_TYPE_ALIGN_ITEMS;
    enum MyCSS_PROPERTY_TYPE_ALIGN_SELF = mycss_property_type.MyCSS_PROPERTY_TYPE_ALIGN_SELF;
    enum MyCSS_PROPERTY_TYPE_ANIMATION = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_DELAY = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_DELAY;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_DIRECTION = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_DIRECTION;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_DURATION = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_DURATION;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_FILL_MODE = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_FILL_MODE;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_ITERATION_COUNT = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_ITERATION_COUNT;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_NAME = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_NAME;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_PLAY_STATE = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_PLAY_STATE;
    enum MyCSS_PROPERTY_TYPE_ANIMATION_TIMING_FUNCTION = mycss_property_type.MyCSS_PROPERTY_TYPE_ANIMATION_TIMING_FUNCTION;
    enum MyCSS_PROPERTY_TYPE_APPEARANCE = mycss_property_type.MyCSS_PROPERTY_TYPE_APPEARANCE;
    enum MyCSS_PROPERTY_TYPE_BACKFACE_VISIBILITY = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKFACE_VISIBILITY;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_ATTACHMENT = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_ATTACHMENT;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_CLIP = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_CLIP;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_COLOR;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_IMAGE = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_IMAGE;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_ORIGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_ORIGIN;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_POSITION;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_REPEAT = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_REPEAT;
    enum MyCSS_PROPERTY_TYPE_BACKGROUND_SIZE = mycss_property_type.MyCSS_PROPERTY_TYPE_BACKGROUND_SIZE;
    enum MyCSS_PROPERTY_TYPE_BOOKMARK_LABEL = mycss_property_type.MyCSS_PROPERTY_TYPE_BOOKMARK_LABEL;
    enum MyCSS_PROPERTY_TYPE_BOOKMARK_LEVEL = mycss_property_type.MyCSS_PROPERTY_TYPE_BOOKMARK_LEVEL;
    enum MyCSS_PROPERTY_TYPE_BOOKMARK_STATE = mycss_property_type.MyCSS_PROPERTY_TYPE_BOOKMARK_STATE;
    enum MyCSS_PROPERTY_TYPE_BORDER = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_END_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BLOCK_START_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_LEFT_RADIUS = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_LEFT_RADIUS;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_RIGHT_RADIUS = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_RIGHT_RADIUS;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_BOTTOM_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_COLLAPSE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_COLLAPSE;
    enum MyCSS_PROPERTY_TYPE_BORDER_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_IMAGE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_IMAGE;
    enum MyCSS_PROPERTY_TYPE_BORDER_IMAGE_OUTSET = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_IMAGE_OUTSET;
    enum MyCSS_PROPERTY_TYPE_BORDER_IMAGE_REPEAT = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_IMAGE_REPEAT;
    enum MyCSS_PROPERTY_TYPE_BORDER_IMAGE_SLICE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_IMAGE_SLICE;
    enum MyCSS_PROPERTY_TYPE_BORDER_IMAGE_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_IMAGE_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_END = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_END;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_END_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_START = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_START;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_INLINE_START_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_LEFT = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_LEFT;
    enum MyCSS_PROPERTY_TYPE_BORDER_LEFT_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_LEFT_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_LEFT_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_LEFT_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_LEFT_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_LEFT_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_RADIUS = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_RADIUS;
    enum MyCSS_PROPERTY_TYPE_BORDER_RIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_RIGHT;
    enum MyCSS_PROPERTY_TYPE_BORDER_RIGHT_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_RIGHT_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_RIGHT_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_RIGHT_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_RIGHT_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_RIGHT_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_SPACING = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_SPACING;
    enum MyCSS_PROPERTY_TYPE_BORDER_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP_COLOR;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP_LEFT_RADIUS = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP_LEFT_RADIUS;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP_RIGHT_RADIUS = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP_RIGHT_RADIUS;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP_STYLE;
    enum MyCSS_PROPERTY_TYPE_BORDER_TOP_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_TOP_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BORDER_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_BORDER_WIDTH;
    enum MyCSS_PROPERTY_TYPE_BOTTOM = mycss_property_type.MyCSS_PROPERTY_TYPE_BOTTOM;
    enum MyCSS_PROPERTY_TYPE_BOX_DECORATION_BREAK = mycss_property_type.MyCSS_PROPERTY_TYPE_BOX_DECORATION_BREAK;
    enum MyCSS_PROPERTY_TYPE_BOX_SHADOW = mycss_property_type.MyCSS_PROPERTY_TYPE_BOX_SHADOW;
    enum MyCSS_PROPERTY_TYPE_BOX_SIZING = mycss_property_type.MyCSS_PROPERTY_TYPE_BOX_SIZING;
    enum MyCSS_PROPERTY_TYPE_BOX_SUPPRESS = mycss_property_type.MyCSS_PROPERTY_TYPE_BOX_SUPPRESS;
    enum MyCSS_PROPERTY_TYPE_BREAK_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_BREAK_AFTER;
    enum MyCSS_PROPERTY_TYPE_BREAK_BEFORE = mycss_property_type.MyCSS_PROPERTY_TYPE_BREAK_BEFORE;
    enum MyCSS_PROPERTY_TYPE_BREAK_INSIDE = mycss_property_type.MyCSS_PROPERTY_TYPE_BREAK_INSIDE;
    enum MyCSS_PROPERTY_TYPE_CAPTION_SIDE = mycss_property_type.MyCSS_PROPERTY_TYPE_CAPTION_SIDE;
    enum MyCSS_PROPERTY_TYPE_CARET = mycss_property_type.MyCSS_PROPERTY_TYPE_CARET;
    enum MyCSS_PROPERTY_TYPE_CARET_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_CARET_COLOR;
    enum MyCSS_PROPERTY_TYPE_CARET_SHAPE = mycss_property_type.MyCSS_PROPERTY_TYPE_CARET_SHAPE;
    enum MyCSS_PROPERTY_TYPE_CLEAR = mycss_property_type.MyCSS_PROPERTY_TYPE_CLEAR;
    enum MyCSS_PROPERTY_TYPE_CLEAR_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_CLEAR_AFTER;
    enum MyCSS_PROPERTY_TYPE_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_COLOR;
    enum MyCSS_PROPERTY_TYPE_COLOR_ADJUST = mycss_property_type.MyCSS_PROPERTY_TYPE_COLOR_ADJUST;
    enum MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION = mycss_property_type.MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION;
    enum MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION_FILTERS = mycss_property_type.MyCSS_PROPERTY_TYPE_COLOR_INTERPOLATION_FILTERS;
    enum MyCSS_PROPERTY_TYPE_COLOR_RENDERING = mycss_property_type.MyCSS_PROPERTY_TYPE_COLOR_RENDERING;
    enum MyCSS_PROPERTY_TYPE_COLUMN_COUNT = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_COUNT;
    enum MyCSS_PROPERTY_TYPE_COLUMN_FILL = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_FILL;
    enum MyCSS_PROPERTY_TYPE_COLUMN_GAP = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_GAP;
    enum MyCSS_PROPERTY_TYPE_COLUMN_RULE = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_RULE;
    enum MyCSS_PROPERTY_TYPE_COLUMN_RULE_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_RULE_COLOR;
    enum MyCSS_PROPERTY_TYPE_COLUMN_RULE_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_RULE_STYLE;
    enum MyCSS_PROPERTY_TYPE_COLUMN_RULE_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_RULE_WIDTH;
    enum MyCSS_PROPERTY_TYPE_COLUMN_SPAN = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_SPAN;
    enum MyCSS_PROPERTY_TYPE_COLUMN_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMN_WIDTH;
    enum MyCSS_PROPERTY_TYPE_COLUMNS = mycss_property_type.MyCSS_PROPERTY_TYPE_COLUMNS;
    enum MyCSS_PROPERTY_TYPE_CONTAIN = mycss_property_type.MyCSS_PROPERTY_TYPE_CONTAIN;
    enum MyCSS_PROPERTY_TYPE_CONTENT = mycss_property_type.MyCSS_PROPERTY_TYPE_CONTENT;
    enum MyCSS_PROPERTY_TYPE_CONTINUE = mycss_property_type.MyCSS_PROPERTY_TYPE_CONTINUE;
    enum MyCSS_PROPERTY_TYPE_COUNTER_INCREMENT = mycss_property_type.MyCSS_PROPERTY_TYPE_COUNTER_INCREMENT;
    enum MyCSS_PROPERTY_TYPE_CUE = mycss_property_type.MyCSS_PROPERTY_TYPE_CUE;
    enum MyCSS_PROPERTY_TYPE_CUE_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_CUE_AFTER;
    enum MyCSS_PROPERTY_TYPE_CUE_BEFORE = mycss_property_type.MyCSS_PROPERTY_TYPE_CUE_BEFORE;
    enum MyCSS_PROPERTY_TYPE_CURSOR = mycss_property_type.MyCSS_PROPERTY_TYPE_CURSOR;
    enum MyCSS_PROPERTY_TYPE_DIRECTION = mycss_property_type.MyCSS_PROPERTY_TYPE_DIRECTION;
    enum MyCSS_PROPERTY_TYPE_DISPLAY = mycss_property_type.MyCSS_PROPERTY_TYPE_DISPLAY;
    enum MyCSS_PROPERTY_TYPE_EMPTY_CELLS = mycss_property_type.MyCSS_PROPERTY_TYPE_EMPTY_CELLS;
    enum MyCSS_PROPERTY_TYPE_FILL = mycss_property_type.MyCSS_PROPERTY_TYPE_FILL;
    enum MyCSS_PROPERTY_TYPE_FILL_OPACITY = mycss_property_type.MyCSS_PROPERTY_TYPE_FILL_OPACITY;
    enum MyCSS_PROPERTY_TYPE_FILL_RULE = mycss_property_type.MyCSS_PROPERTY_TYPE_FILL_RULE;
    enum MyCSS_PROPERTY_TYPE_FLEX = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX;
    enum MyCSS_PROPERTY_TYPE_FLEX_BASIS = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_BASIS;
    enum MyCSS_PROPERTY_TYPE_FLEX_DIRECTION = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_DIRECTION;
    enum MyCSS_PROPERTY_TYPE_FLEX_FLOW = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_FLOW;
    enum MyCSS_PROPERTY_TYPE_FLEX_GROW = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_GROW;
    enum MyCSS_PROPERTY_TYPE_FLEX_SHRINK = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_SHRINK;
    enum MyCSS_PROPERTY_TYPE_FLEX_WRAP = mycss_property_type.MyCSS_PROPERTY_TYPE_FLEX_WRAP;
    enum MyCSS_PROPERTY_TYPE_FLOAT = mycss_property_type.MyCSS_PROPERTY_TYPE_FLOAT;
    enum MyCSS_PROPERTY_TYPE_FLOAT_DISPLACE = mycss_property_type.MyCSS_PROPERTY_TYPE_FLOAT_DISPLACE;
    enum MyCSS_PROPERTY_TYPE_FONT = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT;
    enum MyCSS_PROPERTY_TYPE_FONT_FAMILY = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_FAMILY;
    enum MyCSS_PROPERTY_TYPE_FONT_FEATURE_SETTINGS = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_FEATURE_SETTINGS;
    enum MyCSS_PROPERTY_TYPE_FONT_KERNING = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_KERNING;
    enum MyCSS_PROPERTY_TYPE_FONT_LANGUAGE_OVERRIDE = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_LANGUAGE_OVERRIDE;
    enum MyCSS_PROPERTY_TYPE_FONT_SIZE = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_SIZE;
    enum MyCSS_PROPERTY_TYPE_FONT_SIZE_ADJUST = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_SIZE_ADJUST;
    enum MyCSS_PROPERTY_TYPE_FONT_STRETCH = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_STRETCH;
    enum MyCSS_PROPERTY_TYPE_FONT_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_STYLE;
    enum MyCSS_PROPERTY_TYPE_FONT_SYNTHESIS = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_SYNTHESIS;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_ALTERNATES = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_ALTERNATES;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_CAPS = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_CAPS;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_EAST_ASIAN = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_EAST_ASIAN;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_LIGATURES = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_LIGATURES;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_NUMERIC = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_NUMERIC;
    enum MyCSS_PROPERTY_TYPE_FONT_VARIANT_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_VARIANT_POSITION;
    enum MyCSS_PROPERTY_TYPE_FONT_WEIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_FONT_WEIGHT;
    enum MyCSS_PROPERTY_TYPE_GLYPH_ORIENTATION_VERTICAL = mycss_property_type.MyCSS_PROPERTY_TYPE_GLYPH_ORIENTATION_VERTICAL;
    enum MyCSS_PROPERTY_TYPE_HANGING_PUNCTUATION = mycss_property_type.MyCSS_PROPERTY_TYPE_HANGING_PUNCTUATION;
    enum MyCSS_PROPERTY_TYPE_HEIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_HEIGHT;
    enum MyCSS_PROPERTY_TYPE_HYPHENS = mycss_property_type.MyCSS_PROPERTY_TYPE_HYPHENS;
    enum MyCSS_PROPERTY_TYPE_IMAGE_RENDERING = mycss_property_type.MyCSS_PROPERTY_TYPE_IMAGE_RENDERING;
    enum MyCSS_PROPERTY_TYPE_INDENT_EDGE_RESET = mycss_property_type.MyCSS_PROPERTY_TYPE_INDENT_EDGE_RESET;
    enum MyCSS_PROPERTY_TYPE_INLINE_SIZE_STEP = mycss_property_type.MyCSS_PROPERTY_TYPE_INLINE_SIZE_STEP;
    enum MyCSS_PROPERTY_TYPE_JUSTIFY_CONTENT = mycss_property_type.MyCSS_PROPERTY_TYPE_JUSTIFY_CONTENT;
    enum MyCSS_PROPERTY_TYPE_LEFT = mycss_property_type.MyCSS_PROPERTY_TYPE_LEFT;
    enum MyCSS_PROPERTY_TYPE_LETTER_SPACING = mycss_property_type.MyCSS_PROPERTY_TYPE_LETTER_SPACING;
    enum MyCSS_PROPERTY_TYPE_LINE_BREAK = mycss_property_type.MyCSS_PROPERTY_TYPE_LINE_BREAK;
    enum MyCSS_PROPERTY_TYPE_LINE_HEIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_LINE_HEIGHT;
    enum MyCSS_PROPERTY_TYPE_LINE_HEIGHT_STEP = mycss_property_type.MyCSS_PROPERTY_TYPE_LINE_HEIGHT_STEP;
    enum MyCSS_PROPERTY_TYPE_LIST_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_LIST_STYLE;
    enum MyCSS_PROPERTY_TYPE_LIST_STYLE_IMAGE = mycss_property_type.MyCSS_PROPERTY_TYPE_LIST_STYLE_IMAGE;
    enum MyCSS_PROPERTY_TYPE_LIST_STYLE_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_LIST_STYLE_POSITION;
    enum MyCSS_PROPERTY_TYPE_LIST_STYLE_TYPE = mycss_property_type.MyCSS_PROPERTY_TYPE_LIST_STYLE_TYPE;
    enum MyCSS_PROPERTY_TYPE_MARGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN;
    enum MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_END = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_END;
    enum MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_START = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_BLOCK_START;
    enum MyCSS_PROPERTY_TYPE_MARGIN_BOTTOM = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_BOTTOM;
    enum MyCSS_PROPERTY_TYPE_MARGIN_INLINE_END = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_INLINE_END;
    enum MyCSS_PROPERTY_TYPE_MARGIN_INLINE_START = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_INLINE_START;
    enum MyCSS_PROPERTY_TYPE_MARGIN_LEFT = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_LEFT;
    enum MyCSS_PROPERTY_TYPE_MARGIN_RIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_RIGHT;
    enum MyCSS_PROPERTY_TYPE_MARGIN_TOP = mycss_property_type.MyCSS_PROPERTY_TYPE_MARGIN_TOP;
    enum MyCSS_PROPERTY_TYPE_MARKER = mycss_property_type.MyCSS_PROPERTY_TYPE_MARKER;
    enum MyCSS_PROPERTY_TYPE_MARKER_END = mycss_property_type.MyCSS_PROPERTY_TYPE_MARKER_END;
    enum MyCSS_PROPERTY_TYPE_MARKER_MID = mycss_property_type.MyCSS_PROPERTY_TYPE_MARKER_MID;
    enum MyCSS_PROPERTY_TYPE_MARKER_SIDE = mycss_property_type.MyCSS_PROPERTY_TYPE_MARKER_SIDE;
    enum MyCSS_PROPERTY_TYPE_MARKER_START = mycss_property_type.MyCSS_PROPERTY_TYPE_MARKER_START;
    enum MyCSS_PROPERTY_TYPE_MAX_HEIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_MAX_HEIGHT;
    enum MyCSS_PROPERTY_TYPE_MAX_LINES = mycss_property_type.MyCSS_PROPERTY_TYPE_MAX_LINES;
    enum MyCSS_PROPERTY_TYPE_MAX_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_MAX_WIDTH;
    enum MyCSS_PROPERTY_TYPE_MIN_HEIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_MIN_HEIGHT;
    enum MyCSS_PROPERTY_TYPE_MIN_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_MIN_WIDTH;
    enum MyCSS_PROPERTY_TYPE_NAV_DOWN = mycss_property_type.MyCSS_PROPERTY_TYPE_NAV_DOWN;
    enum MyCSS_PROPERTY_TYPE_NAV_LEFT = mycss_property_type.MyCSS_PROPERTY_TYPE_NAV_LEFT;
    enum MyCSS_PROPERTY_TYPE_NAV_RIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_NAV_RIGHT;
    enum MyCSS_PROPERTY_TYPE_NAV_UP = mycss_property_type.MyCSS_PROPERTY_TYPE_NAV_UP;
    enum MyCSS_PROPERTY_TYPE_OFFSET_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_OFFSET_AFTER;
    enum MyCSS_PROPERTY_TYPE_OFFSET_BEFORE = mycss_property_type.MyCSS_PROPERTY_TYPE_OFFSET_BEFORE;
    enum MyCSS_PROPERTY_TYPE_OFFSET_END = mycss_property_type.MyCSS_PROPERTY_TYPE_OFFSET_END;
    enum MyCSS_PROPERTY_TYPE_OFFSET_START = mycss_property_type.MyCSS_PROPERTY_TYPE_OFFSET_START;
    enum MyCSS_PROPERTY_TYPE_OPACITY = mycss_property_type.MyCSS_PROPERTY_TYPE_OPACITY;
    enum MyCSS_PROPERTY_TYPE_ORDER = mycss_property_type.MyCSS_PROPERTY_TYPE_ORDER;
    enum MyCSS_PROPERTY_TYPE_ORPHANS = mycss_property_type.MyCSS_PROPERTY_TYPE_ORPHANS;
    enum MyCSS_PROPERTY_TYPE_OUTLINE = mycss_property_type.MyCSS_PROPERTY_TYPE_OUTLINE;
    enum MyCSS_PROPERTY_TYPE_OUTLINE_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_OUTLINE_COLOR;
    enum MyCSS_PROPERTY_TYPE_OUTLINE_OFFSET = mycss_property_type.MyCSS_PROPERTY_TYPE_OUTLINE_OFFSET;
    enum MyCSS_PROPERTY_TYPE_OUTLINE_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_OUTLINE_STYLE;
    enum MyCSS_PROPERTY_TYPE_OUTLINE_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_OUTLINE_WIDTH;
    enum MyCSS_PROPERTY_TYPE_OVERFLOW = mycss_property_type.MyCSS_PROPERTY_TYPE_OVERFLOW;
    enum MyCSS_PROPERTY_TYPE_OVERFLOW_WRAP = mycss_property_type.MyCSS_PROPERTY_TYPE_OVERFLOW_WRAP;
    enum MyCSS_PROPERTY_TYPE_OVERFLOW_X = mycss_property_type.MyCSS_PROPERTY_TYPE_OVERFLOW_X;
    enum MyCSS_PROPERTY_TYPE_OVERFLOW_Y = mycss_property_type.MyCSS_PROPERTY_TYPE_OVERFLOW_Y;
    enum MyCSS_PROPERTY_TYPE_PADDING = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING;
    enum MyCSS_PROPERTY_TYPE_PADDING_BLOCK_END = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_BLOCK_END;
    enum MyCSS_PROPERTY_TYPE_PADDING_BLOCK_START = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_BLOCK_START;
    enum MyCSS_PROPERTY_TYPE_PADDING_BOTTOM = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_BOTTOM;
    enum MyCSS_PROPERTY_TYPE_PADDING_INLINE_END = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_INLINE_END;
    enum MyCSS_PROPERTY_TYPE_PADDING_INLINE_START = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_INLINE_START;
    enum MyCSS_PROPERTY_TYPE_PADDING_LEFT = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_LEFT;
    enum MyCSS_PROPERTY_TYPE_PADDING_RIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_RIGHT;
    enum MyCSS_PROPERTY_TYPE_PADDING_TOP = mycss_property_type.MyCSS_PROPERTY_TYPE_PADDING_TOP;
    enum MyCSS_PROPERTY_TYPE_PAUSE = mycss_property_type.MyCSS_PROPERTY_TYPE_PAUSE;
    enum MyCSS_PROPERTY_TYPE_PAUSE_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_PAUSE_AFTER;
    enum MyCSS_PROPERTY_TYPE_PAUSE_BEFORE = mycss_property_type.MyCSS_PROPERTY_TYPE_PAUSE_BEFORE;
    enum MyCSS_PROPERTY_TYPE_PERSPECTIVE = mycss_property_type.MyCSS_PROPERTY_TYPE_PERSPECTIVE;
    enum MyCSS_PROPERTY_TYPE_PERSPECTIVE_ORIGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_PERSPECTIVE_ORIGIN;
    enum MyCSS_PROPERTY_TYPE_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_POSITION;
    enum MyCSS_PROPERTY_TYPE_PRESENTATION_LEVEL = mycss_property_type.MyCSS_PROPERTY_TYPE_PRESENTATION_LEVEL;
    enum MyCSS_PROPERTY_TYPE_QUOTES = mycss_property_type.MyCSS_PROPERTY_TYPE_QUOTES;
    enum MyCSS_PROPERTY_TYPE_REGION_FRAGMENT = mycss_property_type.MyCSS_PROPERTY_TYPE_REGION_FRAGMENT;
    enum MyCSS_PROPERTY_TYPE_RESIZE = mycss_property_type.MyCSS_PROPERTY_TYPE_RESIZE;
    enum MyCSS_PROPERTY_TYPE_REST = mycss_property_type.MyCSS_PROPERTY_TYPE_REST;
    enum MyCSS_PROPERTY_TYPE_REST_AFTER = mycss_property_type.MyCSS_PROPERTY_TYPE_REST_AFTER;
    enum MyCSS_PROPERTY_TYPE_REST_BEFORE = mycss_property_type.MyCSS_PROPERTY_TYPE_REST_BEFORE;
    enum MyCSS_PROPERTY_TYPE_RIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_RIGHT;
    enum MyCSS_PROPERTY_TYPE_RUBY_ALIGN = mycss_property_type.MyCSS_PROPERTY_TYPE_RUBY_ALIGN;
    enum MyCSS_PROPERTY_TYPE_RUBY_MERGE = mycss_property_type.MyCSS_PROPERTY_TYPE_RUBY_MERGE;
    enum MyCSS_PROPERTY_TYPE_RUBY_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_RUBY_POSITION;
    enum MyCSS_PROPERTY_TYPE_SCROLL_PADDING = mycss_property_type.MyCSS_PROPERTY_TYPE_SCROLL_PADDING;
    enum MyCSS_PROPERTY_TYPE_SCROLL_SNAP_ALIGN = mycss_property_type.MyCSS_PROPERTY_TYPE_SCROLL_SNAP_ALIGN;
    enum MyCSS_PROPERTY_TYPE_SCROLL_SNAP_MARGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_SCROLL_SNAP_MARGIN;
    enum MyCSS_PROPERTY_TYPE_SCROLL_SNAP_STOP = mycss_property_type.MyCSS_PROPERTY_TYPE_SCROLL_SNAP_STOP;
    enum MyCSS_PROPERTY_TYPE_SCROLL_SNAP_TYPE = mycss_property_type.MyCSS_PROPERTY_TYPE_SCROLL_SNAP_TYPE;
    enum MyCSS_PROPERTY_TYPE_SHAPE_IMAGE_THRESHOLD = mycss_property_type.MyCSS_PROPERTY_TYPE_SHAPE_IMAGE_THRESHOLD;
    enum MyCSS_PROPERTY_TYPE_SHAPE_MARGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_SHAPE_MARGIN;
    enum MyCSS_PROPERTY_TYPE_SHAPE_OUTSIDE = mycss_property_type.MyCSS_PROPERTY_TYPE_SHAPE_OUTSIDE;
    enum MyCSS_PROPERTY_TYPE_SHAPE_RENDERING = mycss_property_type.MyCSS_PROPERTY_TYPE_SHAPE_RENDERING;
    enum MyCSS_PROPERTY_TYPE_SPEAK = mycss_property_type.MyCSS_PROPERTY_TYPE_SPEAK;
    enum MyCSS_PROPERTY_TYPE_SPEAK_AS = mycss_property_type.MyCSS_PROPERTY_TYPE_SPEAK_AS;
    enum MyCSS_PROPERTY_TYPE_STRING_SET = mycss_property_type.MyCSS_PROPERTY_TYPE_STRING_SET;
    enum MyCSS_PROPERTY_TYPE_STROKE = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE;
    enum MyCSS_PROPERTY_TYPE_STROKE_DASHARRAY = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_DASHARRAY;
    enum MyCSS_PROPERTY_TYPE_STROKE_DASHOFFSET = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_DASHOFFSET;
    enum MyCSS_PROPERTY_TYPE_STROKE_LINECAP = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_LINECAP;
    enum MyCSS_PROPERTY_TYPE_STROKE_LINEJOIN = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_LINEJOIN;
    enum MyCSS_PROPERTY_TYPE_STROKE_MITERLIMIT = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_MITERLIMIT;
    enum MyCSS_PROPERTY_TYPE_STROKE_OPACITY = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_OPACITY;
    enum MyCSS_PROPERTY_TYPE_STROKE_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_STROKE_WIDTH;
    enum MyCSS_PROPERTY_TYPE_TAB_SIZE = mycss_property_type.MyCSS_PROPERTY_TYPE_TAB_SIZE;
    enum MyCSS_PROPERTY_TYPE_TABLE_LAYOUT = mycss_property_type.MyCSS_PROPERTY_TYPE_TABLE_LAYOUT;
    enum MyCSS_PROPERTY_TYPE_TEXT_ALIGN = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_ALIGN;
    enum MyCSS_PROPERTY_TYPE_TEXT_ALIGN_ALL = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_ALIGN_ALL;
    enum MyCSS_PROPERTY_TYPE_TEXT_ALIGN_LAST = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_ALIGN_LAST;
    enum MyCSS_PROPERTY_TYPE_TEXT_COMBINE_UPRIGHT = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_COMBINE_UPRIGHT;
    enum MyCSS_PROPERTY_TYPE_TEXT_DECORATION = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_DECORATION;
    enum MyCSS_PROPERTY_TYPE_TEXT_DECORATION_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_DECORATION_COLOR;
    enum MyCSS_PROPERTY_TYPE_TEXT_DECORATION_LINE = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_DECORATION_LINE;
    enum MyCSS_PROPERTY_TYPE_TEXT_DECORATION_SKIP = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_DECORATION_SKIP;
    enum MyCSS_PROPERTY_TYPE_TEXT_DECORATION_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_DECORATION_STYLE;
    enum MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS;
    enum MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_COLOR = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_COLOR;
    enum MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_POSITION;
    enum MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_EMPHASIS_STYLE;
    enum MyCSS_PROPERTY_TYPE_TEXT_INDENT = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_INDENT;
    enum MyCSS_PROPERTY_TYPE_TEXT_JUSTIFY = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_JUSTIFY;
    enum MyCSS_PROPERTY_TYPE_TEXT_ORIENTATION = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_ORIENTATION;
    enum MyCSS_PROPERTY_TYPE_TEXT_OVERFLOW = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_OVERFLOW;
    enum MyCSS_PROPERTY_TYPE_TEXT_RENDERING = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_RENDERING;
    enum MyCSS_PROPERTY_TYPE_TEXT_SHADOW = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_SHADOW;
    enum MyCSS_PROPERTY_TYPE_TEXT_SIZE_ADJUST = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_SIZE_ADJUST;
    enum MyCSS_PROPERTY_TYPE_TEXT_TRANSFORM = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_TRANSFORM;
    enum MyCSS_PROPERTY_TYPE_TEXT_UNDERLINE_POSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_TEXT_UNDERLINE_POSITION;
    enum MyCSS_PROPERTY_TYPE_TOP = mycss_property_type.MyCSS_PROPERTY_TYPE_TOP;
    enum MyCSS_PROPERTY_TYPE_TOUCH_ACTION = mycss_property_type.MyCSS_PROPERTY_TYPE_TOUCH_ACTION;
    enum MyCSS_PROPERTY_TYPE_TRANSFORM = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSFORM;
    enum MyCSS_PROPERTY_TYPE_TRANSFORM_BOX = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSFORM_BOX;
    enum MyCSS_PROPERTY_TYPE_TRANSFORM_ORIGIN = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSFORM_ORIGIN;
    enum MyCSS_PROPERTY_TYPE_TRANSFORM_STYLE = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSFORM_STYLE;
    enum MyCSS_PROPERTY_TYPE_TRANSITION = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSITION;
    enum MyCSS_PROPERTY_TYPE_TRANSITION_DELAY = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSITION_DELAY;
    enum MyCSS_PROPERTY_TYPE_TRANSITION_DURATION = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSITION_DURATION;
    enum MyCSS_PROPERTY_TYPE_TRANSITION_PROPERTY = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSITION_PROPERTY;
    enum MyCSS_PROPERTY_TYPE_TRANSITION_TIMING_FUNCTION = mycss_property_type.MyCSS_PROPERTY_TYPE_TRANSITION_TIMING_FUNCTION;
    enum MyCSS_PROPERTY_TYPE_UNICODE_BIDI = mycss_property_type.MyCSS_PROPERTY_TYPE_UNICODE_BIDI;
    enum MyCSS_PROPERTY_TYPE_USER_SELECT = mycss_property_type.MyCSS_PROPERTY_TYPE_USER_SELECT;
    enum MyCSS_PROPERTY_TYPE_VERTICAL_ALIGN = mycss_property_type.MyCSS_PROPERTY_TYPE_VERTICAL_ALIGN;
    enum MyCSS_PROPERTY_TYPE_VISIBILITY = mycss_property_type.MyCSS_PROPERTY_TYPE_VISIBILITY;
    enum MyCSS_PROPERTY_TYPE_VOICE_BALANCE = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_BALANCE;
    enum MyCSS_PROPERTY_TYPE_VOICE_DURATION = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_DURATION;
    enum MyCSS_PROPERTY_TYPE_VOICE_FAMILY = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_FAMILY;
    enum MyCSS_PROPERTY_TYPE_VOICE_PITCH = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_PITCH;
    enum MyCSS_PROPERTY_TYPE_VOICE_RANGE = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_RANGE;
    enum MyCSS_PROPERTY_TYPE_VOICE_RATE = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_RATE;
    enum MyCSS_PROPERTY_TYPE_VOICE_STRESS = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_STRESS;
    enum MyCSS_PROPERTY_TYPE_VOICE_VOLUME = mycss_property_type.MyCSS_PROPERTY_TYPE_VOICE_VOLUME;
    enum MyCSS_PROPERTY_TYPE_WHITE_SPACE = mycss_property_type.MyCSS_PROPERTY_TYPE_WHITE_SPACE;
    enum MyCSS_PROPERTY_TYPE_WIDOWS = mycss_property_type.MyCSS_PROPERTY_TYPE_WIDOWS;
    enum MyCSS_PROPERTY_TYPE_WIDTH = mycss_property_type.MyCSS_PROPERTY_TYPE_WIDTH;
    enum MyCSS_PROPERTY_TYPE_WILL_CHANGE = mycss_property_type.MyCSS_PROPERTY_TYPE_WILL_CHANGE;
    enum MyCSS_PROPERTY_TYPE_WORD_BREAK = mycss_property_type.MyCSS_PROPERTY_TYPE_WORD_BREAK;
    enum MyCSS_PROPERTY_TYPE_WORD_SPACING = mycss_property_type.MyCSS_PROPERTY_TYPE_WORD_SPACING;
    enum MyCSS_PROPERTY_TYPE_WORD_WRAP = mycss_property_type.MyCSS_PROPERTY_TYPE_WORD_WRAP;
    enum MyCSS_PROPERTY_TYPE_WRAP_FLOW = mycss_property_type.MyCSS_PROPERTY_TYPE_WRAP_FLOW;
    enum MyCSS_PROPERTY_TYPE_WRAP_THROUGH = mycss_property_type.MyCSS_PROPERTY_TYPE_WRAP_THROUGH;
    enum MyCSS_PROPERTY_TYPE_WRITING_MODE = mycss_property_type.MyCSS_PROPERTY_TYPE_WRITING_MODE;
    enum MyCSS_PROPERTY_TYPE_Z_INDEX = mycss_property_type.MyCSS_PROPERTY_TYPE_Z_INDEX;
    enum MyCSS_PROPERTY_TYPE_LAST_ENTRY = mycss_property_type.MyCSS_PROPERTY_TYPE_LAST_ENTRY;
    alias mycss_selectors_t = mycss_selectors;


    alias mycss_selectors_entry_t = mycss_selectors_entry;




    alias mycss_media_t = mycss_media;


    alias mycss_selectors_entries_list_t = mycss_selectors_entries_list;
    mycss_media_t* mycss_media_create() @nogc nothrow;


    struct mycss_stack_entry
    {
        void* value;
        mycss_parser_token_f parser;
    }
    alias mycss_stack_entry_t = mycss_stack_entry;
    alias mycss_property_index_static_entry_t = mycss_property_index_static_entry;
    void mycss_namespace_serialization_stylesheet(mycss_namespace_stylesheet_t*, mycore_callback_serialize_f, void*) @nogc nothrow;




    bool mycss_declaration_state_begin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_selectors_list_t = mycss_selectors_list;
    mycss_declaration_t* mycss_declaration_create() @nogc nothrow;
    struct mycss_selectots_pseudo_begin_entry
    {
        const(char)* name;
        size_t length;
        int sub_type;
        size_t next;
        size_t curr;
    }
    alias mycss_selectots_pseudo_begin_entry_t = mycss_selectots_pseudo_begin_entry;
    mycss_values_shorthand_two_type_t* mycss_values_destroy_shorthand_two_type(mycss_entry_t*, mycss_values_shorthand_two_type_t*, bool) @nogc nothrow;
    mystatus_t mycss_media_init(mycss_entry_t*, mycss_media_t*) @nogc nothrow;
    struct mycss_property_index_static_entry
    {
        const(char)* name;
        size_t name_length;
        mycss_property_type_t type;
        mycss_parser_token_f parser;
        size_t next;
        size_t curr;
    }
    bool mycss_values_color_parser_undef(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_property_serialization_type_name(mycss_property_type_t, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_selectors_serialization_chain(mycss_selectors_t*, mycss_selectors_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_namespace_serialization_entry(mycss_namespace_t*, mycss_namespace_entry_t*, mycore_callback_serialize_f, void*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_undef(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    mystatus_t mycss_declaration_init(mycss_entry_t*, mycss_declaration_t*) @nogc nothrow;
    alias mycss_selectors_function_begin_f = void function(mycss_entry_t*, mycss_selectors_entry_t*);
    size_t mycss_tokenizer_end_run_state_single(mycss_entry_t*, mycss_tokenizer_state_t, const(char)*, size_t, size_t) @nogc nothrow;


    mycss_values_shorthand_four_t* mycss_values_destroy_shorthand_four(mycss_entry_t*, mycss_values_shorthand_four_t*, bool) @nogc nothrow;
    mystatus_t mycss_media_clean_all(mycss_media_t*) @nogc nothrow;
    mycss_selectors_t* mycss_selectors_create() @nogc nothrow;
    alias mycss_values_image_obejct_f = void* function(mycss_entry_t*, mycss_values_image_t*);
    void mycss_declaration_parser_begin(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_namespace_t* mycss_namespace_create() @nogc nothrow;
    void mycss_values_serialization_string(mycore_string_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_selectors_entries_list
    {
        mycss_selectors_entry_t* entry;
        mycss_selectors_specificity_t specificity;
    }
    alias mycss_selectors_specificity_t = mycss_selectors_specificity;
    const(char)* mycss_convert_split_dimension_string(mycore_string_t*, double*, bool*) @nogc nothrow;
    bool mycss_check_three_code_points_would_start_identifier(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_namespace_t = mycss_namespace;
    alias mycss_values_color_index_static_entry_t = mycss_values_color_index_static_entry;


    bool mycss_values_consume_length(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_declaration_parser_ident(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_values_shorthand_two_t* mycss_values_destroy_shorthand_two(mycss_entry_t*, mycss_values_shorthand_two_t*, bool) @nogc nothrow;
    mystatus_t mycss_selectors_init(mycss_entry_t*, mycss_selectors_t*) @nogc nothrow;
    alias mycss_declaration_serialization_f = bool function(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*);
    alias mycss_string_process_state_t = mycss_string_process_state;
    enum mycss_string_process_state
    {
        MyCSS_STRING_PROCESS_STATE_DATA = 0,
        MyCSS_STRING_PROCESS_STATE_ESCAPED = 1,
        MyCSS_STRING_PROCESS_STATE_LAST_ENTRY = 2,
    }
    enum MyCSS_STRING_PROCESS_STATE_DATA = mycss_string_process_state.MyCSS_STRING_PROCESS_STATE_DATA;
    enum MyCSS_STRING_PROCESS_STATE_ESCAPED = mycss_string_process_state.MyCSS_STRING_PROCESS_STATE_ESCAPED;
    enum MyCSS_STRING_PROCESS_STATE_LAST_ENTRY = mycss_string_process_state.MyCSS_STRING_PROCESS_STATE_LAST_ENTRY;
    mycss_declaration_entry_t* mycss_declaration_entry_create(mycss_declaration_t*, mystatus_t*) @nogc nothrow;
    struct mycss_values_color_index_static_entry
    {
        char* name;
        size_t name_length;
        mycss_values_color_id_t type;
        c_ulong rgb;
        size_t next;
        size_t curr;
    }
    void mycss_values_serialization_number(mycss_values_number_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_declaration_state_data(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_namespace_init(mycss_entry_t*, mycss_namespace_t*) @nogc nothrow;
    const(mycss_property_index_static_entry_t)* mycss_property_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_namespace_parser_begin(mycss_entry_t*) @nogc nothrow;
    struct mycss_an_plus_b
    {
        mycss_an_plus_b_entry_t** entry;
    }
    void mycss_property_serialization_value(uint, void*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_type_list(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    void mycss_selectors_state_end(mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_namespace_state_namespace(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_serialization_list(mycss_selectors_t*, mycss_selectors_list_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_media
    {
        mystatus_t error;
    }
    mycss_media_t* mycss_media_destroy(mycss_media_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_state_drop_component_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_check_two_code_points_valid_escape(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_declaration_clean_all(mycss_declaration_t*) @nogc nothrow;
    bool mycss_values_consume_percentage(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_declaration_state_ident(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_namespace_clean(mycss_namespace_t*) @nogc nothrow;
    bool mycss_values_color_parser_rgba(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_function_skip_all(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss
    {
        mycss_tokenizer_state_f* parse_state_func;
    }
    bool mycss_selectors_serialization_selector(mycss_selectors_t*, mycss_selectors_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_property_type_t mycss_property_type_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_declaration_entry_clean(mycss_declaration_entry_t*) @nogc nothrow;
    alias mycss_declaration_entry_t = mycss_declaration_entry;
    void mycss_declaration_parser_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_selectors_clean(mycss_selectors_t*) @nogc nothrow;
    void mycss_declaration_clean(mycss_declaration_t*) @nogc nothrow;
    bool mycss_check_three_code_points_would_start_number(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_namespace_entry_t = mycss_namespace_entry;
    alias mycss_selectors_function_index_t = mycss_selectors_function_index;
    struct mycss_selectors_function_index
    {
        mycss_parser_token_f parser;
        mycss_parser_token_f switch_parser;
    }
    bool mycss_namespace_state_namespace_namespace(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_whitespace(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_values_serialization_length(mycss_values_length_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_stylesheet
    {
        mycss_entry_t* entry;
        mycss_namespace_stylesheet_t ns_stylesheet;
        mycss_selectors_list_t* sel_list_first;
        mycss_stylesheet_t* child;
        mycss_stylesheet_t* parent;
        mycss_stylesheet_t* next;
        mycss_stylesheet_t* prev;
    }
    mycss_values_number_t* mycss_values_destroy_number(mycss_entry_t*, mycss_values_number_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_padding(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    size_t mycss_convert_data_to_integer(const(char)*, size_t, c_long*) @nogc nothrow;
    alias mycss_values_image_function_index_static_entry_t = mycss_values_image_function_index_static_entry;
    struct mycss_values_image_function_index_static_entry
    {
        char* name;
        size_t name_length;
        mycss_property_value_t type;
        mycss_parser_token_f parser;
        mycss_values_image_obejct_f obj_creator;
        size_t next;
        size_t curr;
    }
    alias mycss_declaration_t = mycss_declaration;
    void mycss_declaration_entry_clean_all(mycss_declaration_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_numeric(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_declaration_t* mycss_declaration_destroy(mycss_declaration_t*, bool) @nogc nothrow;
    void mycss_namespace_parser_name(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    size_t mycss_convert_data_to_double(const(char)*, size_t, double*, bool*) @nogc nothrow;
    alias mycss_namespace_stylesheet_t = mycss_namespace_stylesheet;
    bool mycss_property_shared_switch_to_find_important(mycss_entry_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_margin(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_g_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_unknown_parser(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_namespace_clean_all(mycss_namespace_t*) @nogc nothrow;
    mycss_values_length_t* mycss_values_destroy_length(mycss_entry_t*, mycss_values_length_t*, bool) @nogc nothrow;
    bool mycss_declaration_state_colon_before_important(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_background_position_check(mycss_values_background_position_t*) @nogc nothrow;
    void mycss_values_serialization_angle(mycss_values_angle_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_quotation_mark(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t mycss_selectors_clean_all(mycss_selectors_t*) @nogc nothrow;
    struct myhtml_namespace_detect_name_entry
    {
        const(char)* name;
        size_t name_length;
        myhtml_namespace_t ns;
        size_t next;
        size_t curr;
    }
    bool mycss_namespace_state_namespace_namespace_ident(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias myhtml_namespace_detect_name_entry_t = myhtml_namespace_detect_name_entry;
    bool mycss_namespace_state_namespace_namespace_ident_string(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_quotation_mark_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct mycss_stack
    {
        mycss_stack_entry_t* entries;
        size_t entries_length;
        size_t entries_size;
    }
    void mycss_namespace_parser_url(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_namespace_t* mycss_namespace_destroy(mycss_namespace_t*, bool) @nogc nothrow;
    alias mycss_stack_t = mycss_stack;
    bool mycss_declaration_serialization_entry(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_selectors_t* mycss_selectors_destroy(mycss_selectors_t*, bool) @nogc nothrow;
    alias mycss_values_gradient_side_or_corner_t = mycss_values_gradient_side_or_corner;
    void mycss_values_serialization_resolution(mycss_values_resolution_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_shared_switch_to_parse_error(mycss_entry_t*) @nogc nothrow;
    mycss_values_percentage_t* mycss_values_destroy_percentage(mycss_entry_t*, mycss_values_percentage_t*, bool) @nogc nothrow;
    bool mycss_declaration_state_colon_important(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_width(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_property_parser_destroy_string(mycore_string_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_numeric_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_convert_unicode_range_to_codepoint(const(char)*, size_t, size_t*, size_t*) @nogc nothrow;
    const(mycss_property_value_index_static_entry_t)* mycss_property_value_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_selectors_parser_selector_begin(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb_g_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_gradient_linear_t = mycss_values_gradient_linear;
    mycss_values_angle_t* mycss_values_destroy_angle(mycss_entry_t*, mycss_values_angle_t*, bool) @nogc nothrow;
    void mycss_values_serialization_percentage(mycss_values_percentage_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_namespace_state_namespace_namespace_ident_url(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_b_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_property_value_t mycss_property_value_type_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_selectors_parser_selector_ident_type(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_declaration_state_colon_delim_after_important(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_switcher_to_find_important(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_drop(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_an_plus_b_entry
    {
        c_long a;
        c_long b;
        c_long n;
        bool is_broken;
        mycss_selectors_list_t* of;
    }
    void mycss_declaration_serialization_entries(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_selectors_list
    {
        mycss_selectors_entries_list_t* entries_list;
        size_t entries_list_length;
        mycss_declaration_entry_t* declaration_entry;
        mycss_selectors_flags_t flags;
        mycss_selectors_list_t* parent;
        mycss_selectors_list_t* next;
        mycss_selectors_list_t* prev;
    }
    size_t mycss_tokenizer_global_state_numeric_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_convert_hex_to_codepoint(const(char)*, size_t, size_t*, uint) @nogc nothrow;
    alias mycss_callback_declaration_destroy_f = mycss_declaration_entry* function(mycss_declaration_t*, mycss_declaration_entry_t*, bool);
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_style(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_not_or_matches_or_current_parser(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;





    void mycss_namespace_parser_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_number_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_check_declaration_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    struct mycss_namespace_entry
    {
        mycore_string_t* name;
        mycore_string_t* url;
        myhtml_namespace_t ns_id;
        size_t mctree_id;
        mycss_namespace_entry_t* next;
        mycss_namespace_entry_t* prev;
    }
    pragma(mangle, "mycss_declaration_entry") mycss_declaration_entry_t* mycss_declaration_entry_(mycss_declaration_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_numeric_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_color(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_has(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_resolution_t* mycss_values_destroy_resolution(mycss_entry_t*, mycss_values_resolution_t*, bool) @nogc nothrow;
    mycss_t* mycss_create() @nogc nothrow;
    void mycss_values_serialization_type_length_percentage(mycss_values_type_length_percentage_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_selectors_entry_clean(mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_declaration_serialization_entry_only_value(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_declaration_state_find_ending(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_drop_component_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_namespace_state_namespace_namespace_string(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_namespace_stylesheet_init(mycss_namespace_stylesheet_t*, mycss_entry_t*) @nogc nothrow;
    bool mycss_values_color_parser_rgb_b_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_line_not_none(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_namespace_parser_expectations_error(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_selectors_parser_selector_ident_attr(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_number_sign_name_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_selectors_entry_t* mycss_selectors_entry_destroy(mycss_selectors_t*, mycss_selectors_entry_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_entry_by_type(mycss_entry_t*, mycss_declaration_entry_t*, mycss_property_type_t, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_last(mycss_declaration_t*) @nogc nothrow;
    bool mycss_namespace_state_namespace_namespace_url(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_units_type_t = mycss_units_type;
    enum mycss_units_type
    {
        MyCSS_UNIT_TYPE_UNDEF = 0,
        MyCSS_UNIT_TYPE_DEG = 1,
        MyCSS_UNIT_TYPE_GRAD = 2,
        MyCSS_UNIT_TYPE_RAD = 3,
        MyCSS_UNIT_TYPE_TURN = 4,
        MyCSS_UNIT_TYPE_HZ = 5,
        MyCSS_UNIT_TYPE_KHZ = 6,
        MyCSS_UNIT_TYPE_CM = 7,
        MyCSS_UNIT_TYPE_IN = 8,
        MyCSS_UNIT_TYPE_MM = 9,
        MyCSS_UNIT_TYPE_PC = 10,
        MyCSS_UNIT_TYPE_PT = 11,
        MyCSS_UNIT_TYPE_PX = 12,
        MyCSS_UNIT_TYPE_Q = 13,
        MyCSS_UNIT_TYPE_CH = 14,
        MyCSS_UNIT_TYPE_EM = 15,
        MyCSS_UNIT_TYPE_EX = 16,
        MyCSS_UNIT_TYPE_IC = 17,
        MyCSS_UNIT_TYPE_REM = 18,
        MyCSS_UNIT_TYPE_VB = 19,
        MyCSS_UNIT_TYPE_VH = 20,
        MyCSS_UNIT_TYPE_VI = 21,
        MyCSS_UNIT_TYPE_VMAX = 22,
        MyCSS_UNIT_TYPE_VMIN = 23,
        MyCSS_UNIT_TYPE_VW = 24,
        MyCSS_UNIT_TYPE_DPCM = 25,
        MyCSS_UNIT_TYPE_DPI = 26,
        MyCSS_UNIT_TYPE_DPPX = 27,
        MyCSS_UNIT_TYPE_MS = 28,
        MyCSS_UNIT_TYPE_S = 29,
        MyCSS_UNIT_TYPE_LAST_ENTRY = 30,
    }
    enum MyCSS_UNIT_TYPE_UNDEF = mycss_units_type.MyCSS_UNIT_TYPE_UNDEF;
    enum MyCSS_UNIT_TYPE_DEG = mycss_units_type.MyCSS_UNIT_TYPE_DEG;
    enum MyCSS_UNIT_TYPE_GRAD = mycss_units_type.MyCSS_UNIT_TYPE_GRAD;
    enum MyCSS_UNIT_TYPE_RAD = mycss_units_type.MyCSS_UNIT_TYPE_RAD;
    enum MyCSS_UNIT_TYPE_TURN = mycss_units_type.MyCSS_UNIT_TYPE_TURN;
    enum MyCSS_UNIT_TYPE_HZ = mycss_units_type.MyCSS_UNIT_TYPE_HZ;
    enum MyCSS_UNIT_TYPE_KHZ = mycss_units_type.MyCSS_UNIT_TYPE_KHZ;
    enum MyCSS_UNIT_TYPE_CM = mycss_units_type.MyCSS_UNIT_TYPE_CM;
    enum MyCSS_UNIT_TYPE_IN = mycss_units_type.MyCSS_UNIT_TYPE_IN;
    enum MyCSS_UNIT_TYPE_MM = mycss_units_type.MyCSS_UNIT_TYPE_MM;
    enum MyCSS_UNIT_TYPE_PC = mycss_units_type.MyCSS_UNIT_TYPE_PC;
    enum MyCSS_UNIT_TYPE_PT = mycss_units_type.MyCSS_UNIT_TYPE_PT;
    enum MyCSS_UNIT_TYPE_PX = mycss_units_type.MyCSS_UNIT_TYPE_PX;
    enum MyCSS_UNIT_TYPE_Q = mycss_units_type.MyCSS_UNIT_TYPE_Q;
    enum MyCSS_UNIT_TYPE_CH = mycss_units_type.MyCSS_UNIT_TYPE_CH;
    enum MyCSS_UNIT_TYPE_EM = mycss_units_type.MyCSS_UNIT_TYPE_EM;
    enum MyCSS_UNIT_TYPE_EX = mycss_units_type.MyCSS_UNIT_TYPE_EX;
    enum MyCSS_UNIT_TYPE_IC = mycss_units_type.MyCSS_UNIT_TYPE_IC;
    enum MyCSS_UNIT_TYPE_REM = mycss_units_type.MyCSS_UNIT_TYPE_REM;
    enum MyCSS_UNIT_TYPE_VB = mycss_units_type.MyCSS_UNIT_TYPE_VB;
    enum MyCSS_UNIT_TYPE_VH = mycss_units_type.MyCSS_UNIT_TYPE_VH;
    enum MyCSS_UNIT_TYPE_VI = mycss_units_type.MyCSS_UNIT_TYPE_VI;
    enum MyCSS_UNIT_TYPE_VMAX = mycss_units_type.MyCSS_UNIT_TYPE_VMAX;
    enum MyCSS_UNIT_TYPE_VMIN = mycss_units_type.MyCSS_UNIT_TYPE_VMIN;
    enum MyCSS_UNIT_TYPE_VW = mycss_units_type.MyCSS_UNIT_TYPE_VW;
    enum MyCSS_UNIT_TYPE_DPCM = mycss_units_type.MyCSS_UNIT_TYPE_DPCM;
    enum MyCSS_UNIT_TYPE_DPI = mycss_units_type.MyCSS_UNIT_TYPE_DPI;
    enum MyCSS_UNIT_TYPE_DPPX = mycss_units_type.MyCSS_UNIT_TYPE_DPPX;
    enum MyCSS_UNIT_TYPE_MS = mycss_units_type.MyCSS_UNIT_TYPE_MS;
    enum MyCSS_UNIT_TYPE_S = mycss_units_type.MyCSS_UNIT_TYPE_S;
    enum MyCSS_UNIT_TYPE_LAST_ENTRY = mycss_units_type.MyCSS_UNIT_TYPE_LAST_ENTRY;
    alias mycss_declaration_flags_t = mycss_declaration_flags;
    alias mycss_values_cross_fade_mixing_image_t = mycss_values_cross_fade_mixing_image;
    size_t mycss_tokenizer_end_state_number_sign_name_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_font(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    mystatus_t mycss_namespace_stylesheet_clean(mycss_namespace_stylesheet_t*, mycss_entry_t*) @nogc nothrow;
    void mycss_values_serialization_color(mycss_values_color_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_shared_number(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    enum mycss_declaration_flags
    {
        MyCSS_DECLARATION_FLAGS_UNDEF = 0,
        MyCSS_DECLARATION_FLAGS_BAD = 1,
        MyCSS_DECLARATION_FLAGS_READ_ONLY = 2,
    }
    enum MyCSS_DECLARATION_FLAGS_UNDEF = mycss_declaration_flags.MyCSS_DECLARATION_FLAGS_UNDEF;
    enum MyCSS_DECLARATION_FLAGS_BAD = mycss_declaration_flags.MyCSS_DECLARATION_FLAGS_BAD;
    enum MyCSS_DECLARATION_FLAGS_READ_ONLY = mycss_declaration_flags.MyCSS_DECLARATION_FLAGS_READ_ONLY;
    bool mycss_property_parser_text_decoration_line_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_type_list_t* mycss_values_destroy_type_list(mycss_entry_t*, mycss_values_type_list_t*, bool) @nogc nothrow;
    bool mycss_declaration_state_parse_error(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_alpha_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_namespace_ident(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_token_t* mycss_parser_token_ready_callback_function(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mystatus_t mycss_init(mycss_t*) @nogc nothrow;
    void mycss_property_print(mycss_property_type_t, FILE*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_dollar_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_rgb_alpha_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_property_value_print(uint, void*, FILE*) @nogc nothrow;
    void mycss_selectors_parser_selector_namespace_attr(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_number_digit(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_selectots_function_begin_entry_t = mycss_selectots_function_begin_entry;
    bool mycss_property_shared_length(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    struct mycss_selectots_function_begin_entry
    {
        const(char)* name;
        size_t length;
        mycss_selectors_function_begin_f func;
        size_t next;
        size_t curr;
    }
    void mycss_values_serialization_color_alpha(mycss_values_color_alpha_value_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_parser_text_decoration_skip_not_none(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_selectors_state_f = bool function(mycss_entry_t*, mycss_selectors_t*, mycss_selectors_entry_t*, mycss_token_t*);
    bool mycss_selectors_function_parser_contains(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_t* mycss_destroy(mycss_t*, bool) @nogc nothrow;
    alias mycss_selectors_value_destroy_f = void* function(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool);
    alias mycss_values_cross_fade_final_image_t = mycss_values_cross_fade_final_image;
    bool mycss_declaration_serialization_entry_only_value_by_type(mycss_entry_t*, mycss_declaration_entry_t*, mycss_property_type_t, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_declaration_state_drop_component_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_x(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    struct mycss_string_escaped_res
    {
        ushort consumed;
        size_t code_point;
    }
    mycss_declaration_entry_t* mycss_declaration_entry_clone(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    mycss_namespace_stylesheet_t* mycss_namespace_stylesheet_destroy(mycss_namespace_stylesheet_t*, mycss_entry_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_after_namespace(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_values_serialization_text_decoration_line(mycss_values_text_decoration_line_t, mycore_callback_serialize_f, void*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_apostrophe(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_callback_selector_done_f = void function(mycss_selectors_t*, mycss_selectors_entry_t*);
    bool mycss_property_shared_percentage(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    alias mycss_status_t = mycss_status;
    enum mycss_status
    {
        MyCSS_STATUS_OK = 0,
        MyCSS_STATUS_ERROR_MEMORY_ALLOCATION = 65537,
        MyCSS_STATUS_ERROR_TOKENIZER_STATE_ALLOCATION = 65568,
        MyCSS_STATUS_ERROR_TOKENIZER_INCOMING_BUFFER_ADD = 65569,
        MyCSS_STATUS_ERROR_TOKENIZER_TOKEN_ALLOCATION = 65570,
        MyCSS_STATUS_ERROR_INCOMING_BUFFER_INIT = 65584,
        MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_CREATE = 65593,
        MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_INIT = 65600,
        MyCSS_STATUS_ERROR_ENTRY_TOKEN_INCOMING_BUFFER_INIT = 65601,
        MyCSS_STATUS_ERROR_ENTRY_TOKEN_NODE_ADD = 65602,
        MyCSS_STATUS_ERROR_SELECTORS_CREATE = 65792,
        MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_CREATE = 65793,
        MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_INIT = 65794,
        MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_NODE_ADD = 65795,
        MyCSS_STATUS_ERROR_SELECTORS_LIST_CREATE = 65796,
        MyCSS_STATUS_ERROR_SELECTORS_LIST_INIT = 65797,
        MyCSS_STATUS_ERROR_SELECTORS_LIST_ADD_NODE = 65798,
        MyCSS_STATUS_ERROR_NAMESPACE_CREATE = 66048,
        MyCSS_STATUS_ERROR_NAMESPACE_INIT = 66049,
        MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_CREATE = 66050,
        MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_INIT = 66051,
        MyCSS_STATUS_ERROR_NAMESPACE_NODE_ADD = 66052,
        MyCSS_STATUS_ERROR_MEDIA_CREATE = 66564,
        MyCSS_STATUS_ERROR_STRING_CREATE = 66817,
        MyCSS_STATUS_ERROR_STRING_INIT = 66818,
        MyCSS_STATUS_ERROR_STRING_NODE_INIT = 66819,
        MyCSS_STATUS_ERROR_AN_PLUS_B_CREATE = 67072,
        MyCSS_STATUS_ERROR_AN_PLUS_B_INIT = 67073,
        MyCSS_STATUS_ERROR_DECLARATION_CREATE = 67328,
        MyCSS_STATUS_ERROR_DECLARATION_INIT = 67329,
        MyCSS_STATUS_ERROR_DECLARATION_ENTRY_CREATE = 67330,
        MyCSS_STATUS_ERROR_DECLARATION_ENTRY_INIT = 67331,
        MyCSS_STATUS_ERROR_PARSER_LIST_CREATE = 67584,
    }
    enum MyCSS_STATUS_OK = mycss_status.MyCSS_STATUS_OK;
    enum MyCSS_STATUS_ERROR_MEMORY_ALLOCATION = mycss_status.MyCSS_STATUS_ERROR_MEMORY_ALLOCATION;
    enum MyCSS_STATUS_ERROR_TOKENIZER_STATE_ALLOCATION = mycss_status.MyCSS_STATUS_ERROR_TOKENIZER_STATE_ALLOCATION;
    enum MyCSS_STATUS_ERROR_TOKENIZER_INCOMING_BUFFER_ADD = mycss_status.MyCSS_STATUS_ERROR_TOKENIZER_INCOMING_BUFFER_ADD;
    enum MyCSS_STATUS_ERROR_TOKENIZER_TOKEN_ALLOCATION = mycss_status.MyCSS_STATUS_ERROR_TOKENIZER_TOKEN_ALLOCATION;
    enum MyCSS_STATUS_ERROR_INCOMING_BUFFER_INIT = mycss_status.MyCSS_STATUS_ERROR_INCOMING_BUFFER_INIT;
    enum MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_CREATE = mycss_status.MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_CREATE;
    enum MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_INIT = mycss_status.MyCSS_STATUS_ERROR_ENTRY_INCOMING_BUFFER_INIT;
    enum MyCSS_STATUS_ERROR_ENTRY_TOKEN_INCOMING_BUFFER_INIT = mycss_status.MyCSS_STATUS_ERROR_ENTRY_TOKEN_INCOMING_BUFFER_INIT;
    enum MyCSS_STATUS_ERROR_ENTRY_TOKEN_NODE_ADD = mycss_status.MyCSS_STATUS_ERROR_ENTRY_TOKEN_NODE_ADD;
    enum MyCSS_STATUS_ERROR_SELECTORS_CREATE = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_CREATE;
    enum MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_CREATE = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_CREATE;
    enum MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_INIT = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_INIT;
    enum MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_NODE_ADD = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_ENTRIES_NODE_ADD;
    enum MyCSS_STATUS_ERROR_SELECTORS_LIST_CREATE = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_LIST_CREATE;
    enum MyCSS_STATUS_ERROR_SELECTORS_LIST_INIT = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_LIST_INIT;
    enum MyCSS_STATUS_ERROR_SELECTORS_LIST_ADD_NODE = mycss_status.MyCSS_STATUS_ERROR_SELECTORS_LIST_ADD_NODE;
    enum MyCSS_STATUS_ERROR_NAMESPACE_CREATE = mycss_status.MyCSS_STATUS_ERROR_NAMESPACE_CREATE;
    enum MyCSS_STATUS_ERROR_NAMESPACE_INIT = mycss_status.MyCSS_STATUS_ERROR_NAMESPACE_INIT;
    enum MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_CREATE = mycss_status.MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_CREATE;
    enum MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_INIT = mycss_status.MyCSS_STATUS_ERROR_NAMESPACE_ENTRIES_INIT;
    enum MyCSS_STATUS_ERROR_NAMESPACE_NODE_ADD = mycss_status.MyCSS_STATUS_ERROR_NAMESPACE_NODE_ADD;
    enum MyCSS_STATUS_ERROR_MEDIA_CREATE = mycss_status.MyCSS_STATUS_ERROR_MEDIA_CREATE;
    enum MyCSS_STATUS_ERROR_STRING_CREATE = mycss_status.MyCSS_STATUS_ERROR_STRING_CREATE;
    enum MyCSS_STATUS_ERROR_STRING_INIT = mycss_status.MyCSS_STATUS_ERROR_STRING_INIT;
    enum MyCSS_STATUS_ERROR_STRING_NODE_INIT = mycss_status.MyCSS_STATUS_ERROR_STRING_NODE_INIT;
    enum MyCSS_STATUS_ERROR_AN_PLUS_B_CREATE = mycss_status.MyCSS_STATUS_ERROR_AN_PLUS_B_CREATE;
    enum MyCSS_STATUS_ERROR_AN_PLUS_B_INIT = mycss_status.MyCSS_STATUS_ERROR_AN_PLUS_B_INIT;
    enum MyCSS_STATUS_ERROR_DECLARATION_CREATE = mycss_status.MyCSS_STATUS_ERROR_DECLARATION_CREATE;
    enum MyCSS_STATUS_ERROR_DECLARATION_INIT = mycss_status.MyCSS_STATUS_ERROR_DECLARATION_INIT;
    enum MyCSS_STATUS_ERROR_DECLARATION_ENTRY_CREATE = mycss_status.MyCSS_STATUS_ERROR_DECLARATION_ENTRY_CREATE;
    enum MyCSS_STATUS_ERROR_DECLARATION_ENTRY_INIT = mycss_status.MyCSS_STATUS_ERROR_DECLARATION_ENTRY_INIT;
    enum MyCSS_STATUS_ERROR_PARSER_LIST_CREATE = mycss_status.MyCSS_STATUS_ERROR_PARSER_LIST_CREATE;
    alias mycss_selectors_value_function_destroy_f = void* function(mycss_entry_t*, void*, bool);
    void* mycss_selectors_entry_value_destroy(mycss_entry_t*, mycss_selectors_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_combinator(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_cross_fade_t = mycss_values_cross_fade;
    size_t mycss_tokenizer_global_state_number_dot(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_declaration_entry_type_set(mycss_declaration_entry_t*, mycss_property_type_t) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_g_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_skip_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_parser_token(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_top_right_radius(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_nth_with_selectors(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_parser_token_selector_list_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_namespace_stylesheet_init_default(mycss_namespace_stylesheet_t*, mycss_entry_t*, const(char)*, size_t, myhtml_namespace_t) @nogc nothrow;
    bool mycss_declaration_serialization_undef(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;





    bool mycss_values_color_parser_rgb_g_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_apostrophe_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_values_serialization_text_decoration_skip(mycss_values_text_decoration_skip_t, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_selectors_parser_selector_id(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_property_shared_length_percentage(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_selectors_state_combinator_greater_than(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_parse(mycss_entry_t*, myencoding_t, const(char)*, size_t) @nogc nothrow;
    bool mycss_property_parser_text_decoration_color_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_color_alpha_value_t* mycss_values_destroy_color_alpha_value(mycss_entry_t*, mycss_values_color_alpha_value_t*, bool) @nogc nothrow;
    void mycss_declaration_entry_important_set(mycss_declaration_entry_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_top_left_radius(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_number_decimal(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct mycss_property_value_index_static_entry
    {
        const(char)* name;
        size_t name_length;
        mycss_property_value_t type;
        size_t next;
        size_t curr;
    }
    bool mycss_selectors_function_parser_nth_with_selectors_need_of(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_after_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_property_value_index_static_entry_t = mycss_property_value_index_static_entry;
    alias mycss_selectors_match_t = mycss_selectors_match;
    void mycss_selectors_parser_selector_class(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    alias mycss_selectors_object_attribute_t = mycss_selectors_value_attribute;
    enum mycss_selectors_match
    {
        MyCSS_SELECTORS_MATCH_EQUAL = 0,
        MyCSS_SELECTORS_MATCH_INCLUDE = 1,
        MyCSS_SELECTORS_MATCH_DASH = 2,
        MyCSS_SELECTORS_MATCH_PREFIX = 3,
        MyCSS_SELECTORS_MATCH_SUFFIX = 4,
        MyCSS_SELECTORS_MATCH_SUBSTRING = 5,
        MyCSS_SELECTORS_MATCH_LAST_ENTRY = 6,
    }
    enum MyCSS_SELECTORS_MATCH_EQUAL = mycss_selectors_match.MyCSS_SELECTORS_MATCH_EQUAL;
    enum MyCSS_SELECTORS_MATCH_INCLUDE = mycss_selectors_match.MyCSS_SELECTORS_MATCH_INCLUDE;
    enum MyCSS_SELECTORS_MATCH_DASH = mycss_selectors_match.MyCSS_SELECTORS_MATCH_DASH;
    enum MyCSS_SELECTORS_MATCH_PREFIX = mycss_selectors_match.MyCSS_SELECTORS_MATCH_PREFIX;
    enum MyCSS_SELECTORS_MATCH_SUFFIX = mycss_selectors_match.MyCSS_SELECTORS_MATCH_SUFFIX;
    enum MyCSS_SELECTORS_MATCH_SUBSTRING = mycss_selectors_match.MyCSS_SELECTORS_MATCH_SUBSTRING;
    enum MyCSS_SELECTORS_MATCH_LAST_ENTRY = mycss_selectors_match.MyCSS_SELECTORS_MATCH_LAST_ENTRY;
    size_t mycss_tokenizer_end_state_left_parenthesis(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_selectors_sub_type_pseudo_class_t mycss_pseudo_class_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_namespace_stylesheet_append_default(mycss_namespace_stylesheet_t*, mycss_namespace_entry_t*) @nogc nothrow;
    bool mycss_declaration_serialization_shorthand_four(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mystatus_t mycss_parse_chunk(mycss_entry_t*, const(char)*, size_t) @nogc nothrow;
    mycss_selectors_list_t* mycss_selectors_parse(mycss_selectors_t*, myencoding_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    mycss_stack_t* mycss_stack_create() @nogc nothrow;
    struct mycss_selectors_value_attribute
    {
        mycore_string_t* value;
        mycss_selectors_match_t match;
        mycss_selectors_mod_t mod;
    }
    size_t mycss_tokenizer_global_state_number_e(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_parse(mycss_declaration_t*, myencoding_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    mycss_values_color_hue_value_t* mycss_values_destroy_color_hue_value(mycss_entry_t*, mycss_values_color_hue_value_t*, bool) @nogc nothrow;
    bool mycss_property_shared_resolution(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    void mycss_values_serialization_url(mycss_values_url_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_bottom_right_radius(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_b_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_image_image_set_option_t = mycss_values_image_image_set_option;
    mycss_selectors_list_t* mycss_selectors_parse_by_function(mycss_selectors_t*, mycss_parser_token_f, myencoding_t, const(char)*, size_t, mystatus_t*) @nogc nothrow;
    mystatus_t mycss_stack_init(mycss_stack_t*, size_t) @nogc nothrow;
    mystatus_t mycss_parse_chunk_end(mycss_entry_t*) @nogc nothrow;
    void mycss_declaration_entry_append_to_current(mycss_declaration_t*, mycss_declaration_entry_t*) @nogc nothrow;
    mycss_values_color_hsla_t* mycss_values_destroy_color_hsla(mycss_entry_t*, mycss_values_color_hsla_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_shorthand_two(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_shared_custom_ident(mycss_entry_t*, mycss_token_t*, void**, uint*) @nogc nothrow;
    bool mycss_property_parser_text_decoration_after_line(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_image_image_set_t = mycss_values_image_image_set;
    mycss_selectors_sub_type_pseudo_element_t mycss_pseudo_element_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_namespace_stylesheet_destroy_default(mycss_namespace_stylesheet_t*, mycss_entry_t*) @nogc nothrow;
    void mycss_values_serialization_image(mycss_values_image_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_selectors_parser_selector_value(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_border_bottom_left_radius(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_right_parenthesis(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_rgb_b_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_nth_with_selectors_need_of_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_number_e_plus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_parser_token_drop_component_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_shorthand_two_type(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_selectors_state_complex_selector_list(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_shared_color(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*, bool*) @nogc nothrow;
    const(mycss_values_image_function_index_static_entry_t)* mycss_values_image_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    bool mycss_values_color_parser_rgb_before_alpha_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_declaration_entry_remove(mycss_declaration_t*, mycss_declaration_entry_t*) @nogc nothrow;
    const(mycss_selectots_pseudo_begin_entry_t)* mycss_pseudo_begin_entry_by_name(const(char)*, size_t, size_t, const(mycss_selectots_pseudo_begin_entry_t)*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_background(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    struct mycss_string_res
    {
        mycss_string_escaped_res_t escaped;
        mycss_string_process_state_t state;
        myencoding_t encoding;
        myencoding_result_t encoding_res;
        bool case_insensitive;
    }
    size_t mycss_tokenizer_global_state_number_e_decimal(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_parser_selector_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_values_serialization_background_size_entry(mycss_values_background_size_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    alias mycss_values_image_image_t = mycss_values_image_image;
    bool mycss_property_parser_color_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_entry_parser_list_entry_t = mycss_entry_parser_list_entry;
    struct mycss_entry_parser_list_entry
    {
        mycss_parser_token_f parser;
        mycss_parser_token_f parser_switch;
        mycss_token_type_t ending_token;
        bool is_local;
    }
    void mycss_stack_clean(mycss_stack_t*) @nogc nothrow;
    mycss_values_color_hwb_t* mycss_values_destroy_color_hwb(mycss_entry_t*, mycss_values_color_hwb_t*, bool) @nogc nothrow;
    mycss_token_type_t mycss_declaration_ending_token_type(mycss_declaration_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_asterisk(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_selectors_entry_t* mycss_selectors_entry_find_first(mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_property_shared_default(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    void mycss_selectors_parser_selector_modifier(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_values_serialization_border(mycss_values_border_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    alias myhtml_namespace_detect_url_entry_t = myhtml_namespace_detect_url_entry;
    struct myhtml_namespace_detect_url_entry
    {
        const(char)* url;
        size_t url_length;
        myhtml_namespace_t ns;
    }
    mycss_stylesheet_t* mycss_stylesheet_create() @nogc nothrow;
    bool mycss_property_parser_border_color_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_namespace_entry_t* mycss_namespace_entry_create(mycss_namespace_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_background_image(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    alias mycss_values_image_list_t = mycss_values_image_list;
    mycss_declaration_entry_t* mycss_declaration_entry_delete(mycss_declaration_t*, mycss_declaration_entry_t*) @nogc nothrow;
    mycss_an_plus_b_t* mycss_an_plus_b_create() @nogc nothrow;
    bool mycss_parser_token_drop_at_rule(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_token_begin(mycss_token_t*) @nogc nothrow;
    struct mycss_declaration
    {
        mycss_entry_t* ref_entry;
        mycss_declaration_entry_t** entry;
        mycss_declaration_entry_t* entry_last;
        mycss_stack_t* stack;
        mycss_token_type_t ending_token;
        mcobject_t* mcobject_entries;
        mcobject_t* mcobject_list;
    }
    bool mycss_values_color_parser_rgb_alpha_number(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_complex_selector_list_need_combinator_or_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_property_value_t mycss_values_image_id_by_name(const(char)*, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_plus_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_declaration_serialization_type_list(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    void mycss_declaration_ending_token_type_set(mycss_declaration_t*, mycss_token_type_t) @nogc nothrow;
    bool mycss_selectors_function_parser_nth_without_selectors(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_color_gray_t* mycss_values_destroy_color_gray(mycss_entry_t*, mycss_values_color_gray_t*, bool) @nogc nothrow;
    mycss_stack_t* mycss_stack_destroy(mycss_stack_t*, bool) @nogc nothrow;
    bool mycss_parser_token_drop_at_rule_component_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_an_plus_b_init(mycss_entry_t*, mycss_an_plus_b_t*) @nogc nothrow;
    bool mycss_selectors_function_parser_nth_without_selectors_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_image_t = mycss_values_image;
    mycss_values_color_rgba_number_t* mycss_values_destroy_color_rgba_number(mycss_entry_t*, mycss_values_color_rgba_number_t*, bool) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_background_repeat(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_complex_selector_list_need_combinator_or_selector_ws(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_namespace_entry_clean(mycss_namespace_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_plus_sign_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_color_function_index_static_entry_t = mycss_values_color_function_index_static_entry;
    uint mycss_property_shared_get_value_type(mycss_entry_t*, mycss_token_t*, mycore_string_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_ident(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_class(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mystatus_t mycss_stylesheet_init(mycss_stylesheet_t*, mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_url_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_function_index_static_entry
    {
        char* name;
        size_t name_length;
        mycss_values_color_function_id_t type;
        mycss_parser_token_f parser;
        size_t next;
        size_t curr;
    }
    size_t mycss_token_length(mycss_token_t*) @nogc nothrow;
    bool mycss_declaration_serialization_border_radius(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_token
    {
        mycss_token_type_t type;
        size_t begin;
        size_t length;
        const(char)* data;
    }
    bool mycss_property_shared_by_value_type(mycss_entry_t*, mycss_token_t*, uint*, uint, mycore_string_t*) @nogc nothrow;
    size_t mycss_token_position(mycss_token_t*, size_t*) @nogc nothrow;
    bool mycss_declaration_serialization_text_decoration(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_selectors_entry_t* mycss_selectors_entry_create(mycss_selectors_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_background_position(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    bool mycss_property_parser_url_string(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_namespace_stylesheet
    {
        mctree_t* name_tree;
        mycss_namespace_entry_t* entry_first;
        mycss_namespace_entry_t* entry_default;
        mycss_namespace_entry_t entry_undef;
        mycss_namespace_entry_t entry_any;
        size_t ns_id_counter;
    }
    size_t mycss_tokenizer_end_state_comma(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_namespace_entry_t* mycss_namespace_entry_destroy(mycss_namespace_entry_t*, mycss_entry_t*, bool) @nogc nothrow;
    mystatus_t mycss_stylesheet_clean_all(mycss_stylesheet_t*) @nogc nothrow;
    bool mycss_values_color_parser_hsl(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_stack_push(mycss_stack_t*, void*, mycss_parser_token_f) @nogc nothrow;
    mycss_values_color_rgba_percentage_t* mycss_values_destroy_color_rgba_percentage(mycss_entry_t*, mycss_values_color_rgba_percentage_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_complex_selector_list_need_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_an_plus_b_clean_all(mycss_an_plus_b_t*) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_class_function(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void* mycss_values_image_creator_url(mycss_entry_t*, mycss_values_image_t*) @nogc nothrow;
    mycss_declaration_entry_t* mycss_declaration_entry_destroy_background_size(mycss_declaration_t*, mycss_declaration_entry_t*, bool) @nogc nothrow;
    mycss_values_color_t* mycss_values_destroy_color(mycss_entry_t*, mycss_values_color_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hsla(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_values_image_creator_function_image(mycss_entry_t*, mycss_values_image_t*) @nogc nothrow;
    alias mycss_values_url_t = mycss_values_url;
    bool mycss_property_shared_width(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_url(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_hyphen_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_function_parser_drop(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_an_plus_b_t* mycss_an_plus_b_destroy(mycss_an_plus_b_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_text_decoration_line(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_selectors_state_complex_selector_list_need_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_class_function_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_stack_entry_t* mycss_stack_pop(mycss_stack_t*) @nogc nothrow;
    mycss_stylesheet_t* mycss_stylesheet_destroy(mycss_stylesheet_t*, bool) @nogc nothrow;
    pragma(mangle, "mycss_token_type") mycss_token_type_t mycss_token_type_(mycss_token_t*) @nogc nothrow;
    bool mycss_declaration_serialization_text_decoration_skip(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    void* mycss_values_image_creator_image_set(mycss_entry_t*, mycss_values_image_t*) @nogc nothrow;
    bool mycss_property_shared_height(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_image(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_element(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_values_color_parser_hsl_before_saturation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_selectors_entries_list_t* mycss_selectors_entries_list_create(mycss_selectors_t*) @nogc nothrow;
    bool mycss_selectors_function_parser_drop_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_stack_entry_t* mycss_stack_current(mycss_stack_t*) @nogc nothrow;
    alias mycss_values_element_t = mycss_values_element;
    const(char)* mycss_token_name_by_type(mycss_token_type_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_url_string_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_hyphen_minus_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_namespace_entry_append_to_current(mycss_namespace_t*, mycss_namespace_entry_t*) @nogc nothrow;
    mycss_selectors_list_t* mycss_selectors_list_create(mycss_selectors_t*) @nogc nothrow;
    void* mycss_values_image_creator_element(mycss_entry_t*, mycss_values_image_t*) @nogc nothrow;
    bool mycss_property_shared_line_width(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    size_t mycss_token_data_to_string(mycss_entry_t*, mycss_token_t*, mycore_string_t*, bool, bool) @nogc nothrow;
    bool mycss_values_color_parser_hsl_saturation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_selectors_function_begin_f mycss_function_begin_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_selectors_list_clean(mycss_selectors_list_t*) @nogc nothrow;
    alias mycss_selectors_value_lang_t = mycss_selectors_value_lang;
    struct mycss_selectors_value_lang
    {
        mycore_string_t str;
        mycss_selectors_value_lang* next;
    }
    mycss_selectors_entries_list_t* mycss_selectors_entries_list_add_one(mycss_selectors_t*, mycss_selectors_entries_list_t*, size_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_url_after(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_stylesheet_serialization(mycss_stylesheet_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_hyphen_minus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_function_parser_drop_after_column(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_element_function(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    mycss_an_plus_b_entry_t* mycss_an_plus_b_entry_create(mycss_entry_t*) @nogc nothrow;
    bool mycss_declaration_serialization_font_family(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_parser_image_function_image_wait_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hsl_before_lightness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_selector_pseudo_element_function_end(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_an_plus_b_entry_clean_all(mycss_an_plus_b_entry_t*) @nogc nothrow;
    bool mycss_declaration_serialization_font(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    bool mycss_property_parser_image_function_image_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_selectors_list_t* mycss_selectors_list_destroy(mycss_selectors_t*, mycss_selectors_list_t*, bool) @nogc nothrow;
    const(char)* mycss_namespace_name_by_id(mycss_namespace_t*, mctree_t*, size_t, size_t*) @nogc nothrow;
    mycss_selectors_entries_list_t* mycss_selectors_entries_list_destroy(mycss_selectors_t*, mycss_selectors_entries_list_t*) @nogc nothrow;
    const(mycss_selectots_function_begin_entry_t)* mycss_function_begin_entry_by_name(const(char)*, size_t) @nogc nothrow;
    bool mycss_property_shared_line_height(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    alias mycss_values_text_decoration_t = mycss_values_text_decoration;
    mycss_values_font_family_entry_t* mycss_values_destroy_font_family_entry(mycss_entry_t*, mycss_values_font_family_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_url_after_whitespace(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_values_image_creator_cross_fade(mycss_entry_t*, mycss_values_image_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_hyphen_minus_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_state_compound_selector_list(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_font_family_t* mycss_values_destroy_font_family(mycss_entry_t*, mycss_values_font_family_t*, bool) @nogc nothrow;
    mycore_incoming_buffer_t* mycss_token_buffer_first(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_property_shared_line_style(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_selectors_function_parser_dir(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_namespace_entry_t* mycss_namespace_entry_by_name(mycss_namespace_t*, mctree_t*, const(char)*, size_t, bool) @nogc nothrow;
    bool mycss_selectors_state_compound_selector_list_need_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_background(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_hyphen_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hsl_lightness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_image_function_image_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_an_plus_b_entry_t* mycss_an_plus_b_entry_destroy(mycss_entry_t*, mycss_an_plus_b_entry_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_expectations_error(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    bool mycss_selectors_function_parser_dir_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_bad_token(mycss_entry_t*, mycss_token_t*) @nogc nothrow;
    void mycss_selectors_function_begin_nth_child(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_selectors_state_compound_selector_list_need_selector_or_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hsl_before_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_url_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_text_decoration_skip(mycss_entry_t*, mycss_token_t*, uint*, uint*, mycore_string_t*, bool) @nogc nothrow;
    alias mycss_values_color_alpha_value_t = mycss_values_color_alpha_value;
    mycss_values_font_t* mycss_values_destroy_font(mycss_entry_t*, mycss_values_font_t*, bool) @nogc nothrow;
    bool mycss_property_parser_image_function_image_set(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_background_image(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    struct mycss_entry_parser_list
    {
        mycss_entry_parser_list_entry_t* list;
        size_t size;
        size_t length;
    }
    alias mycss_entry_parser_list_t = mycss_entry_parser_list;
    mycss_selectors_list_t* mycss_selectors_list_append_selector(mycss_selectors_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_string_data_process(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*) @nogc nothrow;
    enum mycss_selectors_combinator
    {
        MyCSS_SELECTORS_COMBINATOR_UNDEF = 0,
        MyCSS_SELECTORS_COMBINATOR_DESCENDANT = 1,
        MyCSS_SELECTORS_COMBINATOR_CHILD = 2,
        MyCSS_SELECTORS_COMBINATOR_NEXT_SIBLING = 3,
        MyCSS_SELECTORS_COMBINATOR_FOLLOWING_SIBLING = 4,
        MyCSS_SELECTORS_COMBINATOR_COLUMN = 5,
        MyCSS_SELECTORS_COMBINATOR_LAST_ENTRY = 6,
    }
    enum MyCSS_SELECTORS_COMBINATOR_UNDEF = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_UNDEF;
    enum MyCSS_SELECTORS_COMBINATOR_DESCENDANT = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_DESCENDANT;
    enum MyCSS_SELECTORS_COMBINATOR_CHILD = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_CHILD;
    enum MyCSS_SELECTORS_COMBINATOR_NEXT_SIBLING = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_NEXT_SIBLING;
    enum MyCSS_SELECTORS_COMBINATOR_FOLLOWING_SIBLING = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_FOLLOWING_SIBLING;
    enum MyCSS_SELECTORS_COMBINATOR_COLUMN = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_COLUMN;
    enum MyCSS_SELECTORS_COMBINATOR_LAST_ENTRY = mycss_selectors_combinator.MyCSS_SELECTORS_COMBINATOR_LAST_ENTRY;
    alias mycss_selectors_combinator_t = mycss_selectors_combinator;
    pragma(mangle, "mycss_selectors_entry") mycss_selectors_entry_t* mycss_selectors_entry_(mycss_selectors_t*) @nogc nothrow;
    const(char)* mycss_namespace_name_by_entry(mycss_namespace_entry_t*, mctree_t*, size_t*, bool*) @nogc nothrow;
    void mycss_string_data_process_end(mycore_string_t*, mycss_string_res_t*) @nogc nothrow;
    void mycss_an_plus_b_serialization(mycss_an_plus_b_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    alias mycss_values_color_hue_value_t = mycss_values_color_hue_value;
    bool mycss_declaration_serialization_background_repeat(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mystatus_t mycss_tokenizer_state_init(mycss_t*) @nogc nothrow;
    mycss_selectors_entry_t* mycss_selectors_list_last_entry(mycss_selectors_list_t*) @nogc nothrow;
    bool mycss_selectors_state_compound_selector_list_comma_ws(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_bad_url(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_text_decoration_style(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    void mycss_selectors_entry_append_to_current(mycss_selectors_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_image_set_resolution(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_function_begin_not(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_solidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hsl_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    const(char)* myhtml_namespace_url_by_id(myhtml_namespace_t, size_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_image_set_resolution_wait_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_declaration_serialization_background_position(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_selectors_entry_t** mycss_selectors_list_current_chain(mycss_selectors_list_t*) @nogc nothrow;
    alias mycss_values_color_hsla_t = mycss_values_color_hsla;
    void mycss_encoding_set(mycss_entry_t*, myencoding_t) @nogc nothrow;
    bool mycss_property_shared_text_decoration_line(mycss_entry_t*, mycss_token_t*, uint*, uint*, mycore_string_t*, bool) @nogc nothrow;
    void mycss_tokenizer_state_destroy(mycss_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_solidus_comment_end(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_dir(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_selectors_state_compound_selector_list_need_ending_or_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_lang(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_parser_check_and_set_bad_parent_selector(mycss_entry_t*, mycss_selectors_list_t*) @nogc nothrow;
    const(mycss_values_color_index_static_entry_t)* mycss_values_color_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_colon(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hex(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    void mycss_an_plus_b_parser_expectations_error(mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_name(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_image_function_string(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    myencoding_t mycss_encoding_get(mycss_entry_t*) @nogc nothrow;
    bool mycss_declaration_serialization_background_size(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    mycss_values_text_decoration_t* mycss_values_destroy_text_decoration(mycss_entry_t*, mycss_values_text_decoration_t*, bool) @nogc nothrow;
    bool mycss_selectors_function_parser_lang_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_hwb_t = mycss_values_color_hwb;
    void mycss_selectors_function_begin_matches(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    myhtml_namespace_t myhtml_namespace_id_by_url(const(char)*, size_t) @nogc nothrow;
    size_t mycss_string_process_state_data(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*) @nogc nothrow;
    bool mycss_selectors_function_parser_lang_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    const(myhtml_namespace_detect_name_entry_t)* myhtml_namespace_name_entry_by_name(const(char)*, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_semicolon(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_lang(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    alias mycss_values_color_gray_t = mycss_values_color_gray;
    mystatus_t mycss_tokenizer_chunk(mycss_entry_t*, const(char)*, size_t) @nogc nothrow;
    bool mycss_property_shared_font_ends(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_declaration_serialization_border_x(mycss_entry_t*, mycss_declaration_entry_t*, mycore_callback_serialize_f, void*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_name_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_values_color_id_t mycss_values_color_id_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_selectors_list_append_to_current(mycss_selectors_t*, mycss_selectors_list_t*) @nogc nothrow;
    myencoding_t mycss_encoding_check_charset_rule(const(char)*, size_t) @nogc nothrow;
    size_t mycss_string_process_state_data_utf_8(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_string_wait_comma(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_shared_font_weight(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    mystatus_t mycss_tokenizer_process(mycss_entry_t*, const(char)*, size_t) @nogc nothrow;
    void* mycss_selectors_value_undef_create(mycss_entry_t*, bool) @nogc nothrow;
    alias mycss_values_color_rgba_number_t = mycss_values_color_rgba_number;
    bool mycss_an_plus_b_state_anb_begin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hwb(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_less_than_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_drop(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_selectors_state_relative_selector_list(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_string_process_state_escaped(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_string_wait_ident(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    const(char)* mycss_values_color_name_by_id(mycss_values_color_id_t, size_t*) @nogc nothrow;
    mycss_selectors_object_attribute_t* mycss_selectors_value_attribute_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_list_destroy_last_empty_selector(mycss_selectors_t*, mycss_selectors_list_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_relative_selector_list_need_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_rgba_percentage_t = mycss_values_color_rgba_percentage;
    bool mycss_an_plus_b_state_anb(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hwb_before_whiteness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_declaration_entry
    {
        mycss_property_type_t type;
        uint value_type;
        void* value;
        bool is_important;
        mycss_declaration_flags_t flags;
        mycss_declaration_entry_t* next;
        mycss_declaration_entry_t* prev;
    }
    struct mycss_namespace
    {
        mycss_namespace_entry_t** entry;
        mycss_namespace_entry_t* entry_last;
        mycss_namespace_stylesheet_t* ns_stylesheet;
        mcobject_t* mcobject_entries;
    }
    mycss_values_image_t* mycss_values_destroy_image(mycss_entry_t*, mycss_values_image_t*, bool) @nogc nothrow;
    size_t mycss_string_process_state_escaped_utf_8(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*) @nogc nothrow;
    bool mycss_property_parser_image_function_cross_fade(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_less_than_sign_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_font_size(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*) @nogc nothrow;
    mystatus_t mycss_tokenizer_end(mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_double_quoted(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_nth_of_type(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    void mycss_selectors_function_begin_nth_last_column(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_selectors_state_relative_selector_list_need_combinator_or_selector_begin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_less_than_sign_minus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hwb_whiteness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_an_plus_b_state_anb_plus(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_entry
    {
        mycss_t* mycss_;
        mycss_token_t* token;
        mycss_stylesheet_t* stylesheet;
        mchar_async_t* mchar;
        size_t mchar_node_id;
        size_t mchar_value_node_id;
        mcobject_t* mcobject_string_entries;
        mycss_namespace_t* ns;
        mycss_selectors_t* selectors;
        mycss_an_plus_b_t* anb;
        mycss_media_t* media;
        mycss_declaration_t* declaration;
        void** values;
        mcobject_t* mcobject_incoming_buffer;
        mycore_incoming_buffer_t* first_buffer;
        mycore_incoming_buffer_t* current_buffer;
        mycss_entry_type_t type;
        myencoding_t encoding;
        mycss_tokenizer_state_t state;
        mycss_tokenizer_state_t state_back;
        mycss_entry_parser_list_t* parser_list;
        mycss_parser_token_f parser;
        mycss_parser_token_f parser_switch;
        mycss_parser_token_f parser_error;
        mycss_parser_token_f parser_original;
        mycss_token_type_t parser_ending_token;
        mycss_token_ready_callback_f token_ready_callback;
        mycss_callback_selector_done_f callback_selector_done;
        size_t token_counter;
        size_t help_counter;
    }
    bool mycss_property_shared_font_stretch(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_double_quoted_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_color_t = mycss_values_color;
    bool mycss_property_parser_image_function_cross_fade_mixing_after_percentage(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_image_image_t* mycss_values_destroy_image_image(mycss_entry_t*, mycss_values_image_image_t*, bool) @nogc nothrow;
    const(mycss_values_color_function_index_static_entry_t)* mycss_values_color_function_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    bool mycss_selectors_state_relative_selector_list_need_combinator_or_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_string_res_clean(mycss_string_res_t*) @nogc nothrow;
    bool mycss_an_plus_b_state_anb_plus_n_hyphen(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_commercial_at(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_image_function_cross_fade_mixing_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_run_state_single(mycss_entry_t*, mycss_tokenizer_state_t, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_double_quoted_rsolidus_r(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_values_color_function_id_t mycss_values_color_function_id_by_name(const(char)*, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_current(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    mycss_values_image_image_set_t* mycss_values_destroy_image_image_set(mycss_entry_t*, mycss_values_image_image_set_t*, bool) @nogc nothrow;
    bool mycss_property_shared_font_style(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_values_color_parser_hwb_before_blackness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_background_repeat_list_t = mycss_values_background_repeat_list;
    bool mycss_an_plus_b_state_anb_plus_n(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_image_function_cross_fade_final(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_values_color_parser_hwb_blackness(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_undef_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_commercial_at_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_font_family(mycss_entry_t*, mycss_token_t*, void**, uint*, bool*, mycore_string_t*) @nogc nothrow;
    mycss_values_element_t* mycss_values_destroy_element(mycss_entry_t*, mycss_values_element_t*, bool) @nogc nothrow;
    const(char)* mycss_values_color_function_name_by_id(mycss_values_color_function_id_t, size_t*) @nogc nothrow;
    bool mycss_selectors_state_relative_selector_list_need_combinator_or_selector_ws(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_function_begin_nth_last_child(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_state_set_current_buffer_for_continue(mycss_entry_t*, size_t, size_t) @nogc nothrow;
    void mycss_string_escaped_res_clean(mycss_string_escaped_res_t*) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_single_quoted(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_values_cross_fade_t* mycss_values_destroy_cross_fade(mycss_entry_t*, mycss_values_cross_fade_t*, bool) @nogc nothrow;
    bool mycss_an_plus_b_state_anb_plus_n_plus(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_id_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_single_quoted_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_background_repeat_t = mycss_values_background_repeat;
    void mycss_selectors_function_begin_nth_last_of_type(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_token_strcasecmp(mycss_entry_t*, mycss_token_t*, const(char)*, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hwb_before_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_commercial_at_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_image_function_cross_fade_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_global_state_string_single_quoted_rsolidus_r(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_has(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    alias mycss_selectors_mod_t = mycss_selectors_mod;
    enum mycss_selectors_mod
    {
        MyCSS_SELECTORS_MOD_UNDEF = 0,
        MyCSS_SELECTORS_MOD_I = 1,
    }
    enum MyCSS_SELECTORS_MOD_UNDEF = mycss_selectors_mod.MyCSS_SELECTORS_MOD_UNDEF;
    enum MyCSS_SELECTORS_MOD_I = mycss_selectors_mod.MyCSS_SELECTORS_MOD_I;
    void* mycss_selectors_value_class_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_commercial_at_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_hwb_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_image_list_t* mycss_values_destroy_image_list(mycss_entry_t*, mycss_values_image_list_t*, bool) @nogc nothrow;
    alias mycss_values_background_position_t = mycss_values_background_position;
    bool mycss_property_shared_image(mycss_entry_t*, mycss_token_t*, void**, uint*, mycore_string_t*, bool*) @nogc nothrow;
    void* mycss_selectors_value_element_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_begin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_background_size_list_t = mycss_values_background_size_list;
    size_t mycss_tokenizer_end_state_commercial_at_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void mycss_selectors_function_begin_nth_column(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    bool mycss_property_shared_background_repeat_one(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    void* mycss_selectors_value_attribute_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_left_square_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_background_size_entry_t = mycss_values_background_size_entry;
    void mycss_selectors_function_begin_contains(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_state_quotation_mark(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_unicode_range_before(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_gray(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_undef(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_align_content(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_background_t = mycss_values_background;
    size_t mycss_tokenizer_global_state_unicode_range(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_background_repeat_two(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    mycss_values_background_list_t* mycss_values_destroy_background(mycss_entry_t*, mycss_values_background_list_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_reverse_solidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_destroy(mycss_entry_t*, mycss_selectors_type_t, int, void*, bool) @nogc nothrow;
    bool mycss_values_color_parser_gray_before_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_quotation_mark_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_left_bracket(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_right_square_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_unicode_range_question(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_values_color_parser_gray_alpha(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_align_items(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_selectors_begin_unknown(mycss_entry_t*, mycss_selectors_entry_t*) @nogc nothrow;
    mycss_values_background_repeat_list_t* mycss_values_destroy_background_repeat(mycss_entry_t*, mycss_values_background_repeat_list_t*, bool) @nogc nothrow;
    alias mycss_values_background_list_t = mycss_values_background_list;
    bool mycss_selectors_state_simple_selector_left_bracket_vertical_bar(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_shared_background_attachment(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    size_t mycss_tokenizer_state_number_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_align_self(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_circumflex_accent(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_global_state_unicode_range_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_left_bracket_ident(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_background_position_t* mycss_values_destroy_background_position(mycss_entry_t*, mycss_values_background_position_t*, bool) @nogc nothrow;
    bool mycss_property_shared_background_position(mycss_entry_t*, mycss_token_t*, void*, uint*, mycore_string_t*) @nogc nothrow;
    mycss_values_background_size_list_t* mycss_values_destroy_background_size(mycss_entry_t*, mycss_values_background_size_list_t*, bool) @nogc nothrow;
    alias mycss_values_border_t = mycss_values_border;
    size_t mycss_tokenizer_end_state_left_curly_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_selectors_flags_t = mycss_selectors_flags;
    enum mycss_selectors_flags
    {
        MyCSS_SELECTORS_FLAGS_UNDEF = 0,
        MyCSS_SELECTORS_FLAGS_SELECTOR_BAD = 1,
    }
    enum MyCSS_SELECTORS_FLAGS_UNDEF = mycss_selectors_flags.MyCSS_SELECTORS_FLAGS_UNDEF;
    enum MyCSS_SELECTORS_FLAGS_SELECTOR_BAD = mycss_selectors_flags.MyCSS_SELECTORS_FLAGS_SELECTOR_BAD;
    bool mycss_property_parser_animation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_shared_background_clip(mycss_entry_t*, mycss_token_t*, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_left_bracket_ident_vertical_bar(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_undef_create(mycss_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_number_sign_name_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_shared_background_size(mycss_entry_t*, mycss_token_t*, void*, uint*, mycore_string_t*) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_colon(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_number_sign_name_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_current_create(mycss_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_right_curly_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_animation_delay(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_digit(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_dir_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_colon_colon(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_animation_direction(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_stop_t = mycss_values_color_stop;
    bool mycss_selectors_state_simple_selector_colon_colon_function(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_stop_list_t = mycss_values_color_stop_list;
    void* mycss_selectors_value_pseudo_class_function_drop_create(mycss_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_dollar_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_animation_duration(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_values_border_t* mycss_values_destroy_border(mycss_entry_t*, mycss_values_border_t*, bool) @nogc nothrow;
    alias mycss_units_index_static_entry_t = mycss_units_index_static_entry;
    struct mycss_units_index_static_entry
    {
        const(char)* name;
        size_t name_length;
        mycss_units_type_t unit_type;
        size_t next;
        size_t curr;
    }
    void mycss_property_shared_destroy_string(mycore_string_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_state_letter_u(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_state_letter_u_next(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_has_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_colon_function(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_animation_fill_mode(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_apostrophe(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_animation_iteration_count(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_name_start_code_point(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_font_family_entry_t = mycss_values_font_family_entry;
    void* mycss_selectors_value_pseudo_class_function_lang_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_full_stop(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_font_family_t = mycss_values_font_family;
    bool mycss_property_parser_animation_name(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_selectors_type_t = mycss_selectors_type;
    size_t mycss_tokenizer_state_apostrophe_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_matches_create(mycss_entry_t*, bool) @nogc nothrow;
    enum mycss_selectors_type
    {
        MyCSS_SELECTORS_TYPE_UNDEF = 0,
        MyCSS_SELECTORS_TYPE_ELEMENT = 1,
        MyCSS_SELECTORS_TYPE_ID = 2,
        MyCSS_SELECTORS_TYPE_CLASS = 3,
        MyCSS_SELECTORS_TYPE_ATTRIBUTE = 4,
        MyCSS_SELECTORS_TYPE_PSEUDO_CLASS_FUNCTION = 5,
        MyCSS_SELECTORS_TYPE_PSEUDO_CLASS = 6,
        MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT_FUNCTION = 7,
        MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT = 8,
        MyCSS_SELECTORS_TYPE_LAST_ENTRY = 9,
    }
    enum MyCSS_SELECTORS_TYPE_UNDEF = mycss_selectors_type.MyCSS_SELECTORS_TYPE_UNDEF;
    enum MyCSS_SELECTORS_TYPE_ELEMENT = mycss_selectors_type.MyCSS_SELECTORS_TYPE_ELEMENT;
    enum MyCSS_SELECTORS_TYPE_ID = mycss_selectors_type.MyCSS_SELECTORS_TYPE_ID;
    enum MyCSS_SELECTORS_TYPE_CLASS = mycss_selectors_type.MyCSS_SELECTORS_TYPE_CLASS;
    enum MyCSS_SELECTORS_TYPE_ATTRIBUTE = mycss_selectors_type.MyCSS_SELECTORS_TYPE_ATTRIBUTE;
    enum MyCSS_SELECTORS_TYPE_PSEUDO_CLASS_FUNCTION = mycss_selectors_type.MyCSS_SELECTORS_TYPE_PSEUDO_CLASS_FUNCTION;
    enum MyCSS_SELECTORS_TYPE_PSEUDO_CLASS = mycss_selectors_type.MyCSS_SELECTORS_TYPE_PSEUDO_CLASS;
    enum MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT_FUNCTION = mycss_selectors_type.MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT_FUNCTION;
    enum MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT = mycss_selectors_type.MyCSS_SELECTORS_TYPE_PSEUDO_ELEMENT;
    enum MyCSS_SELECTORS_TYPE_LAST_ENTRY = mycss_selectors_type.MyCSS_SELECTORS_TYPE_LAST_ENTRY;
    size_t mycss_tokenizer_end_state_vertical_line(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_vertical_bar(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_animation_play_state(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_tilde(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_font_t = mycss_values_font;


    void* mycss_selectors_value_pseudo_class_function_not_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_ident(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_animation_timing_function(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_simple_selector_ident_vertical_bar(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_child_create(mycss_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_state_delim_single_code_point(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_left_parenthesis(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_appearance(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_shared_after_attr_modifier(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_right_parenthesis(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_type_length_percentage_entry_t = mycss_values_type_length_percentage_entry;
    void* mycss_selectors_value_pseudo_class_function_nth_column_create(mycss_entry_t*, bool) @nogc nothrow;
    alias mycss_entry_t = mycss_entry;
    bool mycss_selectors_state_shared_after_attribute_value(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_last_child_create(mycss_entry_t*, bool) @nogc nothrow;
    alias mycss_values_type_list_t = mycss_values_type_list;
    bool mycss_property_parser_backface_visibility(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_last_column_create(mycss_entry_t*, bool) @nogc nothrow;
    alias mycss_values_shorthand_two_type_t = mycss_values_shorthand_two_type;
    size_t mycss_tokenizer_state_asterisk(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_background(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_left_bracket_after_wq_name_attr(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_background_attachment(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_entry_type_t = mycss_entry_type;
    enum mycss_entry_type
    {
        MyCSS_ENTRY_TYPE_CLEAN = 0,
        MyCSS_ENTRY_TYPE_END = 1,
    }
    enum MyCSS_ENTRY_TYPE_CLEAN = mycss_entry_type.MyCSS_ENTRY_TYPE_CLEAN;
    enum MyCSS_ENTRY_TYPE_END = mycss_entry_type.MyCSS_ENTRY_TYPE_END;
    void* mycss_selectors_value_pseudo_class_function_nth_last_of_type_create(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_selectors_state_shared_after_attr_matcher(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_shorthand_four_t = mycss_values_shorthand_four;
    size_t mycss_tokenizer_end_global_state_numeric(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_background_clip(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_shorthand_two_t = mycss_values_shorthand_two;
    size_t mycss_tokenizer_state_plus_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_of_type_create(mycss_entry_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_plus_sign_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_numeric_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_background_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_contains_create(mycss_entry_t*, bool) @nogc nothrow;
    alias mycss_values_percentage_t = mycss_values_percentage;
    mycss_units_type_t mycss_units_type_by_name(const(char)*, size_t) @nogc nothrow;
    alias mycss_values_length_t = mycss_values_length;
    bool mycss_property_parser_background_image(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_numeric_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_number_t = mycss_values_number;
    size_t mycss_tokenizer_state_comma(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_background_origin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_numeric_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    const(mycss_units_index_static_entry_t)* mycss_units_index_entry_by_name(const(char)*, size_t) @nogc nothrow;
    alias mycss_values_angle_t = mycss_values_angle;
    const(char)* mycss_units_name_by_type(mycss_units_type_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_undef_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_background_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_hyphen_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_background_repeat(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_digit(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_values_resolution_t = mycss_values_resolution;
    void* mycss_selectors_value_pseudo_class_function_current_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_background_size(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_t = mycss;
    alias mycss_values_custom_ident_t = mycss_values_custom_ident;
    size_t mycss_tokenizer_state_hyphen_minus_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_dot(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_dir_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_decimal(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_selectors_sub_type_t = mycss_selectors_sub_type;
    size_t mycss_tokenizer_state_hyphen_minus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    enum mycss_selectors_sub_type
    {
        MyCSS_SELECTORS_SUB_TYPE_UNDEF = 0,
        MyCSS_SELECTORS_SUB_TYPE_UNKNOWN = 1,
    }
    enum MyCSS_SELECTORS_SUB_TYPE_UNDEF = mycss_selectors_sub_type.MyCSS_SELECTORS_SUB_TYPE_UNDEF;
    enum MyCSS_SELECTORS_SUB_TYPE_UNKNOWN = mycss_selectors_sub_type.MyCSS_SELECTORS_SUB_TYPE_UNKNOWN;
    void* mycss_selectors_value_pseudo_class_function_drop_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_bookmark_label(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_hyphen_minus_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_has_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_e(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct mycss_values_shorthand_two_type
    {
        void* one;
        void* two;
        uint type_one;
        uint type_two;
    }
    bool mycss_property_parser_bookmark_level(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_hyphen_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_lang_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    alias mycss_token_t = mycss_token;
    bool mycss_property_parser_bookmark_state(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_e_plus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_number_e_decimal(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_matches_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    alias mycss_tokenizer_state_t = mycss_tokenizer_state;
    enum mycss_tokenizer_state
    {
        MyCSS_TOKENIZER_STATE_DATA = 0,
        MyCSS_TOKENIZER_STATE_APOSTROPHE = 1,
        MyCSS_TOKENIZER_STATE_ASTERISK = 2,
        MyCSS_TOKENIZER_STATE_CIRCUMFLEX_ACCENT = 3,
        MyCSS_TOKENIZER_STATE_COLON = 4,
        MyCSS_TOKENIZER_STATE_COMMA = 5,
        MyCSS_TOKENIZER_STATE_COMMERCIAL_AT = 6,
        MyCSS_TOKENIZER_STATE_DELIM_SINGLE_CODE_POINT = 7,
        MyCSS_TOKENIZER_STATE_DIGIT = 8,
        MyCSS_TOKENIZER_STATE_DOLLAR_SIGN = 9,
        MyCSS_TOKENIZER_STATE_FULL_STOP = 10,
        MyCSS_TOKENIZER_STATE_HYPHEN_MINUS = 11,
        MyCSS_TOKENIZER_STATE_LEFT_CURLY_BRACKET = 12,
        MyCSS_TOKENIZER_STATE_LEFT_PARENTHESIS = 13,
        MyCSS_TOKENIZER_STATE_LEFT_SQUARE_BRACKET = 14,
        MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN = 15,
        MyCSS_TOKENIZER_STATE_NAME_START_CODE_POINT = 16,
        MyCSS_TOKENIZER_STATE_NUMBER_SIGN = 17,
        MyCSS_TOKENIZER_STATE_PLUS_SIGN = 18,
        MyCSS_TOKENIZER_STATE_QUOTATION_MARK = 19,
        MyCSS_TOKENIZER_STATE_REVERSE_SOLIDUS = 20,
        MyCSS_TOKENIZER_STATE_RIGHT_CURLY_BRACKET = 21,
        MyCSS_TOKENIZER_STATE_RIGHT_PARENTHESIS = 22,
        MyCSS_TOKENIZER_STATE_RIGHT_SQUARE_BRACKET = 23,
        MyCSS_TOKENIZER_STATE_SEMICOLON = 24,
        MyCSS_TOKENIZER_STATE_SOLIDUS = 25,
        MyCSS_TOKENIZER_STATE_TILDE = 26,
        MyCSS_TOKENIZER_STATE_VERTICAL_LINE = 27,
        MyCSS_TOKENIZER_STATE_WHITESPACE = 28,
        MyCSS_TOKENIZER_STATE_QUOTATION_MARK_BACK = 29,
        MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_BACK = 30,
        MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_RSOLIDUS = 31,
        MyCSS_TOKENIZER_STATE_APOSTROPHE_BACK = 32,
        MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_RSOLIDUS = 33,
        MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS = 34,
        MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS_RSOLIDUS = 35,
        MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_FULL_STOP = 36,
        MyCSS_TOKENIZER_STATE_SOLIDUS_COMMENT_END = 37,
        MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_RSOLIDUS = 38,
        MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_BACK = 39,
        MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS = 40,
        MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS_RSOLIDUS = 41,
        MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS = 42,
        MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS_MINUS = 43,
        MyCSS_TOKENIZER_STATE_PLUS_SIGN_FULL_STOP = 44,
        MyCSS_TOKENIZER_STATE_LETTER_U = 45,
        MyCSS_TOKENIZER_STATE_LETTER_U_NEXT = 46,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DIGIT = 80,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DECIMAL = 81,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DOT = 82,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E = 83,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_PLUS_MINUS = 84,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_DECIMAL = 85,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC = 86,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_RSOLIDUS = 87,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS = 88,
        MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS_RSOLIDUS = 89,
        MyCSS_TOKENIZER_GLOBAL_STATE_IDENT = 90,
        MyCSS_TOKENIZER_GLOBAL_STATE_URL = 91,
        MyCSS_TOKENIZER_GLOBAL_STATE_URL_STRING_BACK = 92,
        MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER = 93,
        MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER_WHITESPACE = 94,
        MyCSS_TOKENIZER_GLOBAL_STATE_URL_RSOLIDUS = 95,
        MyCSS_TOKENIZER_GLOBAL_STATE_BAD_URL = 96,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED = 97,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS = 98,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS_R = 99,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED = 100,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS = 101,
        MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS_R = 102,
        MyCSS_TOKENIZER_GLOBAL_STATE_NAME = 103,
        MyCSS_TOKENIZER_GLOBAL_STATE_NAME_RSOLIDUS = 104,
        MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_BEFORE = 105,
        MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE = 106,
        MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_QUESTION = 107,
        MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_MINUS = 108,
        MyCSS_TOKENIZER_GLOBAL_BACK = 128,
        MyCSS_TOKENIZER_STATE_FIRST_ENTRY = 0,
        MyCSS_TOKENIZER_STATE_LAST_ENTRY = 256,
    }
    enum MyCSS_TOKENIZER_STATE_DATA = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_DATA;
    enum MyCSS_TOKENIZER_STATE_APOSTROPHE = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_APOSTROPHE;
    enum MyCSS_TOKENIZER_STATE_ASTERISK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_ASTERISK;
    enum MyCSS_TOKENIZER_STATE_CIRCUMFLEX_ACCENT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_CIRCUMFLEX_ACCENT;
    enum MyCSS_TOKENIZER_STATE_COLON = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COLON;
    enum MyCSS_TOKENIZER_STATE_COMMA = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMA;
    enum MyCSS_TOKENIZER_STATE_COMMERCIAL_AT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMERCIAL_AT;
    enum MyCSS_TOKENIZER_STATE_DELIM_SINGLE_CODE_POINT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_DELIM_SINGLE_CODE_POINT;
    enum MyCSS_TOKENIZER_STATE_DIGIT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_DIGIT;
    enum MyCSS_TOKENIZER_STATE_DOLLAR_SIGN = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_DOLLAR_SIGN;
    enum MyCSS_TOKENIZER_STATE_FULL_STOP = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_FULL_STOP;
    enum MyCSS_TOKENIZER_STATE_HYPHEN_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_HYPHEN_MINUS;
    enum MyCSS_TOKENIZER_STATE_LEFT_CURLY_BRACKET = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LEFT_CURLY_BRACKET;
    enum MyCSS_TOKENIZER_STATE_LEFT_PARENTHESIS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LEFT_PARENTHESIS;
    enum MyCSS_TOKENIZER_STATE_LEFT_SQUARE_BRACKET = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LEFT_SQUARE_BRACKET;
    enum MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN;
    enum MyCSS_TOKENIZER_STATE_NAME_START_CODE_POINT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_NAME_START_CODE_POINT;
    enum MyCSS_TOKENIZER_STATE_NUMBER_SIGN = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_NUMBER_SIGN;
    enum MyCSS_TOKENIZER_STATE_PLUS_SIGN = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_PLUS_SIGN;
    enum MyCSS_TOKENIZER_STATE_QUOTATION_MARK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_QUOTATION_MARK;
    enum MyCSS_TOKENIZER_STATE_REVERSE_SOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_REVERSE_SOLIDUS;
    enum MyCSS_TOKENIZER_STATE_RIGHT_CURLY_BRACKET = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_RIGHT_CURLY_BRACKET;
    enum MyCSS_TOKENIZER_STATE_RIGHT_PARENTHESIS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_RIGHT_PARENTHESIS;
    enum MyCSS_TOKENIZER_STATE_RIGHT_SQUARE_BRACKET = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_RIGHT_SQUARE_BRACKET;
    enum MyCSS_TOKENIZER_STATE_SEMICOLON = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_SEMICOLON;
    enum MyCSS_TOKENIZER_STATE_SOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_SOLIDUS;
    enum MyCSS_TOKENIZER_STATE_TILDE = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_TILDE;
    enum MyCSS_TOKENIZER_STATE_VERTICAL_LINE = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_VERTICAL_LINE;
    enum MyCSS_TOKENIZER_STATE_WHITESPACE = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_WHITESPACE;
    enum MyCSS_TOKENIZER_STATE_QUOTATION_MARK_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_QUOTATION_MARK_BACK;
    enum MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_BACK;
    enum MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_NUMBER_SIGN_NAME_RSOLIDUS;
    enum MyCSS_TOKENIZER_STATE_APOSTROPHE_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_APOSTROPHE_BACK;
    enum MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_RSOLIDUS;
    enum MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS;
    enum MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_MINUS_RSOLIDUS;
    enum MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_FULL_STOP = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_HYPHEN_MINUS_FULL_STOP;
    enum MyCSS_TOKENIZER_STATE_SOLIDUS_COMMENT_END = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_SOLIDUS_COMMENT_END;
    enum MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_RSOLIDUS;
    enum MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_BACK;
    enum MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS;
    enum MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_COMMERCIAL_AT_MINUS_RSOLIDUS;
    enum MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS;
    enum MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LESS_THAN_SIGN_MINUS_MINUS;
    enum MyCSS_TOKENIZER_STATE_PLUS_SIGN_FULL_STOP = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_PLUS_SIGN_FULL_STOP;
    enum MyCSS_TOKENIZER_STATE_LETTER_U = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LETTER_U;
    enum MyCSS_TOKENIZER_STATE_LETTER_U_NEXT = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LETTER_U_NEXT;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DIGIT = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DIGIT;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DECIMAL = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DECIMAL;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DOT = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_DOT;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_PLUS_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_PLUS_MINUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_DECIMAL = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMBER_E_DECIMAL;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NUMERIC_MINUS_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_IDENT = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_IDENT;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_URL = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_URL;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_URL_STRING_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_URL_STRING_BACK;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER_WHITESPACE = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_URL_AFTER_WHITESPACE;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_URL_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_URL_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_BAD_URL = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_BAD_URL;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS_R = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_DOUBLE_QUOTED_RSOLIDUS_R;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS_R = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_STRING_SINGLE_QUOTED_RSOLIDUS_R;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NAME = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NAME;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_NAME_RSOLIDUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_NAME_RSOLIDUS;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_BEFORE = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_BEFORE;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_QUESTION = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_QUESTION;
    enum MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_MINUS = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_STATE_UNICODE_RANGE_MINUS;
    enum MyCSS_TOKENIZER_GLOBAL_BACK = mycss_tokenizer_state.MyCSS_TOKENIZER_GLOBAL_BACK;
    enum MyCSS_TOKENIZER_STATE_FIRST_ENTRY = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_FIRST_ENTRY;
    enum MyCSS_TOKENIZER_STATE_LAST_ENTRY = mycss_tokenizer_state.MyCSS_TOKENIZER_STATE_LAST_ENTRY;
    size_t mycss_tokenizer_state_full_stop(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_not_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_border_block_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_child_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_ident(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_block_end_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_column_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_solidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_block_end_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_selectors_sub_type_pseudo_class_function
    {
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNDEF = 0,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNKNOWN = 1,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CONTAINS = 2,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CURRENT = 3,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DIR = 4,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DROP = 5,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_HAS = 6,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LANG = 7,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_MATCHES = 8,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NOT = 9,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_CHILD = 10,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_COLUMN = 11,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_CHILD = 12,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_COLUMN = 13,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_OF_TYPE = 14,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_OF_TYPE = 15,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LAST_ENTRY = 16,
    }
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNDEF = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNDEF;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNKNOWN = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_UNKNOWN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CONTAINS = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CONTAINS;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CURRENT = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_CURRENT;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DIR = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DIR;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DROP = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_DROP;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_HAS = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_HAS;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LANG = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LANG;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_MATCHES = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_MATCHES;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NOT = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NOT;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_CHILD = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_CHILD;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_COLUMN = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_COLUMN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_CHILD = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_CHILD;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_COLUMN = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_COLUMN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_OF_TYPE = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_LAST_OF_TYPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_OF_TYPE = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_NTH_OF_TYPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LAST_ENTRY = mycss_selectors_sub_type_pseudo_class_function.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUNCTION_LAST_ENTRY;
    void* mycss_selectors_value_pseudo_class_function_nth_last_child_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_border_block_end_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_solidus_comment_end(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_url(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    alias mycss_selectors_sub_type_pseudo_class_function_t = mycss_selectors_sub_type_pseudo_class_function;
    size_t mycss_tokenizer_end_global_state_url_string_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_last_column_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    bool mycss_property_parser_border_block_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_last_of_type_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_colon(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_block_start_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_shorthand_four
    {
        mycss_declaration_entry_t* one;
        mycss_declaration_entry_t* two;
        mycss_declaration_entry_t* three;
        mycss_declaration_entry_t* four;
    }
    size_t mycss_tokenizer_end_global_state_url_after(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_url_after_whitespace(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_block_start_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_nth_of_type_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    void* mycss_selectors_value_pseudo_class_function_contains_destroy(mycss_entry_t*, void*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_semicolon(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_block_start_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_url_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_bottom(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_bad_url(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_bottom_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_less_than_sign(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_less_than_sign_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_bottom_left_radius(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_name(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_bottom_right_radius(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_less_than_sign_minus_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_name_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_bottom_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_shorthand_two
    {
        mycss_declaration_entry_t* one;
        mycss_declaration_entry_t* two;
    }
    bool mycss_property_parser_border_bottom_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_commercial_at(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_commercial_at_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_string_double_quoted(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_collapse(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_commercial_at_minus_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_string_double_quoted_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_string_single_quoted(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_commercial_at_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_image(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_string_single_quoted_rsolidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct mycss_values_type_list
    {
        uint* entries;
        size_t entries_length;
    }
    bool mycss_property_parser_border_image_outset(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_commercial_at_back(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_entry_t* mycss_entry_create() @nogc nothrow;
    bool mycss_property_parser_border_image_repeat(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_entry_init(mycss_t*, mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_unicode_range_before(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_image_slice(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_left_square_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_reverse_solidus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t mycss_entry_clean(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_image_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_unicode_range(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_inline_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_end_global_state_unicode_range_question(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mystatus_t mycss_entry_clean_all(mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_state_right_square_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    union mycss_values_type_length_percentage_union
    {
        mycss_values_percentage_t* percentage;
        mycss_values_length_t* length;
    }
    size_t mycss_tokenizer_end_global_state_unicode_range_minus(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_entry_t* mycss_entry_destroy(mycss_entry_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_inline_end_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_circumflex_accent(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_inline_end_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_entry_end(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_inline_end_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_left_curly_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    enum mycss_selectors_sub_type_pseudo_class
    {
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNDEF = 0,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNKNOWN = 1,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ACTIVE = 2,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ANY_LINK = 3,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_BLANK = 4,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CHECKED = 5,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CURRENT = 6,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DEFAULT = 7,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DISABLED = 8,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DROP = 9,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_EMPTY = 10,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ENABLED = 11,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_CHILD = 12,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_OF_TYPE = 13,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FOCUS = 14,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUTURE = 15,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_HOVER = 16,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_IN_RANGE = 17,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INDETERMINATE = 18,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INVALID = 19,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_CHILD = 20,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_OF_TYPE = 21,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LINK = 22,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_CHILD = 23,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_OF_TYPE = 24,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OPTIONAL = 25,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OUT_OF_RANGE = 26,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PAST = 27,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PLACEHOLDER_SHOWN = 28,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_ONLY = 29,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_WRITE = 30,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_REQUIRED = 31,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ROOT = 32,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_SCOPE = 33,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_TARGET = 34,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_USER_ERROR = 35,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VALID = 36,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VISITED = 37,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_ENTRY = 38,
    }
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNDEF = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNDEF;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNKNOWN = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_UNKNOWN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ACTIVE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ACTIVE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ANY_LINK = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ANY_LINK;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_BLANK = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_BLANK;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CHECKED = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CHECKED;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CURRENT = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_CURRENT;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DEFAULT = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DEFAULT;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DISABLED = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DISABLED;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DROP = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_DROP;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_EMPTY = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_EMPTY;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ENABLED = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ENABLED;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_CHILD = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_CHILD;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_OF_TYPE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FIRST_OF_TYPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FOCUS = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FOCUS;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUTURE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_FUTURE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_HOVER = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_HOVER;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_IN_RANGE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_IN_RANGE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INDETERMINATE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INDETERMINATE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INVALID = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_INVALID;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_CHILD = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_CHILD;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_OF_TYPE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_OF_TYPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LINK = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LINK;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_CHILD = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_CHILD;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_OF_TYPE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ONLY_OF_TYPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OPTIONAL = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OPTIONAL;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OUT_OF_RANGE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_OUT_OF_RANGE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PAST = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PAST;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PLACEHOLDER_SHOWN = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_PLACEHOLDER_SHOWN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_ONLY = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_ONLY;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_WRITE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_READ_WRITE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_REQUIRED = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_REQUIRED;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ROOT = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_ROOT;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_SCOPE = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_SCOPE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_TARGET = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_TARGET;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_USER_ERROR = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_USER_ERROR;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VALID = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VALID;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VISITED = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_VISITED;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_ENTRY = mycss_selectors_sub_type_pseudo_class.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_CLASS_LAST_ENTRY;
    alias mycss_selectors_sub_type_pseudo_class_t = mycss_selectors_sub_type_pseudo_class;
    bool mycss_property_parser_border_inline_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_inline_start_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_right_curly_bracket(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    struct mycss_values_type_length_percentage_entry
    {
        mycss_values_type_length_percentage_union value;
        uint type;
    }
    bool mycss_property_parser_border_inline_start_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_selectors_t* mycss_entry_selectors(mycss_entry_t*) @nogc nothrow;
    size_t mycss_tokenizer_state_digit(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_inline_start_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_token_ready_callback_f mycss_entry_token_ready_callback(mycss_entry_t*, mycss_token_ready_callback_f) @nogc nothrow;
    bool mycss_property_parser_border_left(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_left_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_letter_u(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_left_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_letter_u_next(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_entry_token_count(mycss_entry_t*) @nogc nothrow;
    struct mycss_values_number
    {
        static union _Anonymous_7
        {
            int i;
            float f;
        }
        _Anonymous_7 value;
        bool is_float;
    }
    bool mycss_property_parser_border_left_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycore_incoming_buffer_t* mycss_entry_incoming_buffer_current(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_radius(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_name_start_code_point(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycore_incoming_buffer_t* mycss_entry_incoming_buffer_first(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_right(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_right_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycore_string_t* mycss_entry_string_create_and_init(mycss_entry_t*, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_vertical_line(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    size_t mycss_tokenizer_state_tilde(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    bool mycss_property_parser_border_right_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_right_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_stylesheet_t* mycss_entry_stylesheet(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_spacing(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    size_t mycss_tokenizer_state_delim_single_code_point(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t) @nogc nothrow;
    mycss_selectors_list_t* mycss_entry_current_selectors_list(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_border_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_entry_parser_set(mycss_entry_t*, mycss_parser_token_f) @nogc nothrow;
    bool mycss_property_parser_border_top(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_top_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_entry_parser_switch_set(mycss_entry_t*, mycss_parser_token_f) @nogc nothrow;
    struct mycss_values_length
    {
        static union _Anonymous_8
        {
            int i;
            float f;
        }
        _Anonymous_8 value;
        bool is_float;
        mycss_units_type_t type;
    }
    void mycss_entry_parser_original_set(mycss_entry_t*, mycss_parser_token_f) @nogc nothrow;
    bool mycss_property_parser_border_top_left_radius(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_top_right_radius(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_border_top_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_entry_parser_list_t* mycss_entry_parser_list_create_and_init(size_t) @nogc nothrow;
    bool mycss_property_parser_border_top_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_entry_parser_list_clean(mycss_entry_parser_list_t*) @nogc nothrow;
    bool mycss_property_parser_border_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_entry_parser_list_t* mycss_entry_parser_list_destroy(mycss_entry_parser_list_t*, bool) @nogc nothrow;
    bool mycss_property_parser_bottom(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_box_decoration_break(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mystatus_t mycss_entry_parser_list_push(mycss_entry_t*, mycss_parser_token_f, mycss_parser_token_f, mycss_token_type_t, bool) @nogc nothrow;
    bool mycss_property_parser_box_shadow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_box_sizing(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_box_suppress(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_percentage
    {
        static union _Anonymous_9
        {
            int i;
            float f;
        }
        _Anonymous_9 value;
        bool is_float;
    }
    bool mycss_property_parser_break_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_break_before(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    void mycss_entry_parser_list_pop(mycss_entry_t*) @nogc nothrow;
    size_t mycss_entry_parser_list_length(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_break_inside(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_caption_side(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_token_type_t mycss_entry_parser_list_current_ending_token_type(mycss_entry_t*) @nogc nothrow;
    mycss_parser_token_f mycss_entry_parser_list_current_parser(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_caret(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_caret_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    mycss_parser_token_f mycss_entry_parser_list_current_parser_switch(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_caret_shape(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_entry_parser_list_current_is_local(mycss_entry_t*) @nogc nothrow;
    bool mycss_property_parser_clear(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_clear_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_angle
    {
        static union _Anonymous_10
        {
            int i;
            float f;
        }
        _Anonymous_10 value;
        bool is_float;
        mycss_units_type_t type;
    }
    bool mycss_property_parser_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_color_adjust(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_color_interpolation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_color_interpolation_filters(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_color_rendering(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_count(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_fill(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_gap(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_selectors_sub_type_pseudo_element
    {
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNDEF = 0,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNKNOWN = 1,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_AFTER = 2,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BACKDROP = 3,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BEFORE = 4,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LETTER = 5,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LINE = 6,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_GRAMMAR_ERROR = 7,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_MARKER = 8,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_PLACEHOLDER = 9,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SELECTION = 10,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SPELLING_ERROR = 11,
        MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_LAST_ENTRY = 12,
    }
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNDEF = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNDEF;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNKNOWN = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_UNKNOWN;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_AFTER = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_AFTER;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BACKDROP = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BACKDROP;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BEFORE = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_BEFORE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LETTER = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LETTER;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LINE = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_FIRST_LINE;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_GRAMMAR_ERROR = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_GRAMMAR_ERROR;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_MARKER = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_MARKER;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_PLACEHOLDER = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_PLACEHOLDER;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SELECTION = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SELECTION;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SPELLING_ERROR = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_SPELLING_ERROR;
    enum MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_LAST_ENTRY = mycss_selectors_sub_type_pseudo_element.MyCSS_SELECTORS_SUB_TYPE_PSEUDO_ELEMENT_LAST_ENTRY;
    alias mycss_selectors_sub_type_pseudo_element_t = mycss_selectors_sub_type_pseudo_element;
    bool mycss_property_parser_column_rule(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_rule_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_rule_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_resolution
    {
        static union _Anonymous_11
        {
            int i;
            float f;
        }
        _Anonymous_11 value;
        bool is_float;
        mycss_units_type_t type;
    }
    bool mycss_property_parser_column_rule_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_span(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_column_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_columns(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_contain(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_content(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_continue(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_counter_increment(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_cue(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_custom_ident
    {
        mycore_string_t str;
    }
    bool mycss_property_parser_cue_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_cue_before(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_cursor(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_direction(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_display(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_empty_cells(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_selectors_function_drop_type
    {
        MyCSS_SELECTORS_FUNCTION_DROP_TYPE_UNDEF = 0,
        MyCSS_SELECTORS_FUNCTION_DROP_TYPE_ACTIVE = 1,
        MyCSS_SELECTORS_FUNCTION_DROP_TYPE_VALID = 2,
        MyCSS_SELECTORS_FUNCTION_DROP_TYPE_INVALID = 4,
    }
    enum MyCSS_SELECTORS_FUNCTION_DROP_TYPE_UNDEF = mycss_selectors_function_drop_type.MyCSS_SELECTORS_FUNCTION_DROP_TYPE_UNDEF;
    enum MyCSS_SELECTORS_FUNCTION_DROP_TYPE_ACTIVE = mycss_selectors_function_drop_type.MyCSS_SELECTORS_FUNCTION_DROP_TYPE_ACTIVE;
    enum MyCSS_SELECTORS_FUNCTION_DROP_TYPE_VALID = mycss_selectors_function_drop_type.MyCSS_SELECTORS_FUNCTION_DROP_TYPE_VALID;
    enum MyCSS_SELECTORS_FUNCTION_DROP_TYPE_INVALID = mycss_selectors_function_drop_type.MyCSS_SELECTORS_FUNCTION_DROP_TYPE_INVALID;
    alias mycss_selectors_function_drop_type_t = mycss_selectors_function_drop_type;
    bool mycss_property_parser_fill(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_type_t = mycss_values_color_type;
    enum mycss_values_color_type
    {
        MyCSS_VALUES_COLOR_TYPE_UNDEF = 0,
        MyCSS_VALUES_COLOR_TYPE_RGB = 1,
        MyCSS_VALUES_COLOR_TYPE_RGBA = 2,
        MyCSS_VALUES_COLOR_TYPE_HSL = 3,
        MyCSS_VALUES_COLOR_TYPE_HSLA = 4,
        MyCSS_VALUES_COLOR_TYPE_HWB = 5,
        MyCSS_VALUES_COLOR_TYPE_GRAY = 6,
        MyCSS_VALUES_COLOR_TYPE_DEVICE_CMYK = 7,
        MyCSS_VALUES_COLOR_TYPE_MOD = 8,
        MyCSS_VALUES_COLOR_TYPE_HEX = 9,
        MyCSS_VALUES_COLOR_TYPE_NAMED = 10,
        MyCSS_VALUES_COLOR_TYPE_CURRENTCOLOR = 11,
    }
    enum MyCSS_VALUES_COLOR_TYPE_UNDEF = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_UNDEF;
    enum MyCSS_VALUES_COLOR_TYPE_RGB = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_RGB;
    enum MyCSS_VALUES_COLOR_TYPE_RGBA = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_RGBA;
    enum MyCSS_VALUES_COLOR_TYPE_HSL = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_HSL;
    enum MyCSS_VALUES_COLOR_TYPE_HSLA = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_HSLA;
    enum MyCSS_VALUES_COLOR_TYPE_HWB = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_HWB;
    enum MyCSS_VALUES_COLOR_TYPE_GRAY = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_GRAY;
    enum MyCSS_VALUES_COLOR_TYPE_DEVICE_CMYK = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_DEVICE_CMYK;
    enum MyCSS_VALUES_COLOR_TYPE_MOD = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_MOD;
    enum MyCSS_VALUES_COLOR_TYPE_HEX = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_HEX;
    enum MyCSS_VALUES_COLOR_TYPE_NAMED = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_NAMED;
    enum MyCSS_VALUES_COLOR_TYPE_CURRENTCOLOR = mycss_values_color_type.MyCSS_VALUES_COLOR_TYPE_CURRENTCOLOR;
    bool mycss_property_parser_fill_opacity(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_fill_rule(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_flex(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_color_function_id_t = mycss_values_color_function_id;
    enum mycss_values_color_function_id
    {
        MyCSS_VALUES_COLOR_FUNCTION_ID_UNDEF = 0,
        MyCSS_VALUES_COLOR_FUNCTION_ID_A = 1,
        MyCSS_VALUES_COLOR_FUNCTION_ID_ALPHA = 2,
        MyCSS_VALUES_COLOR_FUNCTION_ID_BLACKNESS = 3,
        MyCSS_VALUES_COLOR_FUNCTION_ID_BLEND = 4,
        MyCSS_VALUES_COLOR_FUNCTION_ID_BLENDA = 5,
        MyCSS_VALUES_COLOR_FUNCTION_ID_BLUE = 6,
        MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR = 7,
        MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR_MOD = 8,
        MyCSS_VALUES_COLOR_FUNCTION_ID_CONTRAST = 9,
        MyCSS_VALUES_COLOR_FUNCTION_ID_DEVICE_CMYK = 10,
        MyCSS_VALUES_COLOR_FUNCTION_ID_GRAY = 11,
        MyCSS_VALUES_COLOR_FUNCTION_ID_GREEN = 12,
        MyCSS_VALUES_COLOR_FUNCTION_ID_HSL = 13,
        MyCSS_VALUES_COLOR_FUNCTION_ID_HSLA = 14,
        MyCSS_VALUES_COLOR_FUNCTION_ID_HUE = 15,
        MyCSS_VALUES_COLOR_FUNCTION_ID_HWB = 16,
        MyCSS_VALUES_COLOR_FUNCTION_ID_LIGHTNESS = 17,
        MyCSS_VALUES_COLOR_FUNCTION_ID_RED = 18,
        MyCSS_VALUES_COLOR_FUNCTION_ID_RGB = 19,
        MyCSS_VALUES_COLOR_FUNCTION_ID_RGBA = 20,
        MyCSS_VALUES_COLOR_FUNCTION_ID_SATURATION = 21,
        MyCSS_VALUES_COLOR_FUNCTION_ID_SHADE = 22,
        MyCSS_VALUES_COLOR_FUNCTION_ID_TINT = 23,
        MyCSS_VALUES_COLOR_FUNCTION_ID_WHITENESS = 24,
        MyCSS_VALUES_COLOR_FUNCTION_ID_LAST_ENTRY = 26,
    }
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_UNDEF = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_UNDEF;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_A = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_A;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_ALPHA = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_ALPHA;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_BLACKNESS = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_BLACKNESS;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_BLEND = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_BLEND;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_BLENDA = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_BLENDA;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_BLUE = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_BLUE;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR_MOD = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_COLOR_MOD;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_CONTRAST = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_CONTRAST;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_DEVICE_CMYK = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_DEVICE_CMYK;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_GRAY = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_GRAY;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_GREEN = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_GREEN;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_HSL = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_HSL;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_HSLA = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_HSLA;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_HUE = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_HUE;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_HWB = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_HWB;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_LIGHTNESS = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_LIGHTNESS;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_RED = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_RED;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_RGB = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_RGB;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_RGBA = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_RGBA;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_SATURATION = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_SATURATION;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_SHADE = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_SHADE;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_TINT = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_TINT;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_WHITENESS = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_WHITENESS;
    enum MyCSS_VALUES_COLOR_FUNCTION_ID_LAST_ENTRY = mycss_values_color_function_id.MyCSS_VALUES_COLOR_FUNCTION_ID_LAST_ENTRY;
    bool mycss_property_parser_flex_basis(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_flex_direction(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_flex_flow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_selectors_specificity
    {
        uint a;
        uint b;
        uint c;
    }
    bool mycss_property_parser_flex_grow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_flex_shrink(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_flex_wrap(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_float(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_float_displace(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_selectors
    {
        mycss_entry_t* ref_entry;
        mycss_selectors_entry_t** entry;
        mycss_selectors_entry_t* entry_last;
        mycss_selectors_list_t** list;
        mycss_selectors_list_t* list_last;
        mycss_selectors_specificity_t* specificity;
        mycss_selectors_combinator_t* combinator;
        mycss_token_type_t ending_token;
        mcobject_t* mcobject_entries;
        mcobject_t* mcobject_list_entries;
    }
    bool mycss_property_parser_font_family(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_feature_settings(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_kerning(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_language_override(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_values_color_type_value
    {
        MyCSS_VALUES_COLOR_TYPE_VALUE_UNDEF = 0,
        MyCSS_VALUES_COLOR_TYPE_VALUE_NUMBER = 1,
        MyCSS_VALUES_COLOR_TYPE_VALUE_PERCENTAGE = 2,
        MyCSS_VALUES_COLOR_TYPE_VALUE_ANGLE = 3,
        MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_8 = 4,
        MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_6 = 5,
        MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_4 = 6,
        MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_3 = 7,
    }
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_UNDEF = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_UNDEF;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_NUMBER = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_NUMBER;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_PERCENTAGE = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_PERCENTAGE;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_ANGLE = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_ANGLE;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_8 = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_8;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_6 = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_6;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_4 = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_4;
    enum MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_3 = mycss_values_color_type_value.MyCSS_VALUES_COLOR_TYPE_VALUE_HEX_3;
    alias mycss_values_color_type_value_t = mycss_values_color_type_value;
    bool mycss_property_parser_font_size(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_size_adjust(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_stretch(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_synthesis(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant_alternates(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant_caps(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant_east_asian(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_token_type
    {
        MyCSS_TOKEN_TYPE_UNDEF = 0,
        MyCSS_TOKEN_TYPE_WHITESPACE = 1,
        MyCSS_TOKEN_TYPE_IDENT = 2,
        MyCSS_TOKEN_TYPE_FUNCTION = 3,
        MyCSS_TOKEN_TYPE_AT_KEYWORD = 4,
        MyCSS_TOKEN_TYPE_HASH = 5,
        MyCSS_TOKEN_TYPE_STRING = 6,
        MyCSS_TOKEN_TYPE_URL = 7,
        MyCSS_TOKEN_TYPE_NUMBER = 8,
        MyCSS_TOKEN_TYPE_DIMENSION = 9,
        MyCSS_TOKEN_TYPE_PERCENTAGE = 10,
        MyCSS_TOKEN_TYPE_INCLUDE_MATCH = 11,
        MyCSS_TOKEN_TYPE_DASH_MATCH = 12,
        MyCSS_TOKEN_TYPE_PREFIX_MATCH = 13,
        MyCSS_TOKEN_TYPE_SUFFIX_MATCH = 14,
        MyCSS_TOKEN_TYPE_SUBSTRING_MATCH = 15,
        MyCSS_TOKEN_TYPE_COLUMN = 16,
        MyCSS_TOKEN_TYPE_CDO = 17,
        MyCSS_TOKEN_TYPE_CDC = 18,
        MyCSS_TOKEN_TYPE_BAD_STRING = 19,
        MyCSS_TOKEN_TYPE_DELIM = 20,
        MyCSS_TOKEN_TYPE_LEFT_PARENTHESIS = 21,
        MyCSS_TOKEN_TYPE_RIGHT_PARENTHESIS = 22,
        MyCSS_TOKEN_TYPE_COMMA = 23,
        MyCSS_TOKEN_TYPE_COLON = 24,
        MyCSS_TOKEN_TYPE_SEMICOLON = 25,
        MyCSS_TOKEN_TYPE_LEFT_SQUARE_BRACKET = 26,
        MyCSS_TOKEN_TYPE_RIGHT_SQUARE_BRACKET = 27,
        MyCSS_TOKEN_TYPE_LEFT_CURLY_BRACKET = 28,
        MyCSS_TOKEN_TYPE_RIGHT_CURLY_BRACKET = 29,
        MyCSS_TOKEN_TYPE_BAD_URL = 30,
        MyCSS_TOKEN_TYPE_COMMENT = 31,
        MyCSS_TOKEN_TYPE_UNICODE_RANGE = 32,
        MyCSS_TOKEN_TYPE_EOF = 33,
        MyCSS_TOKEN_TYPE_LAST_ENTRY = 34,
    }
    enum MyCSS_TOKEN_TYPE_UNDEF = mycss_token_type.MyCSS_TOKEN_TYPE_UNDEF;
    enum MyCSS_TOKEN_TYPE_WHITESPACE = mycss_token_type.MyCSS_TOKEN_TYPE_WHITESPACE;
    enum MyCSS_TOKEN_TYPE_IDENT = mycss_token_type.MyCSS_TOKEN_TYPE_IDENT;
    enum MyCSS_TOKEN_TYPE_FUNCTION = mycss_token_type.MyCSS_TOKEN_TYPE_FUNCTION;
    enum MyCSS_TOKEN_TYPE_AT_KEYWORD = mycss_token_type.MyCSS_TOKEN_TYPE_AT_KEYWORD;
    enum MyCSS_TOKEN_TYPE_HASH = mycss_token_type.MyCSS_TOKEN_TYPE_HASH;
    enum MyCSS_TOKEN_TYPE_STRING = mycss_token_type.MyCSS_TOKEN_TYPE_STRING;
    enum MyCSS_TOKEN_TYPE_URL = mycss_token_type.MyCSS_TOKEN_TYPE_URL;
    enum MyCSS_TOKEN_TYPE_NUMBER = mycss_token_type.MyCSS_TOKEN_TYPE_NUMBER;
    enum MyCSS_TOKEN_TYPE_DIMENSION = mycss_token_type.MyCSS_TOKEN_TYPE_DIMENSION;
    enum MyCSS_TOKEN_TYPE_PERCENTAGE = mycss_token_type.MyCSS_TOKEN_TYPE_PERCENTAGE;
    enum MyCSS_TOKEN_TYPE_INCLUDE_MATCH = mycss_token_type.MyCSS_TOKEN_TYPE_INCLUDE_MATCH;
    enum MyCSS_TOKEN_TYPE_DASH_MATCH = mycss_token_type.MyCSS_TOKEN_TYPE_DASH_MATCH;
    enum MyCSS_TOKEN_TYPE_PREFIX_MATCH = mycss_token_type.MyCSS_TOKEN_TYPE_PREFIX_MATCH;
    enum MyCSS_TOKEN_TYPE_SUFFIX_MATCH = mycss_token_type.MyCSS_TOKEN_TYPE_SUFFIX_MATCH;
    enum MyCSS_TOKEN_TYPE_SUBSTRING_MATCH = mycss_token_type.MyCSS_TOKEN_TYPE_SUBSTRING_MATCH;
    enum MyCSS_TOKEN_TYPE_COLUMN = mycss_token_type.MyCSS_TOKEN_TYPE_COLUMN;
    enum MyCSS_TOKEN_TYPE_CDO = mycss_token_type.MyCSS_TOKEN_TYPE_CDO;
    enum MyCSS_TOKEN_TYPE_CDC = mycss_token_type.MyCSS_TOKEN_TYPE_CDC;
    enum MyCSS_TOKEN_TYPE_BAD_STRING = mycss_token_type.MyCSS_TOKEN_TYPE_BAD_STRING;
    enum MyCSS_TOKEN_TYPE_DELIM = mycss_token_type.MyCSS_TOKEN_TYPE_DELIM;
    enum MyCSS_TOKEN_TYPE_LEFT_PARENTHESIS = mycss_token_type.MyCSS_TOKEN_TYPE_LEFT_PARENTHESIS;
    enum MyCSS_TOKEN_TYPE_RIGHT_PARENTHESIS = mycss_token_type.MyCSS_TOKEN_TYPE_RIGHT_PARENTHESIS;
    enum MyCSS_TOKEN_TYPE_COMMA = mycss_token_type.MyCSS_TOKEN_TYPE_COMMA;
    enum MyCSS_TOKEN_TYPE_COLON = mycss_token_type.MyCSS_TOKEN_TYPE_COLON;
    enum MyCSS_TOKEN_TYPE_SEMICOLON = mycss_token_type.MyCSS_TOKEN_TYPE_SEMICOLON;
    enum MyCSS_TOKEN_TYPE_LEFT_SQUARE_BRACKET = mycss_token_type.MyCSS_TOKEN_TYPE_LEFT_SQUARE_BRACKET;
    enum MyCSS_TOKEN_TYPE_RIGHT_SQUARE_BRACKET = mycss_token_type.MyCSS_TOKEN_TYPE_RIGHT_SQUARE_BRACKET;
    enum MyCSS_TOKEN_TYPE_LEFT_CURLY_BRACKET = mycss_token_type.MyCSS_TOKEN_TYPE_LEFT_CURLY_BRACKET;
    enum MyCSS_TOKEN_TYPE_RIGHT_CURLY_BRACKET = mycss_token_type.MyCSS_TOKEN_TYPE_RIGHT_CURLY_BRACKET;
    enum MyCSS_TOKEN_TYPE_BAD_URL = mycss_token_type.MyCSS_TOKEN_TYPE_BAD_URL;
    enum MyCSS_TOKEN_TYPE_COMMENT = mycss_token_type.MyCSS_TOKEN_TYPE_COMMENT;
    enum MyCSS_TOKEN_TYPE_UNICODE_RANGE = mycss_token_type.MyCSS_TOKEN_TYPE_UNICODE_RANGE;
    enum MyCSS_TOKEN_TYPE_EOF = mycss_token_type.MyCSS_TOKEN_TYPE_EOF;
    enum MyCSS_TOKEN_TYPE_LAST_ENTRY = mycss_token_type.MyCSS_TOKEN_TYPE_LAST_ENTRY;
    alias mycss_token_type_t = mycss_token_type;
    bool mycss_property_parser_font_variant_ligatures(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant_numeric(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_font_variant_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_alpha_value
    {
        static union _Anonymous_12
        {
            mycss_values_number_t number;
            mycss_values_percentage_t percentage;
        }
        _Anonymous_12 value;
        mycss_values_color_type_value_t type_value;
    }
    bool mycss_property_parser_font_weight(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_glyph_orientation_vertical(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_hanging_punctuation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_selectors_entry
    {
        mycss_selectors_type_t type;
        uint sub_type;
        mycss_selectors_flags_t flags;
        mycss_namespace_entry_t* ns_entry;
        mycore_string_t* key;
        void* value;
        mycss_selectors_combinator_t combinator;
        mycss_selectors_entry_t* next;
        mycss_selectors_entry_t* prev;
    }
    bool mycss_property_parser_height(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_hyphens(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_image_rendering(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_indent_edge_reset(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_inline_size_step(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_justify_content(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_left(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_hue_value
    {
        static union _Anonymous_13
        {
            mycss_values_number_t number;
            mycss_values_angle_t angle;
        }
        _Anonymous_13 value;
        mycss_values_color_type_value_t type_value;
    }
    bool mycss_property_parser_letter_spacing(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_line_break(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_line_height(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_line_height_step(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_list_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_list_style_image(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_list_style_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_list_style_type(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_hsla
    {
        mycss_values_color_hue_value_t hue;
        mycss_values_percentage_t saturation;
        mycss_values_percentage_t lightness;
        mycss_values_color_alpha_value_t alpha;
    }
    bool mycss_property_parser_margin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_block_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_block_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_bottom(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_inline_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_inline_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_left(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_hwb
    {
        mycss_values_color_hue_value_t hue;
        mycss_values_percentage_t saturation;
        mycss_values_percentage_t lightness;
        mycss_values_color_alpha_value_t alpha;
    }
    bool mycss_property_parser_margin_right(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_margin_top(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_marker(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_marker_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_marker_mid(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_marker_side(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_marker_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_gray
    {
        mycss_values_number_t number;
        mycss_values_color_alpha_value_t alpha;
    }
    bool mycss_property_parser_max_height(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_max_lines(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_max_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_min_height(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_min_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_an_plus_b_t = mycss_an_plus_b;
    struct mycss_values_color_rgba_number
    {
        mycss_values_number_t r;
        mycss_values_number_t g;
        mycss_values_number_t b;
        mycss_values_color_alpha_value_t alpha;
    }
    bool mycss_property_parser_nav_down(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_nav_left(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_an_plus_b_entry_t = mycss_an_plus_b_entry;
    bool mycss_property_parser_nav_right(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_nav_up(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_offset_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_stylesheet_entry_type_t = mycss_stylesheet_entry_type;
    enum mycss_stylesheet_entry_type
    {
        MyCSS_RESULT_ENTRY_TYPE_UNDEF = 0,
        MyCSS_RESULT_ENTRY_TYPE_GOOD = 1,
        MyCSS_RESULT_ENTRY_TYPE_BAD = 2,
    }
    enum MyCSS_RESULT_ENTRY_TYPE_UNDEF = mycss_stylesheet_entry_type.MyCSS_RESULT_ENTRY_TYPE_UNDEF;
    enum MyCSS_RESULT_ENTRY_TYPE_GOOD = mycss_stylesheet_entry_type.MyCSS_RESULT_ENTRY_TYPE_GOOD;
    enum MyCSS_RESULT_ENTRY_TYPE_BAD = mycss_stylesheet_entry_type.MyCSS_RESULT_ENTRY_TYPE_BAD;
    bool mycss_property_parser_offset_before(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_offset_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_offset_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_rgba_percentage
    {
        mycss_values_percentage_t r;
        mycss_values_percentage_t g;
        mycss_values_percentage_t b;
        mycss_values_color_alpha_value_t alpha;
    }
    bool mycss_property_parser_opacity(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_order(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_orphans(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_outline(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_outline_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_stylesheet_t = mycss_stylesheet;
    bool mycss_property_parser_outline_offset(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_outline_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color
    {
        static union _Anonymous_14
        {
            mycss_values_color_rgba_number_t hex;
            mycss_values_color_rgba_number_t rgba_number;
            mycss_values_color_rgba_percentage_t rgba_percentage;
            mycss_values_color_hsla_t hsla;
            mycss_values_color_hwb_t hwb;
            mycss_values_color_gray_t gray;
            mycss_values_color_id_t name_id;
        }
        _Anonymous_14 value;
        mycss_values_color_type_t type;
        mycss_values_color_type_value_t type_value;
    }
    alias mycss_string_escaped_res_t = mycss_string_escaped_res;
    bool mycss_property_parser_outline_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_string_res_t = mycss_string_res;
    bool mycss_property_parser_overflow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_overflow_wrap(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_tokenizer_state_f = c_ulong function(mycss_entry_t*, mycss_token_t*, const(char)*, size_t, size_t);
    bool mycss_property_parser_overflow_x(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_token_ready_callback_f = mycss_token* function(mycss_entry_t*, mycss_token_t*);
    bool mycss_property_parser_overflow_y(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_string_process_state_f = c_ulong function(mycore_string_t*, const(char)*, size_t, size_t, mycss_string_res_t*);
    bool mycss_property_parser_padding_block_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_parser_token_f = bool function(mycss_entry_t*, mycss_token_t*, bool);
    alias mycss_an_plus_b_state_f = bool function(mycss_entry_t*, mycss_an_plus_b_t*, mycss_an_plus_b_entry_t*, mycss_token_t*);
    bool mycss_property_parser_padding_block_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_bottom(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_inline_end(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_inline_start(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_left(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_right(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_padding_top(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_stop
    {
        mycss_values_color_t color;
        mycss_values_percentage_t* percentage;
    }
    bool mycss_property_parser_pause(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_pause_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_pause_before(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_perspective(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_perspective_origin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_color_stop_list
    {
        mycss_values_color_stop_t* entries;
        size_t entries_length;
    }
    bool mycss_property_parser_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_presentation_level(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_quotes(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_region_fragment(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_resize(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_rest(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_rest_after(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_rest_before(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_url
    {
        mycore_string_t str;
    }
    bool mycss_property_parser_right(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_ruby_align(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_ruby_merge(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_ruby_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_scroll_padding(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_scroll_snap_align(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_scroll_snap_margin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_scroll_snap_stop(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_element
    {
        mycss_values_custom_ident_t custom_ident;
        mycss_property_value_t type;
    }
    bool mycss_property_parser_scroll_snap_type(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_shape_image_threshold(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_shape_margin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_shape_outside(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_shape_rendering(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_speak(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_speak_as(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_string_set(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_image
    {
        static union _Anonymous_15
        {
            mycss_values_url_t* url;
            mycss_values_image_image_t* ii;
            mycss_values_image_image_set_t* ii_set;
            mycss_values_element_t* element;
            mycss_values_cross_fade_t* cross_fade;
        }
        _Anonymous_15 value;
        mycss_property_value_t type;
    }
    bool mycss_property_parser_stroke(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_dasharray(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_dashoffset(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_linecap(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_linejoin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_miterlimit(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_opacity(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_stroke_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_tab_size(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_table_layout(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_align(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_image_list
    {
        mycss_values_image_t* images;
        size_t images_length;
    }
    bool mycss_property_parser_text_align_all(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_align_last(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_combine_upright(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_line(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_decoration_skip(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_image_image
    {
        mycore_string_t* str;
        mycss_values_image_t* image;
        mycss_values_color_t* color;
    }
    bool mycss_property_parser_text_decoration_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_emphasis(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_emphasis_color(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_emphasis_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_emphasis_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_indent(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_justify(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_image_image_set_option
    {
        mycore_string_t* str;
        mycss_values_image_t* image;
        mycss_values_resolution_t* resolution;
    }
    bool mycss_property_parser_text_orientation(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_overflow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_rendering(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_shadow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_size_adjust(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_text_transform(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_image_image_set
    {
        mycss_values_image_image_set_option_t* options;
        size_t options_length;
    }
    bool mycss_property_parser_text_underline_position(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_property_value_t = mycss_property_value;
    enum mycss_property_value
    {
        MyCSS_PROPERTY_VALUE_UNDEF = 0,
        MyCSS_PROPERTY_VALUE_AUTO = 24,
        MyCSS_PROPERTY_VALUE_CURRENTCOLOR = 80,
        MyCSS_PROPERTY_VALUE_FIRST = 115,
        MyCSS_PROPERTY_VALUE_FIRST_EXCEPT = 116,
        MyCSS_PROPERTY_VALUE_INHERIT = 146,
        MyCSS_PROPERTY_VALUE_INITIAL = 147,
        MyCSS_PROPERTY_VALUE_LAST = 172,
        MyCSS_PROPERTY_VALUE_NONE = 211,
        MyCSS_PROPERTY_VALUE_START = 326,
        MyCSS_PROPERTY_VALUE_TRANSPARENT = 358,
        MyCSS_PROPERTY_VALUE_UNSET = 367,
        MyCSS_PROPERTY_VALUE__COLOR = 400,
        MyCSS_PROPERTY_VALUE__CROSS_FADE_FUNCTION = 401,
        MyCSS_PROPERTY_VALUE__CUSTOM_IDENT = 402,
        MyCSS_PROPERTY_VALUE__ELEMENT_FUNCTION = 403,
        MyCSS_PROPERTY_VALUE__IMAGE = 406,
        MyCSS_PROPERTY_VALUE__IMAGE_FUNCTION = 407,
        MyCSS_PROPERTY_VALUE__IMAGE_LIST = 408,
        MyCSS_PROPERTY_VALUE__IMAGE_SET_FUNCTION = 409,
        MyCSS_PROPERTY_VALUE__LENGTH = 410,
        MyCSS_PROPERTY_VALUE__LINEAR_GRADIENT_FUNCTION = 411,
        MyCSS_PROPERTY_VALUE__NUMBER = 412,
        MyCSS_PROPERTY_VALUE__PERCENTAGE = 413,
        MyCSS_PROPERTY_VALUE__RADIAL_GRADIENT_FUNCTION = 414,
        MyCSS_PROPERTY_VALUE__RESOLUTION = 415,
        MyCSS_PROPERTY_VALUE__URL = 416,
        MyCSS_PROPERTY_VALUE_LAST_ENTRY = 417,
    }
    enum MyCSS_PROPERTY_VALUE_UNDEF = mycss_property_value.MyCSS_PROPERTY_VALUE_UNDEF;
    enum MyCSS_PROPERTY_VALUE_AUTO = mycss_property_value.MyCSS_PROPERTY_VALUE_AUTO;
    enum MyCSS_PROPERTY_VALUE_CURRENTCOLOR = mycss_property_value.MyCSS_PROPERTY_VALUE_CURRENTCOLOR;
    enum MyCSS_PROPERTY_VALUE_FIRST = mycss_property_value.MyCSS_PROPERTY_VALUE_FIRST;
    enum MyCSS_PROPERTY_VALUE_FIRST_EXCEPT = mycss_property_value.MyCSS_PROPERTY_VALUE_FIRST_EXCEPT;
    enum MyCSS_PROPERTY_VALUE_INHERIT = mycss_property_value.MyCSS_PROPERTY_VALUE_INHERIT;
    enum MyCSS_PROPERTY_VALUE_INITIAL = mycss_property_value.MyCSS_PROPERTY_VALUE_INITIAL;
    enum MyCSS_PROPERTY_VALUE_LAST = mycss_property_value.MyCSS_PROPERTY_VALUE_LAST;
    enum MyCSS_PROPERTY_VALUE_NONE = mycss_property_value.MyCSS_PROPERTY_VALUE_NONE;
    enum MyCSS_PROPERTY_VALUE_START = mycss_property_value.MyCSS_PROPERTY_VALUE_START;
    enum MyCSS_PROPERTY_VALUE_TRANSPARENT = mycss_property_value.MyCSS_PROPERTY_VALUE_TRANSPARENT;
    enum MyCSS_PROPERTY_VALUE_UNSET = mycss_property_value.MyCSS_PROPERTY_VALUE_UNSET;
    enum MyCSS_PROPERTY_VALUE__COLOR = mycss_property_value.MyCSS_PROPERTY_VALUE__COLOR;
    enum MyCSS_PROPERTY_VALUE__CROSS_FADE_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__CROSS_FADE_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__CUSTOM_IDENT = mycss_property_value.MyCSS_PROPERTY_VALUE__CUSTOM_IDENT;
    enum MyCSS_PROPERTY_VALUE__ELEMENT_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__ELEMENT_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__IMAGE = mycss_property_value.MyCSS_PROPERTY_VALUE__IMAGE;
    enum MyCSS_PROPERTY_VALUE__IMAGE_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__IMAGE_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__IMAGE_LIST = mycss_property_value.MyCSS_PROPERTY_VALUE__IMAGE_LIST;
    enum MyCSS_PROPERTY_VALUE__IMAGE_SET_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__IMAGE_SET_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__LENGTH = mycss_property_value.MyCSS_PROPERTY_VALUE__LENGTH;
    enum MyCSS_PROPERTY_VALUE__LINEAR_GRADIENT_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__LINEAR_GRADIENT_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__NUMBER = mycss_property_value.MyCSS_PROPERTY_VALUE__NUMBER;
    enum MyCSS_PROPERTY_VALUE__PERCENTAGE = mycss_property_value.MyCSS_PROPERTY_VALUE__PERCENTAGE;
    enum MyCSS_PROPERTY_VALUE__RADIAL_GRADIENT_FUNCTION = mycss_property_value.MyCSS_PROPERTY_VALUE__RADIAL_GRADIENT_FUNCTION;
    enum MyCSS_PROPERTY_VALUE__RESOLUTION = mycss_property_value.MyCSS_PROPERTY_VALUE__RESOLUTION;
    enum MyCSS_PROPERTY_VALUE__URL = mycss_property_value.MyCSS_PROPERTY_VALUE__URL;
    enum MyCSS_PROPERTY_VALUE_LAST_ENTRY = mycss_property_value.MyCSS_PROPERTY_VALUE_LAST_ENTRY;
    bool mycss_property_parser_top(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_touch_action(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transform(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transform_box(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transform_origin(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transform_style(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_cross_fade_mixing_image
    {
        mycss_values_percentage_t* percentage;
        mycss_values_image_t* image;
    }
    bool mycss_property_parser_transition(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transition_delay(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transition_duration(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transition_property(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_transition_timing_function(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_cross_fade_final_image
    {
        mycss_values_image_t* image;
        mycss_values_color_t* color;
    }
    bool mycss_property_parser_unicode_bidi(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_user_select(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_vertical_align(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_visibility(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_balance(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_duration(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_cross_fade
    {
        mycss_values_cross_fade_mixing_image_t mixing_image;
        mycss_values_cross_fade_final_image_t final_image;
    }
    bool mycss_property_parser_voice_family(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_pitch(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_range(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_rate(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_stress(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_voice_volume(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_white_space(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_widows(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_width(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_values_gradient_side_or_corner_type_t = mycss_values_gradient_side_or_corner_type;
    enum mycss_values_gradient_side_or_corner_type
    {
        MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_UNDEF = 0,
        MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_LEFT = 1,
        MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_RIGHT = 2,
        MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_TOP = 4,
        MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_BOTTOM = 8,
    }
    enum MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_UNDEF = mycss_values_gradient_side_or_corner_type.MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_UNDEF;
    enum MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_LEFT = mycss_values_gradient_side_or_corner_type.MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_LEFT;
    enum MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_RIGHT = mycss_values_gradient_side_or_corner_type.MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_RIGHT;
    enum MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_TOP = mycss_values_gradient_side_or_corner_type.MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_TOP;
    enum MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_BOTTOM = mycss_values_gradient_side_or_corner_type.MyCSS_VALUES_GRADIENT_SIDE_OR_CORNER_TYPE_BOTTOM;
    bool mycss_property_parser_will_change(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_word_break(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_word_spacing(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_word_wrap(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_wrap_flow(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    bool mycss_property_parser_wrap_through(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    enum mycss_property_align_content
    {
        MyCSS_PROPERTY_ALIGN_CONTENT_CENTER = 55,
        MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_END = 121,
        MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_START = 122,
        MyCSS_PROPERTY_ALIGN_CONTENT_STRETCH = 332,
        MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_AROUND = 320,
        MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_BETWEEN = 321,
    }
    enum MyCSS_PROPERTY_ALIGN_CONTENT_CENTER = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_CENTER;
    enum MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_END = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_END;
    enum MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_START = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_FLEX_START;
    enum MyCSS_PROPERTY_ALIGN_CONTENT_STRETCH = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_STRETCH;
    enum MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_AROUND = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_AROUND;
    enum MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_BETWEEN = mycss_property_align_content.MyCSS_PROPERTY_ALIGN_CONTENT_SPACE_BETWEEN;
    bool mycss_property_parser_writing_mode(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    alias mycss_property_align_content_t = mycss_property_align_content;
    bool mycss_property_parser_z_index(mycss_entry_t*, mycss_token_t*, bool) @nogc nothrow;
    struct mycss_values_gradient_side_or_corner
    {
        mycss_values_gradient_side_or_corner_type_t side;
        mycss_values_gradient_side_or_corner_type_t corner;
    }
    struct mycss_values_gradient_linear
    {
        static union _Anonymous_16
        {
            mycss_values_angle_t angle;
            mycss_values_gradient_side_or_corner_t side_or_corner;
        }
        _Anonymous_16 value;
        mycss_values_color_stop_list_t color_stop_list;
    }
    alias mycss_property_align_items_t = mycss_property_align_items;
    enum mycss_property_align_items
    {
        MyCSS_PROPERTY_ALIGN_ITEMS_CENTER = 55,
        MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_END = 121,
        MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_START = 122,
        MyCSS_PROPERTY_ALIGN_ITEMS_STRETCH = 332,
        MyCSS_PROPERTY_ALIGN_ITEMS_BASELINE = 34,
    }
    enum MyCSS_PROPERTY_ALIGN_ITEMS_CENTER = mycss_property_align_items.MyCSS_PROPERTY_ALIGN_ITEMS_CENTER;
    enum MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_END = mycss_property_align_items.MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_END;
    enum MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_START = mycss_property_align_items.MyCSS_PROPERTY_ALIGN_ITEMS_FLEX_START;
    enum MyCSS_PROPERTY_ALIGN_ITEMS_STRETCH = mycss_property_align_items.MyCSS_PROPERTY_ALIGN_ITEMS_STRETCH;
    enum MyCSS_PROPERTY_ALIGN_ITEMS_BASELINE = mycss_property_align_items.MyCSS_PROPERTY_ALIGN_ITEMS_BASELINE;
    alias mycss_property_align_self_t = mycss_property_align_self;
    enum mycss_property_align_self
    {
        MyCSS_PROPERTY_ALIGN_SELF_AUTO = 24,
        MyCSS_PROPERTY_ALIGN_SELF_CENTER = 55,
        MyCSS_PROPERTY_ALIGN_SELF_FLEX_END = 121,
        MyCSS_PROPERTY_ALIGN_SELF_FLEX_START = 122,
        MyCSS_PROPERTY_ALIGN_SELF_STRETCH = 332,
        MyCSS_PROPERTY_ALIGN_SELF_BASELINE = 34,
    }
    enum MyCSS_PROPERTY_ALIGN_SELF_AUTO = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_AUTO;
    enum MyCSS_PROPERTY_ALIGN_SELF_CENTER = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_CENTER;
    enum MyCSS_PROPERTY_ALIGN_SELF_FLEX_END = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_FLEX_END;
    enum MyCSS_PROPERTY_ALIGN_SELF_FLEX_START = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_FLEX_START;
    enum MyCSS_PROPERTY_ALIGN_SELF_STRETCH = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_STRETCH;
    enum MyCSS_PROPERTY_ALIGN_SELF_BASELINE = mycss_property_align_self.MyCSS_PROPERTY_ALIGN_SELF_BASELINE;
    alias mycss_values_font_family_type_t = mycss_values_font_family_type;
    enum mycss_values_font_family_type
    {
        MyCSS_VALUES_FONT_FAMILY_TYPE_UNDEF = 0,
        MyCSS_VALUES_FONT_FAMILY_TYPE_NAME = 1,
        MyCSS_VALUES_FONT_FAMILY_TYPE_GENERIC = 2,
    }
    enum MyCSS_VALUES_FONT_FAMILY_TYPE_UNDEF = mycss_values_font_family_type.MyCSS_VALUES_FONT_FAMILY_TYPE_UNDEF;
    enum MyCSS_VALUES_FONT_FAMILY_TYPE_NAME = mycss_values_font_family_type.MyCSS_VALUES_FONT_FAMILY_TYPE_NAME;
    enum MyCSS_VALUES_FONT_FAMILY_TYPE_GENERIC = mycss_values_font_family_type.MyCSS_VALUES_FONT_FAMILY_TYPE_GENERIC;
    alias mycss_property_animation_direction_t = mycss_property_animation_direction;
    enum mycss_property_animation_direction
    {
        MyCSS_PROPERTY_ANIMATION_DIRECTION_NORMAL = 213,
        MyCSS_PROPERTY_ANIMATION_DIRECTION_REVERSE = 275,
        MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE = 21,
        MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE_REVERSE = 22,
    }
    enum MyCSS_PROPERTY_ANIMATION_DIRECTION_NORMAL = mycss_property_animation_direction.MyCSS_PROPERTY_ANIMATION_DIRECTION_NORMAL;
    enum MyCSS_PROPERTY_ANIMATION_DIRECTION_REVERSE = mycss_property_animation_direction.MyCSS_PROPERTY_ANIMATION_DIRECTION_REVERSE;
    enum MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE = mycss_property_animation_direction.MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE;
    enum MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE_REVERSE = mycss_property_animation_direction.MyCSS_PROPERTY_ANIMATION_DIRECTION_ALTERNATE_REVERSE;
    struct mycss_values_font_family_entry
    {
        static union _Anonymous_17
        {
            mycore_string_t str;
            mycss_property_font_family_t prop_type;
        }
        _Anonymous_17 value;
        mycss_values_font_family_type_t type;
    }
    enum mycss_property_animation_fill_mode
    {
        MyCSS_PROPERTY_ANIMATION_FILL_MODE_NONE = 211,
        MyCSS_PROPERTY_ANIMATION_FILL_MODE_BOTH = 44,
        MyCSS_PROPERTY_ANIMATION_FILL_MODE_FORWARDS = 126,
        MyCSS_PROPERTY_ANIMATION_FILL_MODE_BACKWARDS = 30,
    }
    enum MyCSS_PROPERTY_ANIMATION_FILL_MODE_NONE = mycss_property_animation_fill_mode.MyCSS_PROPERTY_ANIMATION_FILL_MODE_NONE;
    enum MyCSS_PROPERTY_ANIMATION_FILL_MODE_BOTH = mycss_property_animation_fill_mode.MyCSS_PROPERTY_ANIMATION_FILL_MODE_BOTH;
    enum MyCSS_PROPERTY_ANIMATION_FILL_MODE_FORWARDS = mycss_property_animation_fill_mode.MyCSS_PROPERTY_ANIMATION_FILL_MODE_FORWARDS;
    enum MyCSS_PROPERTY_ANIMATION_FILL_MODE_BACKWARDS = mycss_property_animation_fill_mode.MyCSS_PROPERTY_ANIMATION_FILL_MODE_BACKWARDS;
    alias mycss_property_animation_fill_mode_t = mycss_property_animation_fill_mode;
    struct mycss_values_font_family
    {
        mycss_values_font_family_entry_t* entries;
        size_t entries_length;
    }
    struct mycss_values_font
    {
        mycss_declaration_entry_t* style;
        mycss_declaration_entry_t* weight;
        mycss_declaration_entry_t* stretch;
        mycss_declaration_entry_t* size;
        mycss_declaration_entry_t* family;
        mycss_declaration_entry_t* line_height;
    }
    enum mycss_property_animation_name
    {
        MyCSS_PROPERTY_ANIMATION_NAME_NONE = 211,
    }
    enum MyCSS_PROPERTY_ANIMATION_NAME_NONE = mycss_property_animation_name.MyCSS_PROPERTY_ANIMATION_NAME_NONE;
    alias mycss_property_animation_name_t = mycss_property_animation_name;
    enum mycss_property_animation_play_state
    {
        MyCSS_PROPERTY_ANIMATION_PLAY_STATE_PAUSED = 255,
        MyCSS_PROPERTY_ANIMATION_PLAY_STATE_RUNNING = 290,
    }
    enum MyCSS_PROPERTY_ANIMATION_PLAY_STATE_PAUSED = mycss_property_animation_play_state.MyCSS_PROPERTY_ANIMATION_PLAY_STATE_PAUSED;
    enum MyCSS_PROPERTY_ANIMATION_PLAY_STATE_RUNNING = mycss_property_animation_play_state.MyCSS_PROPERTY_ANIMATION_PLAY_STATE_RUNNING;
    alias mycss_property_animation_play_state_t = mycss_property_animation_play_state;
    enum mycss_property_animation_timing_function
    {
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_LINEAR = 178,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE = 94,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN = 95,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_OUT = 97,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_END = 329,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_START = 330,
        MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN_OUT = 96,
    }
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_LINEAR = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_LINEAR;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_OUT = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_OUT;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_END = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_END;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_START = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_STEP_START;
    enum MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN_OUT = mycss_property_animation_timing_function.MyCSS_PROPERTY_ANIMATION_TIMING_FUNCTION_EASE_IN_OUT;
    alias mycss_property_animation_timing_function_t = mycss_property_animation_timing_function;
    enum mycss_values_text_decoration_line
    {
        MyCSS_VALUES_TEXT_DECORATION_LINE_UNDEF = 0,
        MyCSS_VALUES_TEXT_DECORATION_LINE_UNDERLINE = 1,
        MyCSS_VALUES_TEXT_DECORATION_LINE_OVERLINE = 2,
        MyCSS_VALUES_TEXT_DECORATION_LINE_LINE_THROUGH = 4,
        MyCSS_VALUES_TEXT_DECORATION_LINE_BLINK = 8,
    }
    enum MyCSS_VALUES_TEXT_DECORATION_LINE_UNDEF = mycss_values_text_decoration_line.MyCSS_VALUES_TEXT_DECORATION_LINE_UNDEF;
    enum MyCSS_VALUES_TEXT_DECORATION_LINE_UNDERLINE = mycss_values_text_decoration_line.MyCSS_VALUES_TEXT_DECORATION_LINE_UNDERLINE;
    enum MyCSS_VALUES_TEXT_DECORATION_LINE_OVERLINE = mycss_values_text_decoration_line.MyCSS_VALUES_TEXT_DECORATION_LINE_OVERLINE;
    enum MyCSS_VALUES_TEXT_DECORATION_LINE_LINE_THROUGH = mycss_values_text_decoration_line.MyCSS_VALUES_TEXT_DECORATION_LINE_LINE_THROUGH;
    enum MyCSS_VALUES_TEXT_DECORATION_LINE_BLINK = mycss_values_text_decoration_line.MyCSS_VALUES_TEXT_DECORATION_LINE_BLINK;
    alias mycss_values_text_decoration_line_t = mycss_values_text_decoration_line;
    enum mycss_values_text_decoration_skip
    {
        MyCSS_VALUES_TEXT_DECORATION_SKIP_UNDEF = 0,
        MyCSS_VALUES_TEXT_DECORATION_SKIP_OBJECTS = 1,
        MyCSS_VALUES_TEXT_DECORATION_SKIP_SPACES = 2,
        MyCSS_VALUES_TEXT_DECORATION_SKIP_INK = 4,
        MyCSS_VALUES_TEXT_DECORATION_SKIP_EDGES = 8,
        MyCSS_VALUES_TEXT_DECORATION_SKIP_BOX_DECORATION = 16,
    }
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_UNDEF = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_UNDEF;
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_OBJECTS = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_OBJECTS;
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_SPACES = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_SPACES;
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_INK = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_INK;
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_EDGES = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_EDGES;
    enum MyCSS_VALUES_TEXT_DECORATION_SKIP_BOX_DECORATION = mycss_values_text_decoration_skip.MyCSS_VALUES_TEXT_DECORATION_SKIP_BOX_DECORATION;
    alias mycss_values_text_decoration_skip_t = mycss_values_text_decoration_skip;
    enum mycss_property_appearance
    {
        MyCSS_PROPERTY_APPEARANCE_AUTO = 24,
        MyCSS_PROPERTY_APPEARANCE_NONE = 211,
    }
    enum MyCSS_PROPERTY_APPEARANCE_AUTO = mycss_property_appearance.MyCSS_PROPERTY_APPEARANCE_AUTO;
    enum MyCSS_PROPERTY_APPEARANCE_NONE = mycss_property_appearance.MyCSS_PROPERTY_APPEARANCE_NONE;
    alias mycss_property_appearance_t = mycss_property_appearance;
    alias mycss_property_backface_visibility_t = mycss_property_backface_visibility;
    enum mycss_property_backface_visibility
    {
        MyCSS_PROPERTY_BACKFACE_VISIBILITY_HIDDEN = 136,
        MyCSS_PROPERTY_BACKFACE_VISIBILITY_VISIBLE = 376,
    }
    enum MyCSS_PROPERTY_BACKFACE_VISIBILITY_HIDDEN = mycss_property_backface_visibility.MyCSS_PROPERTY_BACKFACE_VISIBILITY_HIDDEN;
    enum MyCSS_PROPERTY_BACKFACE_VISIBILITY_VISIBLE = mycss_property_backface_visibility.MyCSS_PROPERTY_BACKFACE_VISIBILITY_VISIBLE;
    struct mycss_values_text_decoration
    {
        mycss_declaration_entry_t* line;
        mycss_declaration_entry_t* style;
        mycss_declaration_entry_t* color;
    }
    enum mycss_property_background
    {
        MyCSS_PROPERTY_BACKGROUND_REPEAT_X = 273,
        MyCSS_PROPERTY_BACKGROUND_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_CONTAIN = 68,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_Y = 274,
        MyCSS_PROPERTY_BACKGROUND_REPEAT = 272,
        MyCSS_PROPERTY_BACKGROUND_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_COVER = 76,
        MyCSS_PROPERTY_BACKGROUND_AUTO = 24,
        MyCSS_PROPERTY_BACKGROUND_SPACE = 318,
        MyCSS_PROPERTY_BACKGROUND_ROUND = 280,
        MyCSS_PROPERTY_BACKGROUND_FIXED = 118,
        MyCSS_PROPERTY_BACKGROUND_SCROLL = 294,
        MyCSS_PROPERTY_BACKGROUND_NO_REPEAT = 224,
        MyCSS_PROPERTY_BACKGROUND_LOCAL = 185,
    }
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_X = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_REPEAT_X;
    enum MyCSS_PROPERTY_BACKGROUND_UNSET = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_CONTAIN = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_CONTAIN;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_Y = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_REPEAT_Y;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_REPEAT;
    enum MyCSS_PROPERTY_BACKGROUND_INHERIT = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_INITIAL = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_COVER = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_COVER;
    enum MyCSS_PROPERTY_BACKGROUND_AUTO = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_AUTO;
    enum MyCSS_PROPERTY_BACKGROUND_SPACE = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_SPACE;
    enum MyCSS_PROPERTY_BACKGROUND_ROUND = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_ROUND;
    enum MyCSS_PROPERTY_BACKGROUND_FIXED = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_FIXED;
    enum MyCSS_PROPERTY_BACKGROUND_SCROLL = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_SCROLL;
    enum MyCSS_PROPERTY_BACKGROUND_NO_REPEAT = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_NO_REPEAT;
    enum MyCSS_PROPERTY_BACKGROUND_LOCAL = mycss_property_background.MyCSS_PROPERTY_BACKGROUND_LOCAL;
    alias mycss_property_background_t = mycss_property_background;
    struct mycss_values_border
    {
        mycss_declaration_entry_t* width;
        mycss_declaration_entry_t* style;
        mycss_declaration_entry_t* color;
    }
    struct mycss_values_background
    {
        mycss_declaration_entry_t* image;
        mycss_declaration_entry_t* position;
        mycss_declaration_entry_t* size;
        mycss_declaration_entry_t* repeat;
        mycss_declaration_entry_t* attachment;
        mycss_declaration_entry_t* origin;
        mycss_declaration_entry_t* clip;
        mycss_declaration_entry_t* color;
    }
    enum mycss_property_background_attachment
    {
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_LOCAL = 185,
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_SCROLL = 294,
        MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_FIXED = 118,
    }
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_UNSET = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INHERIT = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INITIAL = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_LOCAL = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_LOCAL;
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_SCROLL = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_SCROLL;
    enum MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_FIXED = mycss_property_background_attachment.MyCSS_PROPERTY_BACKGROUND_ATTACHMENT_FIXED;
    alias mycss_property_background_attachment_t = mycss_property_background_attachment;
    struct mycss_values_background_list
    {
        mycss_values_background_t* entries;
        size_t entries_length;
    }
    enum mycss_property_background_clip
    {
        MyCSS_PROPERTY_BACKGROUND_CLIP_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_CLIP_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_CLIP_BORDER_BOX = 42,
        MyCSS_PROPERTY_BACKGROUND_CLIP_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_CLIP_PADDING_BOX = 244,
        MyCSS_PROPERTY_BACKGROUND_CLIP_CONTENT_BOX = 71,
    }
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_UNSET = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_INHERIT = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_BORDER_BOX = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_BORDER_BOX;
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_INITIAL = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_PADDING_BOX = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_PADDING_BOX;
    enum MyCSS_PROPERTY_BACKGROUND_CLIP_CONTENT_BOX = mycss_property_background_clip.MyCSS_PROPERTY_BACKGROUND_CLIP_CONTENT_BOX;
    alias mycss_property_background_clip_t = mycss_property_background_clip;
    struct mycss_values_background_repeat
    {
        mycss_property_background_t horizontal;
        mycss_property_background_t vertical;
    }
    struct mycss_values_background_repeat_list
    {
        mycss_values_background_repeat_t* entries;
        size_t entries_length;
    }
    enum mycss_property_background_color
    {
        MyCSS_PROPERTY_BACKGROUND_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BACKGROUND_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_COLOR_TRANSPARENT = 358,
    }
    enum MyCSS_PROPERTY_BACKGROUND_COLOR_UNSET = mycss_property_background_color.MyCSS_PROPERTY_BACKGROUND_COLOR_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_COLOR__COLOR = mycss_property_background_color.MyCSS_PROPERTY_BACKGROUND_COLOR__COLOR;
    enum MyCSS_PROPERTY_BACKGROUND_COLOR_INHERIT = mycss_property_background_color.MyCSS_PROPERTY_BACKGROUND_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_COLOR_INITIAL = mycss_property_background_color.MyCSS_PROPERTY_BACKGROUND_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_COLOR_TRANSPARENT = mycss_property_background_color.MyCSS_PROPERTY_BACKGROUND_COLOR_TRANSPARENT;
    alias mycss_property_background_color_t = mycss_property_background_color;
    struct mycss_values_background_position
    {
        mycss_values_type_length_percentage_entry_t one;
        mycss_values_type_length_percentage_entry_t two;
        mycss_values_type_length_percentage_entry_t three;
        mycss_values_type_length_percentage_entry_t four;
    }
    struct mycss_values_background_size_entry
    {
        uint scale;
        mycss_values_type_length_percentage_entry_t* width;
        mycss_values_type_length_percentage_entry_t* height;
    }
    alias mycss_property_background_image_t = mycss_property_background_image;
    enum mycss_property_background_image
    {
        MyCSS_PROPERTY_BACKGROUND_IMAGE_NONE = 211,
        MyCSS_PROPERTY_BACKGROUND_IMAGE__IMAGE = 406,
        MyCSS_PROPERTY_BACKGROUND_IMAGE_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_IMAGE_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_IMAGE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BACKGROUND_IMAGE_NONE = mycss_property_background_image.MyCSS_PROPERTY_BACKGROUND_IMAGE_NONE;
    enum MyCSS_PROPERTY_BACKGROUND_IMAGE__IMAGE = mycss_property_background_image.MyCSS_PROPERTY_BACKGROUND_IMAGE__IMAGE;
    enum MyCSS_PROPERTY_BACKGROUND_IMAGE_UNSET = mycss_property_background_image.MyCSS_PROPERTY_BACKGROUND_IMAGE_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_IMAGE_INHERIT = mycss_property_background_image.MyCSS_PROPERTY_BACKGROUND_IMAGE_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_IMAGE_INITIAL = mycss_property_background_image.MyCSS_PROPERTY_BACKGROUND_IMAGE_INITIAL;
    struct mycss_values_background_size_list
    {
        mycss_values_background_size_entry_t* entries;
        size_t entries_length;
    }
    alias mycss_property_background_origin_t = mycss_property_background_origin;
    enum mycss_property_background_origin
    {
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_BORDER_BOX = 42,
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_PADDING_BOX = 244,
        MyCSS_PROPERTY_BACKGROUND_ORIGIN_CONTENT_BOX = 71,
    }
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_UNSET = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_INHERIT = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_BORDER_BOX = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_BORDER_BOX;
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_INITIAL = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_PADDING_BOX = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_PADDING_BOX;
    enum MyCSS_PROPERTY_BACKGROUND_ORIGIN_CONTENT_BOX = mycss_property_background_origin.MyCSS_PROPERTY_BACKGROUND_ORIGIN_CONTENT_BOX;
    void* mycss_values_create(mycss_entry_t*, size_t) @nogc nothrow;
    void* mycss_values_destroy(mycss_entry_t*, void*) @nogc nothrow;
    void* mycss_values_realloc(mycss_entry_t*, void*, size_t, size_t) @nogc nothrow;
    void* mycss_values_clone(mycss_entry_t*, void*) @nogc nothrow;
    void* mycss_values_entry(mycss_entry_t*) @nogc nothrow;
    void mycss_values_entry_set(mycss_entry_t*, void**) @nogc nothrow;
    uint* mycss_values_type_list_add_entry(mycss_entry_t*, mycss_values_type_list_t*) @nogc nothrow;
    enum mycss_property_background_position
    {
        MyCSS_PROPERTY_BACKGROUND_POSITION_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_POSITION_BOTTOM = 45,
        MyCSS_PROPERTY_BACKGROUND_POSITION_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_POSITION_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_POSITION_RIGHT = 277,
        MyCSS_PROPERTY_BACKGROUND_POSITION_CENTER = 55,
        MyCSS_PROPERTY_BACKGROUND_POSITION_LEFT = 174,
        MyCSS_PROPERTY_BACKGROUND_POSITION_TOP = 356,
    }
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_UNSET = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_BOTTOM = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_BOTTOM;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_INHERIT = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_INITIAL = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_RIGHT = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_RIGHT;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_CENTER = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_CENTER;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_LEFT = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_LEFT;
    enum MyCSS_PROPERTY_BACKGROUND_POSITION_TOP = mycss_property_background_position.MyCSS_PROPERTY_BACKGROUND_POSITION_TOP;
    alias mycss_property_background_position_t = mycss_property_background_position;
    mycss_values_image_t* mycss_values_image_list_add_entry(mycss_entry_t*, mycss_values_image_list_t*) @nogc nothrow;
    mycss_values_background_repeat_t* mycss_values_background_repeat_list_add_entry(mycss_entry_t*, mycss_values_background_repeat_list_t*) @nogc nothrow;
    mycss_values_background_size_entry_t* mycss_values_background_size_list_add_entry(mycss_entry_t*, mycss_values_background_size_list_t*) @nogc nothrow;
    mycss_values_background_t* mycss_values_background_list_add_entry(mycss_entry_t*, mycss_values_background_list_t*) @nogc nothrow;
    mycss_values_background_t* mycss_values_background_list_current_entry(mycss_values_background_list_t*) @nogc nothrow;
    enum mycss_property_background_repeat
    {
        MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_X = 273,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_ROUND = 280,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_NO_REPEAT = 224,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_INITIAL = 147,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_Y = 274,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_SPACE = 318,
        MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT = 272,
    }
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_X = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_X;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_ROUND = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_ROUND;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_UNSET = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_INHERIT = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_NO_REPEAT = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_NO_REPEAT;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_INITIAL = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_INITIAL;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_Y = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT_Y;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_SPACE = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_SPACE;
    enum MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT = mycss_property_background_repeat.MyCSS_PROPERTY_BACKGROUND_REPEAT_REPEAT;
    alias mycss_property_background_repeat_t = mycss_property_background_repeat;
    enum mycss_property_background_size
    {
        MyCSS_PROPERTY_BACKGROUND_SIZE_COVER = 76,
        MyCSS_PROPERTY_BACKGROUND_SIZE_AUTO = 24,
        MyCSS_PROPERTY_BACKGROUND_SIZE_UNSET = 367,
        MyCSS_PROPERTY_BACKGROUND_SIZE_CONTAIN = 68,
        MyCSS_PROPERTY_BACKGROUND_SIZE_INHERIT = 146,
        MyCSS_PROPERTY_BACKGROUND_SIZE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_COVER = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_COVER;
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_AUTO = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_AUTO;
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_UNSET = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_UNSET;
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_CONTAIN = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_CONTAIN;
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_INHERIT = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_INHERIT;
    enum MyCSS_PROPERTY_BACKGROUND_SIZE_INITIAL = mycss_property_background_size.MyCSS_PROPERTY_BACKGROUND_SIZE_INITIAL;
    alias mycss_property_background_size_t = mycss_property_background_size;
    alias mycss_property_bookmark_level_t = mycss_property_bookmark_level;
    enum mycss_property_bookmark_level
    {
        MyCSS_PROPERTY_BOOKMARK_LEVEL_NONE = 211,
    }
    enum MyCSS_PROPERTY_BOOKMARK_LEVEL_NONE = mycss_property_bookmark_level.MyCSS_PROPERTY_BOOKMARK_LEVEL_NONE;
    enum mycss_property_bookmark_state
    {
        MyCSS_PROPERTY_BOOKMARK_STATE_CLOSED = 60,
        MyCSS_PROPERTY_BOOKMARK_STATE_OPEN = 234,
    }
    enum MyCSS_PROPERTY_BOOKMARK_STATE_CLOSED = mycss_property_bookmark_state.MyCSS_PROPERTY_BOOKMARK_STATE_CLOSED;
    enum MyCSS_PROPERTY_BOOKMARK_STATE_OPEN = mycss_property_bookmark_state.MyCSS_PROPERTY_BOOKMARK_STATE_OPEN;
    alias mycss_property_bookmark_state_t = mycss_property_bookmark_state;
    enum mycss_property_border
    {
        MyCSS_PROPERTY_BORDER_RIDGE = 276,
        MyCSS_PROPERTY_BORDER__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_SOLID = 317,
        MyCSS_PROPERTY_BORDER_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_NONE = 211,
        MyCSS_PROPERTY_BORDER_DASHED = 82,
        MyCSS_PROPERTY_BORDER_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_THICK = 353,
        MyCSS_PROPERTY_BORDER_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_THIN = 354,
        MyCSS_PROPERTY_BORDER__COLOR = 400,
        MyCSS_PROPERTY_BORDER_INSET = 155,
        MyCSS_PROPERTY_BORDER_UNSET = 367,
        MyCSS_PROPERTY_BORDER_OUTSET = 239,
    }
    enum MyCSS_PROPERTY_BORDER_RIDGE = mycss_property_border.MyCSS_PROPERTY_BORDER_RIDGE;
    enum MyCSS_PROPERTY_BORDER__LENGTH = mycss_property_border.MyCSS_PROPERTY_BORDER__LENGTH;
    enum MyCSS_PROPERTY_BORDER_SOLID = mycss_property_border.MyCSS_PROPERTY_BORDER_SOLID;
    enum MyCSS_PROPERTY_BORDER_HIDDEN = mycss_property_border.MyCSS_PROPERTY_BORDER_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_DOTTED = mycss_property_border.MyCSS_PROPERTY_BORDER_DOTTED;
    enum MyCSS_PROPERTY_BORDER_NONE = mycss_property_border.MyCSS_PROPERTY_BORDER_NONE;
    enum MyCSS_PROPERTY_BORDER_DASHED = mycss_property_border.MyCSS_PROPERTY_BORDER_DASHED;
    enum MyCSS_PROPERTY_BORDER_INITIAL = mycss_property_border.MyCSS_PROPERTY_BORDER_INITIAL;
    enum MyCSS_PROPERTY_BORDER_THICK = mycss_property_border.MyCSS_PROPERTY_BORDER_THICK;
    enum MyCSS_PROPERTY_BORDER_MEDIUM = mycss_property_border.MyCSS_PROPERTY_BORDER_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_GROOVE = mycss_property_border.MyCSS_PROPERTY_BORDER_GROOVE;
    enum MyCSS_PROPERTY_BORDER_INHERIT = mycss_property_border.MyCSS_PROPERTY_BORDER_INHERIT;
    enum MyCSS_PROPERTY_BORDER_DOUBLE = mycss_property_border.MyCSS_PROPERTY_BORDER_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_THIN = mycss_property_border.MyCSS_PROPERTY_BORDER_THIN;
    enum MyCSS_PROPERTY_BORDER__COLOR = mycss_property_border.MyCSS_PROPERTY_BORDER__COLOR;
    enum MyCSS_PROPERTY_BORDER_INSET = mycss_property_border.MyCSS_PROPERTY_BORDER_INSET;
    enum MyCSS_PROPERTY_BORDER_UNSET = mycss_property_border.MyCSS_PROPERTY_BORDER_UNSET;
    enum MyCSS_PROPERTY_BORDER_OUTSET = mycss_property_border.MyCSS_PROPERTY_BORDER_OUTSET;
    alias mycss_property_border_t = mycss_property_border;
    alias mycss_property_border_block_end_t = mycss_property_border_block_end;
    enum mycss_property_border_block_end
    {
        MyCSS_PROPERTY_BORDER_BLOCK_END_THIN = 354,
        MyCSS_PROPERTY_BORDER_BLOCK_END__COLOR = 400,
        MyCSS_PROPERTY_BORDER_BLOCK_END__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BLOCK_END_NONE = 211,
        MyCSS_PROPERTY_BORDER_BLOCK_END_THICK = 353,
        MyCSS_PROPERTY_BORDER_BLOCK_END_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BLOCK_END_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BLOCK_END_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_BLOCK_END_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BLOCK_END_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BLOCK_END_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BLOCK_END_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BLOCK_END_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BLOCK_END_INSET = 155,
        MyCSS_PROPERTY_BORDER_BLOCK_END_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_END_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BLOCK_END_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_END_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_THIN = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_THIN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END__COLOR = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END__COLOR;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END__LENGTH = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_NONE = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_NONE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_THICK = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_THICK;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_MEDIUM = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_SOLID = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_SOLID;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_HIDDEN = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_DOTTED = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_DASHED = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_DASHED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_RIDGE = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_DOUBLE = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_GROOVE = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_INSET = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_INSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_UNSET = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_OUTSET = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_INHERIT = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_INITIAL = mycss_property_border_block_end.MyCSS_PROPERTY_BORDER_BLOCK_END_INITIAL;
    alias mycss_property_border_block_end_color_t = mycss_property_border_block_end_color;
    enum mycss_property_border_block_end_color
    {
        MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR__COLOR = 400,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INHERIT = mycss_property_border_block_end_color.MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INITIAL = mycss_property_border_block_end_color.MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_UNSET = mycss_property_border_block_end_color.MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR__COLOR = mycss_property_border_block_end_color.MyCSS_PROPERTY_BORDER_BLOCK_END_COLOR__COLOR;
    enum mycss_property_border_block_end_style
    {
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_HIDDEN = 136,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INITIAL = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_NONE = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_SOLID = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOTTED = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DASHED = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_RIDGE = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOUBLE = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_GROOVE = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INSET = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_UNSET = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_OUTSET = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INHERIT = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_HIDDEN = mycss_property_border_block_end_style.MyCSS_PROPERTY_BORDER_BLOCK_END_STYLE_HIDDEN;
    alias mycss_property_border_block_end_style_t = mycss_property_border_block_end_style;
    alias mycss_property_border_block_end_width_t = mycss_property_border_block_end_width;
    enum mycss_property_border_block_end_width
    {
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH__LENGTH = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THICK = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_MEDIUM = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_UNSET = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INHERIT = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THIN = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INITIAL = mycss_property_border_block_end_width.MyCSS_PROPERTY_BORDER_BLOCK_END_WIDTH_INITIAL;
    alias mycss_property_border_block_start_t = mycss_property_border_block_start;
    enum mycss_property_border_block_start
    {
        MyCSS_PROPERTY_BORDER_BLOCK_START_THIN = 354,
        MyCSS_PROPERTY_BORDER_BLOCK_START__COLOR = 400,
        MyCSS_PROPERTY_BORDER_BLOCK_START__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BLOCK_START_NONE = 211,
        MyCSS_PROPERTY_BORDER_BLOCK_START_THICK = 353,
        MyCSS_PROPERTY_BORDER_BLOCK_START_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BLOCK_START_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BLOCK_START_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_BLOCK_START_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BLOCK_START_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BLOCK_START_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BLOCK_START_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BLOCK_START_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BLOCK_START_INSET = 155,
        MyCSS_PROPERTY_BORDER_BLOCK_START_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_START_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BLOCK_START_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_START_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_THIN = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_THIN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START__COLOR = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START__COLOR;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START__LENGTH = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_NONE = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_NONE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_THICK = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_THICK;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_MEDIUM = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_SOLID = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_SOLID;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_HIDDEN = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_DOTTED = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_DASHED = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_DASHED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_RIDGE = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_DOUBLE = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_GROOVE = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_INSET = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_INSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_UNSET = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_OUTSET = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_INHERIT = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_INITIAL = mycss_property_border_block_start.MyCSS_PROPERTY_BORDER_BLOCK_START_INITIAL;
    alias mycss_property_border_block_start_color_t = mycss_property_border_block_start_color;
    enum mycss_property_border_block_start_color
    {
        MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_UNSET = mycss_property_border_block_start_color.MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR__COLOR = mycss_property_border_block_start_color.MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INHERIT = mycss_property_border_block_start_color.MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INITIAL = mycss_property_border_block_start_color.MyCSS_PROPERTY_BORDER_BLOCK_START_COLOR_INITIAL;
    alias mycss_property_border_block_start_style_t = mycss_property_border_block_start_style;
    enum mycss_property_border_block_start_style
    {
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_HIDDEN = 136,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_SOLID = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INITIAL = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_NONE = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOTTED = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DASHED = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_RIDGE = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOUBLE = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_GROOVE = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INSET = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_UNSET = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_OUTSET = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INHERIT = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_HIDDEN = mycss_property_border_block_start_style.MyCSS_PROPERTY_BORDER_BLOCK_START_STYLE_HIDDEN;
    alias mycss_property_border_block_start_width_t = mycss_property_border_block_start_width;
    enum mycss_property_border_block_start_width
    {
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH__LENGTH = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THICK = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_MEDIUM = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_UNSET = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INHERIT = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THIN = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INITIAL = mycss_property_border_block_start_width.MyCSS_PROPERTY_BORDER_BLOCK_START_WIDTH_INITIAL;
    alias mycss_property_border_bottom_t = mycss_property_border_bottom;
    enum mycss_property_border_bottom
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BOTTOM_THIN = 354,
        MyCSS_PROPERTY_BORDER_BOTTOM__COLOR = 400,
        MyCSS_PROPERTY_BORDER_BOTTOM__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BOTTOM_NONE = 211,
        MyCSS_PROPERTY_BORDER_BOTTOM_THICK = 353,
        MyCSS_PROPERTY_BORDER_BOTTOM_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BOTTOM_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BOTTOM_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_BOTTOM_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BOTTOM_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BOTTOM_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BOTTOM_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BOTTOM_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BOTTOM_INSET = 155,
        MyCSS_PROPERTY_BORDER_BOTTOM_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BOTTOM_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_INITIAL = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_THIN = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_THIN;
    enum MyCSS_PROPERTY_BORDER_BOTTOM__COLOR = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM__COLOR;
    enum MyCSS_PROPERTY_BORDER_BOTTOM__LENGTH = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_NONE = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_NONE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_THICK = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_THICK;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_MEDIUM = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_SOLID = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_SOLID;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_HIDDEN = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_DOTTED = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_DASHED = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_DASHED;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIDGE = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_DOUBLE = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_GROOVE = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_INSET = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_INSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_UNSET = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_OUTSET = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_INHERIT = mycss_property_border_bottom.MyCSS_PROPERTY_BORDER_BOTTOM_INHERIT;
    alias mycss_property_border_bottom_color_t = mycss_property_border_bottom_color;
    enum mycss_property_border_bottom_color
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_UNSET = mycss_property_border_bottom_color.MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_COLOR__COLOR = mycss_property_border_bottom_color.MyCSS_PROPERTY_BORDER_BOTTOM_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INHERIT = mycss_property_border_bottom_color.MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INITIAL = mycss_property_border_bottom_color.MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_CURRENTCOLOR = mycss_property_border_bottom_color.MyCSS_PROPERTY_BORDER_BOTTOM_COLOR_CURRENTCOLOR;
    alias mycss_property_border_bottom_left_radius_t = mycss_property_border_bottom_left_radius;
    enum mycss_property_border_bottom_left_radius
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_UNSET = mycss_property_border_bottom_left_radius.MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__LENGTH = mycss_property_border_bottom_left_radius.MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INHERIT = mycss_property_border_bottom_left_radius.MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INITIAL = mycss_property_border_bottom_left_radius.MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__PERCENTAGE = mycss_property_border_bottom_left_radius.MyCSS_PROPERTY_BORDER_BOTTOM_LEFT_RADIUS__PERCENTAGE;
    alias mycss_property_border_bottom_right_radius_t = mycss_property_border_bottom_right_radius;
    enum mycss_property_border_bottom_right_radius
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_UNSET = mycss_property_border_bottom_right_radius.MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__LENGTH = mycss_property_border_bottom_right_radius.MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INHERIT = mycss_property_border_bottom_right_radius.MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INITIAL = mycss_property_border_bottom_right_radius.MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS_INITIAL;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__PERCENTAGE = mycss_property_border_bottom_right_radius.MyCSS_PROPERTY_BORDER_BOTTOM_RIGHT_RADIUS__PERCENTAGE;
    alias mycss_property_border_bottom_style_t = mycss_property_border_bottom_style;
    enum mycss_property_border_bottom_style
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_NONE = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_SOLID = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_HIDDEN = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOTTED = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DASHED = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_RIDGE = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOUBLE = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_GROOVE = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INSET = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_UNSET = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_OUTSET = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INHERIT = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INITIAL = mycss_property_border_bottom_style.MyCSS_PROPERTY_BORDER_BOTTOM_STYLE_INITIAL;
    enum mycss_property_border_bottom_width
    {
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH__LENGTH = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THICK = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_MEDIUM = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_UNSET = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INHERIT = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THIN = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INITIAL = mycss_property_border_bottom_width.MyCSS_PROPERTY_BORDER_BOTTOM_WIDTH_INITIAL;
    alias mycss_property_border_bottom_width_t = mycss_property_border_bottom_width;
    enum mycss_property_border_collapse
    {
        MyCSS_PROPERTY_BORDER_COLLAPSE_COLLAPSE = 61,
        MyCSS_PROPERTY_BORDER_COLLAPSE_SEPARATE = 298,
    }
    enum MyCSS_PROPERTY_BORDER_COLLAPSE_COLLAPSE = mycss_property_border_collapse.MyCSS_PROPERTY_BORDER_COLLAPSE_COLLAPSE;
    enum MyCSS_PROPERTY_BORDER_COLLAPSE_SEPARATE = mycss_property_border_collapse.MyCSS_PROPERTY_BORDER_COLLAPSE_SEPARATE;
    alias mycss_property_border_collapse_t = mycss_property_border_collapse;
    enum mycss_property_border_color
    {
        MyCSS_PROPERTY_BORDER_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_BORDER_COLOR_INHERIT = mycss_property_border_color.MyCSS_PROPERTY_BORDER_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_COLOR_UNSET = mycss_property_border_color.MyCSS_PROPERTY_BORDER_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_COLOR__COLOR = mycss_property_border_color.MyCSS_PROPERTY_BORDER_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_COLOR_INITIAL = mycss_property_border_color.MyCSS_PROPERTY_BORDER_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_COLOR_CURRENTCOLOR = mycss_property_border_color.MyCSS_PROPERTY_BORDER_COLOR_CURRENTCOLOR;
    alias mycss_property_border_color_t = mycss_property_border_color;
    enum mycss_property_border_image_repeat
    {
        MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_ROUND = 280,
        MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_REPEAT = 272,
        MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_STRETCH = 332,
        MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_SPACE = 318,
    }
    enum MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_ROUND = mycss_property_border_image_repeat.MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_ROUND;
    enum MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_REPEAT = mycss_property_border_image_repeat.MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_REPEAT;
    enum MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_STRETCH = mycss_property_border_image_repeat.MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_STRETCH;
    enum MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_SPACE = mycss_property_border_image_repeat.MyCSS_PROPERTY_BORDER_IMAGE_REPEAT_SPACE;
    alias mycss_property_border_image_repeat_t = mycss_property_border_image_repeat;
    alias mycss_property_border_image_slice_t = mycss_property_border_image_slice;
    enum mycss_property_border_image_slice
    {
        MyCSS_PROPERTY_BORDER_IMAGE_SLICE_FILL = 112,
    }
    enum MyCSS_PROPERTY_BORDER_IMAGE_SLICE_FILL = mycss_property_border_image_slice.MyCSS_PROPERTY_BORDER_IMAGE_SLICE_FILL;
    alias mycss_property_border_image_width_t = mycss_property_border_image_width;
    enum mycss_property_border_image_width
    {
        MyCSS_PROPERTY_BORDER_IMAGE_WIDTH_AUTO = 24,
    }
    enum MyCSS_PROPERTY_BORDER_IMAGE_WIDTH_AUTO = mycss_property_border_image_width.MyCSS_PROPERTY_BORDER_IMAGE_WIDTH_AUTO;
    alias mycss_property_border_inline_end_t = mycss_property_border_inline_end;
    enum mycss_property_border_inline_end
    {
        MyCSS_PROPERTY_BORDER_INLINE_END_THIN = 354,
        MyCSS_PROPERTY_BORDER_INLINE_END__COLOR = 400,
        MyCSS_PROPERTY_BORDER_INLINE_END__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_INLINE_END_NONE = 211,
        MyCSS_PROPERTY_BORDER_INLINE_END_THICK = 353,
        MyCSS_PROPERTY_BORDER_INLINE_END_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_INLINE_END_SOLID = 317,
        MyCSS_PROPERTY_BORDER_INLINE_END_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_INLINE_END_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_INLINE_END_DASHED = 82,
        MyCSS_PROPERTY_BORDER_INLINE_END_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_INLINE_END_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_INLINE_END_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_INLINE_END_INSET = 155,
        MyCSS_PROPERTY_BORDER_INLINE_END_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_END_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_INLINE_END_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_END_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_END_THIN = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_THIN;
    enum MyCSS_PROPERTY_BORDER_INLINE_END__COLOR = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END__COLOR;
    enum MyCSS_PROPERTY_BORDER_INLINE_END__LENGTH = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END__LENGTH;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_NONE = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_NONE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_THICK = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_THICK;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_MEDIUM = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_SOLID = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_SOLID;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_HIDDEN = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_DOTTED = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_DOTTED;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_DASHED = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_DASHED;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_RIDGE = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_RIDGE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_DOUBLE = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_GROOVE = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_GROOVE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_INSET = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_INSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_UNSET = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_OUTSET = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_OUTSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_INHERIT = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_INITIAL = mycss_property_border_inline_end.MyCSS_PROPERTY_BORDER_INLINE_END_INITIAL;
    enum mycss_property_border_inline_end_color
    {
        MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_END_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_UNSET = mycss_property_border_inline_end_color.MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_COLOR__COLOR = mycss_property_border_inline_end_color.MyCSS_PROPERTY_BORDER_INLINE_END_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INHERIT = mycss_property_border_inline_end_color.MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INITIAL = mycss_property_border_inline_end_color.MyCSS_PROPERTY_BORDER_INLINE_END_COLOR_INITIAL;
    alias mycss_property_border_inline_end_color_t = mycss_property_border_inline_end_color;
    alias mycss_property_border_inline_end_style_t = mycss_property_border_inline_end_style;
    enum mycss_property_border_inline_end_style
    {
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_HIDDEN = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_NONE = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_SOLID = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOTTED = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DASHED = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_RIDGE = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOUBLE = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_GROOVE = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INSET = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_UNSET = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_OUTSET = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INHERIT = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INITIAL = mycss_property_border_inline_end_style.MyCSS_PROPERTY_BORDER_INLINE_END_STYLE_INITIAL;
    alias mycss_property_border_inline_end_width_t = mycss_property_border_inline_end_width;
    enum mycss_property_border_inline_end_width
    {
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH__LENGTH = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THICK = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_MEDIUM = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_UNSET = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INHERIT = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THIN = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INITIAL = mycss_property_border_inline_end_width.MyCSS_PROPERTY_BORDER_INLINE_END_WIDTH_INITIAL;
    enum mycss_property_border_inline_start
    {
        MyCSS_PROPERTY_BORDER_INLINE_START_THIN = 354,
        MyCSS_PROPERTY_BORDER_INLINE_START__COLOR = 400,
        MyCSS_PROPERTY_BORDER_INLINE_START__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_INLINE_START_NONE = 211,
        MyCSS_PROPERTY_BORDER_INLINE_START_THICK = 353,
        MyCSS_PROPERTY_BORDER_INLINE_START_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_INLINE_START_SOLID = 317,
        MyCSS_PROPERTY_BORDER_INLINE_START_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_INLINE_START_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_INLINE_START_DASHED = 82,
        MyCSS_PROPERTY_BORDER_INLINE_START_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_INLINE_START_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_INLINE_START_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_INLINE_START_INSET = 155,
        MyCSS_PROPERTY_BORDER_INLINE_START_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_START_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_INLINE_START_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_START_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_START_THIN = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_THIN;
    enum MyCSS_PROPERTY_BORDER_INLINE_START__COLOR = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START__COLOR;
    enum MyCSS_PROPERTY_BORDER_INLINE_START__LENGTH = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START__LENGTH;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_NONE = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_NONE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_THICK = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_THICK;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_MEDIUM = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_SOLID = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_SOLID;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_HIDDEN = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_DOTTED = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_DOTTED;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_DASHED = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_DASHED;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_RIDGE = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_RIDGE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_DOUBLE = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_GROOVE = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_GROOVE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_INSET = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_INSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_UNSET = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_OUTSET = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_OUTSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_INHERIT = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_INITIAL = mycss_property_border_inline_start.MyCSS_PROPERTY_BORDER_INLINE_START_INITIAL;
    alias mycss_property_border_inline_start_t = mycss_property_border_inline_start;
    alias mycss_property_border_inline_start_color_t = mycss_property_border_inline_start_color;
    enum mycss_property_border_inline_start_color
    {
        MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_INLINE_START_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_UNSET = mycss_property_border_inline_start_color.MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INITIAL = mycss_property_border_inline_start_color.MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_COLOR__COLOR = mycss_property_border_inline_start_color.MyCSS_PROPERTY_BORDER_INLINE_START_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INHERIT = mycss_property_border_inline_start_color.MyCSS_PROPERTY_BORDER_INLINE_START_COLOR_INHERIT;
    enum mycss_property_border_inline_start_style
    {
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_HIDDEN = 136,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INITIAL = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INITIAL;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_NONE = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_SOLID = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOTTED = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DASHED = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_RIDGE = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOUBLE = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_GROOVE = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INSET = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_UNSET = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_OUTSET = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INHERIT = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_HIDDEN = mycss_property_border_inline_start_style.MyCSS_PROPERTY_BORDER_INLINE_START_STYLE_HIDDEN;
    alias mycss_property_border_inline_start_style_t = mycss_property_border_inline_start_style;
    alias mycss_property_border_inline_start_width_t = mycss_property_border_inline_start_width;
    enum mycss_property_border_inline_start_width
    {
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH__LENGTH = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THICK = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_MEDIUM = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_UNSET = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INHERIT = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THIN = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INITIAL = mycss_property_border_inline_start_width.MyCSS_PROPERTY_BORDER_INLINE_START_WIDTH_INITIAL;
    alias mycss_property_border_left_t = mycss_property_border_left;
    enum mycss_property_border_left
    {
        MyCSS_PROPERTY_BORDER_LEFT_THIN = 354,
        MyCSS_PROPERTY_BORDER_LEFT__COLOR = 400,
        MyCSS_PROPERTY_BORDER_LEFT__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_LEFT_NONE = 211,
        MyCSS_PROPERTY_BORDER_LEFT_THICK = 353,
        MyCSS_PROPERTY_BORDER_LEFT_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_LEFT_SOLID = 317,
        MyCSS_PROPERTY_BORDER_LEFT_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_LEFT_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_LEFT_DASHED = 82,
        MyCSS_PROPERTY_BORDER_LEFT_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_LEFT_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_LEFT_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_LEFT_INSET = 155,
        MyCSS_PROPERTY_BORDER_LEFT_UNSET = 367,
        MyCSS_PROPERTY_BORDER_LEFT_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_LEFT_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_LEFT_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_LEFT_THIN = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_THIN;
    enum MyCSS_PROPERTY_BORDER_LEFT__COLOR = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT__COLOR;
    enum MyCSS_PROPERTY_BORDER_LEFT__LENGTH = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT__LENGTH;
    enum MyCSS_PROPERTY_BORDER_LEFT_NONE = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_NONE;
    enum MyCSS_PROPERTY_BORDER_LEFT_THICK = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_THICK;
    enum MyCSS_PROPERTY_BORDER_LEFT_MEDIUM = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_LEFT_SOLID = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_SOLID;
    enum MyCSS_PROPERTY_BORDER_LEFT_HIDDEN = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_LEFT_DOTTED = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_DOTTED;
    enum MyCSS_PROPERTY_BORDER_LEFT_DASHED = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_DASHED;
    enum MyCSS_PROPERTY_BORDER_LEFT_RIDGE = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_RIDGE;
    enum MyCSS_PROPERTY_BORDER_LEFT_DOUBLE = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_LEFT_GROOVE = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_GROOVE;
    enum MyCSS_PROPERTY_BORDER_LEFT_INSET = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_INSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_UNSET = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_UNSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_OUTSET = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_OUTSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_INHERIT = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_INHERIT;
    enum MyCSS_PROPERTY_BORDER_LEFT_INITIAL = mycss_property_border_left.MyCSS_PROPERTY_BORDER_LEFT_INITIAL;
    enum mycss_property_border_left_color
    {
        MyCSS_PROPERTY_BORDER_LEFT_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_LEFT_COLOR_CURRENTCOLOR = 80,
        MyCSS_PROPERTY_BORDER_LEFT_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_LEFT_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_LEFT_COLOR_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_BORDER_LEFT_COLOR_INITIAL = mycss_property_border_left_color.MyCSS_PROPERTY_BORDER_LEFT_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_LEFT_COLOR_CURRENTCOLOR = mycss_property_border_left_color.MyCSS_PROPERTY_BORDER_LEFT_COLOR_CURRENTCOLOR;
    enum MyCSS_PROPERTY_BORDER_LEFT_COLOR_UNSET = mycss_property_border_left_color.MyCSS_PROPERTY_BORDER_LEFT_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_COLOR__COLOR = mycss_property_border_left_color.MyCSS_PROPERTY_BORDER_LEFT_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_LEFT_COLOR_INHERIT = mycss_property_border_left_color.MyCSS_PROPERTY_BORDER_LEFT_COLOR_INHERIT;
    alias mycss_property_border_left_color_t = mycss_property_border_left_color;
    enum mycss_property_border_left_style
    {
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_LEFT_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_NONE = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_SOLID = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_HIDDEN = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOTTED = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_DASHED = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_RIDGE = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOUBLE = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_GROOVE = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_INSET = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_UNSET = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_OUTSET = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_INHERIT = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_LEFT_STYLE_INITIAL = mycss_property_border_left_style.MyCSS_PROPERTY_BORDER_LEFT_STYLE_INITIAL;
    alias mycss_property_border_left_style_t = mycss_property_border_left_style;
    enum mycss_property_border_left_width
    {
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THIN = 354,
    }
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INITIAL = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INITIAL;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH__LENGTH = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THICK = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_MEDIUM = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_UNSET = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INHERIT = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THIN = mycss_property_border_left_width.MyCSS_PROPERTY_BORDER_LEFT_WIDTH_THIN;
    alias mycss_property_border_left_width_t = mycss_property_border_left_width;
    enum mycss_property_border_radius
    {
        MyCSS_PROPERTY_BORDER_RADIUS_UNSET = 367,
        MyCSS_PROPERTY_BORDER_RADIUS__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_RADIUS_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_RADIUS_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_RADIUS__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_BORDER_RADIUS_UNSET = mycss_property_border_radius.MyCSS_PROPERTY_BORDER_RADIUS_UNSET;
    enum MyCSS_PROPERTY_BORDER_RADIUS__LENGTH = mycss_property_border_radius.MyCSS_PROPERTY_BORDER_RADIUS__LENGTH;
    enum MyCSS_PROPERTY_BORDER_RADIUS_INHERIT = mycss_property_border_radius.MyCSS_PROPERTY_BORDER_RADIUS_INHERIT;
    enum MyCSS_PROPERTY_BORDER_RADIUS_INITIAL = mycss_property_border_radius.MyCSS_PROPERTY_BORDER_RADIUS_INITIAL;
    enum MyCSS_PROPERTY_BORDER_RADIUS__PERCENTAGE = mycss_property_border_radius.MyCSS_PROPERTY_BORDER_RADIUS__PERCENTAGE;
    alias mycss_property_border_radius_t = mycss_property_border_radius;
    enum mycss_property_border_right
    {
        MyCSS_PROPERTY_BORDER_RIGHT_THICK = 353,
        MyCSS_PROPERTY_BORDER_RIGHT_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_RIGHT_SOLID = 317,
        MyCSS_PROPERTY_BORDER_RIGHT_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_RIGHT_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_RIGHT_DASHED = 82,
        MyCSS_PROPERTY_BORDER_RIGHT_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_RIGHT_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_RIGHT_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_RIGHT_INSET = 155,
        MyCSS_PROPERTY_BORDER_RIGHT_UNSET = 367,
        MyCSS_PROPERTY_BORDER_RIGHT_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_RIGHT_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_RIGHT_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_RIGHT_THIN = 354,
        MyCSS_PROPERTY_BORDER_RIGHT__COLOR = 400,
        MyCSS_PROPERTY_BORDER_RIGHT__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_RIGHT_NONE = 211,
    }
    enum MyCSS_PROPERTY_BORDER_RIGHT_THICK = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_THICK;
    enum MyCSS_PROPERTY_BORDER_RIGHT_MEDIUM = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_RIGHT_SOLID = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_SOLID;
    enum MyCSS_PROPERTY_BORDER_RIGHT_HIDDEN = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_RIGHT_DOTTED = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_DOTTED;
    enum MyCSS_PROPERTY_BORDER_RIGHT_DASHED = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_DASHED;
    enum MyCSS_PROPERTY_BORDER_RIGHT_RIDGE = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_RIDGE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_DOUBLE = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_GROOVE = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_GROOVE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_INSET = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_INSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_UNSET = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_UNSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_OUTSET = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_OUTSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_INHERIT = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_INHERIT;
    enum MyCSS_PROPERTY_BORDER_RIGHT_INITIAL = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_INITIAL;
    enum MyCSS_PROPERTY_BORDER_RIGHT_THIN = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_THIN;
    enum MyCSS_PROPERTY_BORDER_RIGHT__COLOR = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT__COLOR;
    enum MyCSS_PROPERTY_BORDER_RIGHT__LENGTH = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT__LENGTH;
    enum MyCSS_PROPERTY_BORDER_RIGHT_NONE = mycss_property_border_right.MyCSS_PROPERTY_BORDER_RIGHT_NONE;
    alias mycss_property_border_right_t = mycss_property_border_right;
    alias mycss_property_border_right_color_t = mycss_property_border_right_color;
    enum mycss_property_border_right_color
    {
        MyCSS_PROPERTY_BORDER_RIGHT_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_RIGHT_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_RIGHT_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_BORDER_RIGHT_COLOR_UNSET = mycss_property_border_right_color.MyCSS_PROPERTY_BORDER_RIGHT_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_COLOR__COLOR = mycss_property_border_right_color.MyCSS_PROPERTY_BORDER_RIGHT_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INHERIT = mycss_property_border_right_color.MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INITIAL = mycss_property_border_right_color.MyCSS_PROPERTY_BORDER_RIGHT_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_RIGHT_COLOR_CURRENTCOLOR = mycss_property_border_right_color.MyCSS_PROPERTY_BORDER_RIGHT_COLOR_CURRENTCOLOR;
    alias mycss_property_border_right_style_t = mycss_property_border_right_style;
    enum mycss_property_border_right_style
    {
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_RIGHT_STYLE_HIDDEN = 136,
    }
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOTTED = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DASHED = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_RIDGE = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOUBLE = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_GROOVE = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INSET = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_UNSET = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_OUTSET = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INHERIT = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INITIAL = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_INITIAL;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_NONE = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_SOLID = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_RIGHT_STYLE_HIDDEN = mycss_property_border_right_style.MyCSS_PROPERTY_BORDER_RIGHT_STYLE_HIDDEN;
    enum mycss_property_border_right_width
    {
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THIN = 354,
    }
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH__LENGTH = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THICK = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_MEDIUM = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_UNSET = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INHERIT = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INITIAL = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_INITIAL;
    enum MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THIN = mycss_property_border_right_width.MyCSS_PROPERTY_BORDER_RIGHT_WIDTH_THIN;
    alias mycss_property_border_right_width_t = mycss_property_border_right_width;
    enum mycss_property_border_style
    {
        MyCSS_PROPERTY_BORDER_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_STYLE_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_STYLE_SOLID = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_STYLE_HIDDEN = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_STYLE_DOTTED = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_STYLE_DASHED = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_STYLE_RIDGE = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_STYLE_NONE = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_STYLE_DOUBLE = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_STYLE_GROOVE = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_STYLE_INSET = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_STYLE_UNSET = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_STYLE_OUTSET = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_STYLE_INHERIT = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_STYLE_INITIAL = mycss_property_border_style.MyCSS_PROPERTY_BORDER_STYLE_INITIAL;
    alias mycss_property_border_style_t = mycss_property_border_style;
    enum mycss_property_border_top
    {
        MyCSS_PROPERTY_BORDER_TOP_NONE = 211,
        MyCSS_PROPERTY_BORDER_TOP__COLOR = 400,
        MyCSS_PROPERTY_BORDER_TOP_THIN = 354,
        MyCSS_PROPERTY_BORDER_TOP__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_TOP_THICK = 353,
        MyCSS_PROPERTY_BORDER_TOP_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_TOP_SOLID = 317,
        MyCSS_PROPERTY_BORDER_TOP_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_TOP_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_TOP_DASHED = 82,
        MyCSS_PROPERTY_BORDER_TOP_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_TOP_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_TOP_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_TOP_INSET = 155,
        MyCSS_PROPERTY_BORDER_TOP_UNSET = 367,
        MyCSS_PROPERTY_BORDER_TOP_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_TOP_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_NONE = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_NONE;
    enum MyCSS_PROPERTY_BORDER_TOP__COLOR = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP__COLOR;
    enum MyCSS_PROPERTY_BORDER_TOP_THIN = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_THIN;
    enum MyCSS_PROPERTY_BORDER_TOP__LENGTH = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP__LENGTH;
    enum MyCSS_PROPERTY_BORDER_TOP_THICK = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_THICK;
    enum MyCSS_PROPERTY_BORDER_TOP_MEDIUM = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_TOP_SOLID = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_SOLID;
    enum MyCSS_PROPERTY_BORDER_TOP_HIDDEN = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_TOP_DOTTED = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_DOTTED;
    enum MyCSS_PROPERTY_BORDER_TOP_DASHED = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_DASHED;
    enum MyCSS_PROPERTY_BORDER_TOP_RIDGE = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_RIDGE;
    enum MyCSS_PROPERTY_BORDER_TOP_DOUBLE = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_TOP_GROOVE = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_GROOVE;
    enum MyCSS_PROPERTY_BORDER_TOP_INSET = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_INSET;
    enum MyCSS_PROPERTY_BORDER_TOP_UNSET = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_UNSET;
    enum MyCSS_PROPERTY_BORDER_TOP_OUTSET = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_OUTSET;
    enum MyCSS_PROPERTY_BORDER_TOP_INHERIT = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_INITIAL = mycss_property_border_top.MyCSS_PROPERTY_BORDER_TOP_INITIAL;
    alias mycss_property_border_top_t = mycss_property_border_top;
    enum mycss_property_border_top_color
    {
        MyCSS_PROPERTY_BORDER_TOP_COLOR_UNSET = 367,
        MyCSS_PROPERTY_BORDER_TOP_COLOR__COLOR = 400,
        MyCSS_PROPERTY_BORDER_TOP_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_TOP_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_COLOR_UNSET = mycss_property_border_top_color.MyCSS_PROPERTY_BORDER_TOP_COLOR_UNSET;
    enum MyCSS_PROPERTY_BORDER_TOP_COLOR__COLOR = mycss_property_border_top_color.MyCSS_PROPERTY_BORDER_TOP_COLOR__COLOR;
    enum MyCSS_PROPERTY_BORDER_TOP_COLOR_INHERIT = mycss_property_border_top_color.MyCSS_PROPERTY_BORDER_TOP_COLOR_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_COLOR_INITIAL = mycss_property_border_top_color.MyCSS_PROPERTY_BORDER_TOP_COLOR_INITIAL;
    enum MyCSS_PROPERTY_BORDER_TOP_COLOR_CURRENTCOLOR = mycss_property_border_top_color.MyCSS_PROPERTY_BORDER_TOP_COLOR_CURRENTCOLOR;
    alias mycss_property_border_top_color_t = mycss_property_border_top_color;
    enum mycss_property_border_top_left_radius
    {
        MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_UNSET = 367,
        MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_UNSET = mycss_property_border_top_left_radius.MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_UNSET;
    enum MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__LENGTH = mycss_property_border_top_left_radius.MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__LENGTH;
    enum MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INHERIT = mycss_property_border_top_left_radius.MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INITIAL = mycss_property_border_top_left_radius.MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS_INITIAL;
    enum MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__PERCENTAGE = mycss_property_border_top_left_radius.MyCSS_PROPERTY_BORDER_TOP_LEFT_RADIUS__PERCENTAGE;
    alias mycss_property_border_top_left_radius_t = mycss_property_border_top_left_radius;
    enum mycss_property_border_top_right_radius
    {
        MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INITIAL = 147,
        MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__PERCENTAGE = 413,
        MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_UNSET = 367,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INHERIT = mycss_property_border_top_right_radius.MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__LENGTH = mycss_property_border_top_right_radius.MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__LENGTH;
    enum MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INITIAL = mycss_property_border_top_right_radius.MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_INITIAL;
    enum MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__PERCENTAGE = mycss_property_border_top_right_radius.MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS__PERCENTAGE;
    enum MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_UNSET = mycss_property_border_top_right_radius.MyCSS_PROPERTY_BORDER_TOP_RIGHT_RADIUS_UNSET;
    alias mycss_property_border_top_right_radius_t = mycss_property_border_top_right_radius;
    enum mycss_property_border_top_style
    {
        MyCSS_PROPERTY_BORDER_TOP_STYLE_NONE = 211,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_SOLID = 317,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_HIDDEN = 136,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_DASHED = 82,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_RIDGE = 276,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_GROOVE = 133,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_INSET = 155,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_UNSET = 367,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_OUTSET = 239,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_NONE = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_NONE;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_SOLID = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_SOLID;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_HIDDEN = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_HIDDEN;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_DOTTED = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_DOTTED;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_DASHED = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_DASHED;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_RIDGE = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_RIDGE;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_DOUBLE = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_GROOVE = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_GROOVE;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_INSET = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_INSET;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_UNSET = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_UNSET;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_OUTSET = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_OUTSET;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_INHERIT = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_STYLE_INITIAL = mycss_property_border_top_style.MyCSS_PROPERTY_BORDER_TOP_STYLE_INITIAL;
    alias mycss_property_border_top_style_t = mycss_property_border_top_style;
    enum mycss_property_border_top_width
    {
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_TOP_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_THIN = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH__LENGTH = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_THICK = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_MEDIUM = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_UNSET = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_INHERIT = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_TOP_WIDTH_INITIAL = mycss_property_border_top_width.MyCSS_PROPERTY_BORDER_TOP_WIDTH_INITIAL;
    alias mycss_property_border_top_width_t = mycss_property_border_top_width;
    alias mycss_property_border_width_t = mycss_property_border_width;
    enum mycss_property_border_width
    {
        MyCSS_PROPERTY_BORDER_WIDTH_THIN = 354,
        MyCSS_PROPERTY_BORDER_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_BORDER_WIDTH_THICK = 353,
        MyCSS_PROPERTY_BORDER_WIDTH_MEDIUM = 198,
        MyCSS_PROPERTY_BORDER_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_BORDER_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_BORDER_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BORDER_WIDTH_THIN = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_THIN;
    enum MyCSS_PROPERTY_BORDER_WIDTH__LENGTH = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_BORDER_WIDTH_THICK = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_THICK;
    enum MyCSS_PROPERTY_BORDER_WIDTH_MEDIUM = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_MEDIUM;
    enum MyCSS_PROPERTY_BORDER_WIDTH_UNSET = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_UNSET;
    enum MyCSS_PROPERTY_BORDER_WIDTH_INHERIT = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_BORDER_WIDTH_INITIAL = mycss_property_border_width.MyCSS_PROPERTY_BORDER_WIDTH_INITIAL;
    alias mycss_property_bottom_t = mycss_property_bottom;
    enum mycss_property_bottom
    {
        MyCSS_PROPERTY_BOTTOM_AUTO = 24,
        MyCSS_PROPERTY_BOTTOM__LENGTH = 410,
        MyCSS_PROPERTY_BOTTOM_UNSET = 367,
        MyCSS_PROPERTY_BOTTOM__PERCENTAGE = 413,
        MyCSS_PROPERTY_BOTTOM_INHERIT = 146,
        MyCSS_PROPERTY_BOTTOM_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_BOTTOM_AUTO = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM_AUTO;
    enum MyCSS_PROPERTY_BOTTOM__LENGTH = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM__LENGTH;
    enum MyCSS_PROPERTY_BOTTOM_UNSET = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM_UNSET;
    enum MyCSS_PROPERTY_BOTTOM__PERCENTAGE = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM__PERCENTAGE;
    enum MyCSS_PROPERTY_BOTTOM_INHERIT = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM_INHERIT;
    enum MyCSS_PROPERTY_BOTTOM_INITIAL = mycss_property_bottom.MyCSS_PROPERTY_BOTTOM_INITIAL;
    enum mycss_property_box_decoration_break
    {
        MyCSS_PROPERTY_BOX_DECORATION_BREAK_SLICE = 310,
        MyCSS_PROPERTY_BOX_DECORATION_BREAK_CLONE = 59,
    }
    enum MyCSS_PROPERTY_BOX_DECORATION_BREAK_SLICE = mycss_property_box_decoration_break.MyCSS_PROPERTY_BOX_DECORATION_BREAK_SLICE;
    enum MyCSS_PROPERTY_BOX_DECORATION_BREAK_CLONE = mycss_property_box_decoration_break.MyCSS_PROPERTY_BOX_DECORATION_BREAK_CLONE;
    alias mycss_property_box_decoration_break_t = mycss_property_box_decoration_break;
    alias mycss_property_box_shadow_t = mycss_property_box_shadow;
    enum mycss_property_box_shadow
    {
        MyCSS_PROPERTY_BOX_SHADOW_NONE = 211,
    }
    enum MyCSS_PROPERTY_BOX_SHADOW_NONE = mycss_property_box_shadow.MyCSS_PROPERTY_BOX_SHADOW_NONE;
    enum mycss_property_box_sizing
    {
        MyCSS_PROPERTY_BOX_SIZING_INITIAL = 147,
        MyCSS_PROPERTY_BOX_SIZING_UNSET = 367,
        MyCSS_PROPERTY_BOX_SIZING_INHERIT = 146,
        MyCSS_PROPERTY_BOX_SIZING_BORDER_BOX = 42,
        MyCSS_PROPERTY_BOX_SIZING_CONTENT_BOX = 71,
    }
    enum MyCSS_PROPERTY_BOX_SIZING_INITIAL = mycss_property_box_sizing.MyCSS_PROPERTY_BOX_SIZING_INITIAL;
    enum MyCSS_PROPERTY_BOX_SIZING_UNSET = mycss_property_box_sizing.MyCSS_PROPERTY_BOX_SIZING_UNSET;
    enum MyCSS_PROPERTY_BOX_SIZING_INHERIT = mycss_property_box_sizing.MyCSS_PROPERTY_BOX_SIZING_INHERIT;
    enum MyCSS_PROPERTY_BOX_SIZING_BORDER_BOX = mycss_property_box_sizing.MyCSS_PROPERTY_BOX_SIZING_BORDER_BOX;
    enum MyCSS_PROPERTY_BOX_SIZING_CONTENT_BOX = mycss_property_box_sizing.MyCSS_PROPERTY_BOX_SIZING_CONTENT_BOX;
    alias mycss_property_box_sizing_t = mycss_property_box_sizing;
    enum mycss_property_box_suppress
    {
        MyCSS_PROPERTY_BOX_SUPPRESS_DISCARD = 87,
        MyCSS_PROPERTY_BOX_SUPPRESS_HIDE = 137,
        MyCSS_PROPERTY_BOX_SUPPRESS_SHOW = 302,
    }
    enum MyCSS_PROPERTY_BOX_SUPPRESS_DISCARD = mycss_property_box_suppress.MyCSS_PROPERTY_BOX_SUPPRESS_DISCARD;
    enum MyCSS_PROPERTY_BOX_SUPPRESS_HIDE = mycss_property_box_suppress.MyCSS_PROPERTY_BOX_SUPPRESS_HIDE;
    enum MyCSS_PROPERTY_BOX_SUPPRESS_SHOW = mycss_property_box_suppress.MyCSS_PROPERTY_BOX_SUPPRESS_SHOW;
    alias mycss_property_box_suppress_t = mycss_property_box_suppress;
    enum mycss_property_break_after
    {
        MyCSS_PROPERTY_BREAK_AFTER_PAGE = 246,
        MyCSS_PROPERTY_BREAK_AFTER_AVOID = 26,
        MyCSS_PROPERTY_BREAK_AFTER_AUTO = 24,
        MyCSS_PROPERTY_BREAK_AFTER_LEFT = 174,
        MyCSS_PROPERTY_BREAK_AFTER_AVOID_PAGE = 28,
        MyCSS_PROPERTY_BREAK_AFTER_RIGHT = 277,
        MyCSS_PROPERTY_BREAK_AFTER_RECTO = 268,
        MyCSS_PROPERTY_BREAK_AFTER_VERSO = 370,
        MyCSS_PROPERTY_BREAK_AFTER_COLUMN = 62,
        MyCSS_PROPERTY_BREAK_AFTER_REGION = 270,
        MyCSS_PROPERTY_BREAK_AFTER_AVOID_COLUMN = 27,
        MyCSS_PROPERTY_BREAK_AFTER_AVOID_REGION = 29,
    }
    enum MyCSS_PROPERTY_BREAK_AFTER_PAGE = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_PAGE;
    enum MyCSS_PROPERTY_BREAK_AFTER_AVOID = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_AVOID;
    enum MyCSS_PROPERTY_BREAK_AFTER_AUTO = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_AUTO;
    enum MyCSS_PROPERTY_BREAK_AFTER_LEFT = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_LEFT;
    enum MyCSS_PROPERTY_BREAK_AFTER_AVOID_PAGE = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_AVOID_PAGE;
    enum MyCSS_PROPERTY_BREAK_AFTER_RIGHT = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_RIGHT;
    enum MyCSS_PROPERTY_BREAK_AFTER_RECTO = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_RECTO;
    enum MyCSS_PROPERTY_BREAK_AFTER_VERSO = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_VERSO;
    enum MyCSS_PROPERTY_BREAK_AFTER_COLUMN = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_COLUMN;
    enum MyCSS_PROPERTY_BREAK_AFTER_REGION = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_REGION;
    enum MyCSS_PROPERTY_BREAK_AFTER_AVOID_COLUMN = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_AVOID_COLUMN;
    enum MyCSS_PROPERTY_BREAK_AFTER_AVOID_REGION = mycss_property_break_after.MyCSS_PROPERTY_BREAK_AFTER_AVOID_REGION;
    alias mycss_property_break_after_t = mycss_property_break_after;
    enum mycss_property_break_before
    {
        MyCSS_PROPERTY_BREAK_BEFORE_VERSO = 370,
        MyCSS_PROPERTY_BREAK_BEFORE_RECTO = 268,
        MyCSS_PROPERTY_BREAK_BEFORE_COLUMN = 62,
        MyCSS_PROPERTY_BREAK_BEFORE_REGION = 270,
        MyCSS_PROPERTY_BREAK_BEFORE_RIGHT = 277,
        MyCSS_PROPERTY_BREAK_BEFORE_AVOID_REGION = 29,
        MyCSS_PROPERTY_BREAK_BEFORE_AUTO = 24,
        MyCSS_PROPERTY_BREAK_BEFORE_PAGE = 246,
        MyCSS_PROPERTY_BREAK_BEFORE_AVOID = 26,
        MyCSS_PROPERTY_BREAK_BEFORE_AVOID_COLUMN = 27,
        MyCSS_PROPERTY_BREAK_BEFORE_LEFT = 174,
        MyCSS_PROPERTY_BREAK_BEFORE_AVOID_PAGE = 28,
    }
    enum MyCSS_PROPERTY_BREAK_BEFORE_VERSO = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_VERSO;
    enum MyCSS_PROPERTY_BREAK_BEFORE_RECTO = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_RECTO;
    enum MyCSS_PROPERTY_BREAK_BEFORE_COLUMN = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_COLUMN;
    enum MyCSS_PROPERTY_BREAK_BEFORE_REGION = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_REGION;
    enum MyCSS_PROPERTY_BREAK_BEFORE_RIGHT = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_RIGHT;
    enum MyCSS_PROPERTY_BREAK_BEFORE_AVOID_REGION = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_AVOID_REGION;
    enum MyCSS_PROPERTY_BREAK_BEFORE_AUTO = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_AUTO;
    enum MyCSS_PROPERTY_BREAK_BEFORE_PAGE = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_PAGE;
    enum MyCSS_PROPERTY_BREAK_BEFORE_AVOID = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_AVOID;
    enum MyCSS_PROPERTY_BREAK_BEFORE_AVOID_COLUMN = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_AVOID_COLUMN;
    enum MyCSS_PROPERTY_BREAK_BEFORE_LEFT = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_LEFT;
    enum MyCSS_PROPERTY_BREAK_BEFORE_AVOID_PAGE = mycss_property_break_before.MyCSS_PROPERTY_BREAK_BEFORE_AVOID_PAGE;
    alias mycss_property_break_before_t = mycss_property_break_before;
    enum mycss_property_break_inside
    {
        MyCSS_PROPERTY_BREAK_INSIDE_AVOID_PAGE = 28,
        MyCSS_PROPERTY_BREAK_INSIDE_AVOID_COLUMN = 27,
        MyCSS_PROPERTY_BREAK_INSIDE_AVOID_REGION = 29,
        MyCSS_PROPERTY_BREAK_INSIDE_AUTO = 24,
        MyCSS_PROPERTY_BREAK_INSIDE_AVOID = 26,
    }
    enum MyCSS_PROPERTY_BREAK_INSIDE_AVOID_PAGE = mycss_property_break_inside.MyCSS_PROPERTY_BREAK_INSIDE_AVOID_PAGE;
    enum MyCSS_PROPERTY_BREAK_INSIDE_AVOID_COLUMN = mycss_property_break_inside.MyCSS_PROPERTY_BREAK_INSIDE_AVOID_COLUMN;
    enum MyCSS_PROPERTY_BREAK_INSIDE_AVOID_REGION = mycss_property_break_inside.MyCSS_PROPERTY_BREAK_INSIDE_AVOID_REGION;
    enum MyCSS_PROPERTY_BREAK_INSIDE_AUTO = mycss_property_break_inside.MyCSS_PROPERTY_BREAK_INSIDE_AUTO;
    enum MyCSS_PROPERTY_BREAK_INSIDE_AVOID = mycss_property_break_inside.MyCSS_PROPERTY_BREAK_INSIDE_AVOID;
    alias mycss_property_break_inside_t = mycss_property_break_inside;
    alias mycss_property_caption_side_t = mycss_property_caption_side;
    enum mycss_property_caption_side
    {
        MyCSS_PROPERTY_CAPTION_SIDE_BOTTOM = 45,
        MyCSS_PROPERTY_CAPTION_SIDE_TOP = 356,
    }
    enum MyCSS_PROPERTY_CAPTION_SIDE_BOTTOM = mycss_property_caption_side.MyCSS_PROPERTY_CAPTION_SIDE_BOTTOM;
    enum MyCSS_PROPERTY_CAPTION_SIDE_TOP = mycss_property_caption_side.MyCSS_PROPERTY_CAPTION_SIDE_TOP;
    enum mycss_property_caret
    {
        MyCSS_PROPERTY_CARET_AUTO = 24,
    }
    enum MyCSS_PROPERTY_CARET_AUTO = mycss_property_caret.MyCSS_PROPERTY_CARET_AUTO;
    alias mycss_property_caret_t = mycss_property_caret;
    alias mycss_property_caret_color_t = mycss_property_caret_color;
    enum mycss_property_caret_color
    {
        MyCSS_PROPERTY_CARET_COLOR_AUTO = 24,
    }
    enum MyCSS_PROPERTY_CARET_COLOR_AUTO = mycss_property_caret_color.MyCSS_PROPERTY_CARET_COLOR_AUTO;
    enum mycss_property_caret_shape
    {
        MyCSS_PROPERTY_CARET_SHAPE_UNDERSCORE = 364,
        MyCSS_PROPERTY_CARET_SHAPE_BAR = 33,
        MyCSS_PROPERTY_CARET_SHAPE_AUTO = 24,
        MyCSS_PROPERTY_CARET_SHAPE_BLOCK = 38,
    }
    enum MyCSS_PROPERTY_CARET_SHAPE_UNDERSCORE = mycss_property_caret_shape.MyCSS_PROPERTY_CARET_SHAPE_UNDERSCORE;
    enum MyCSS_PROPERTY_CARET_SHAPE_BAR = mycss_property_caret_shape.MyCSS_PROPERTY_CARET_SHAPE_BAR;
    enum MyCSS_PROPERTY_CARET_SHAPE_AUTO = mycss_property_caret_shape.MyCSS_PROPERTY_CARET_SHAPE_AUTO;
    enum MyCSS_PROPERTY_CARET_SHAPE_BLOCK = mycss_property_caret_shape.MyCSS_PROPERTY_CARET_SHAPE_BLOCK;
    alias mycss_property_caret_shape_t = mycss_property_caret_shape;
    enum mycss_property_clear
    {
        MyCSS_PROPERTY_CLEAR_BOTH = 44,
        MyCSS_PROPERTY_CLEAR_RIGHT = 277,
        MyCSS_PROPERTY_CLEAR_NONE = 211,
        MyCSS_PROPERTY_CLEAR_UNSET = 367,
        MyCSS_PROPERTY_CLEAR_LEFT = 174,
        MyCSS_PROPERTY_CLEAR_INHERIT = 146,
        MyCSS_PROPERTY_CLEAR_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_CLEAR_BOTH = mycss_property_clear.MyCSS_PROPERTY_CLEAR_BOTH;
    enum MyCSS_PROPERTY_CLEAR_RIGHT = mycss_property_clear.MyCSS_PROPERTY_CLEAR_RIGHT;
    enum MyCSS_PROPERTY_CLEAR_NONE = mycss_property_clear.MyCSS_PROPERTY_CLEAR_NONE;
    enum MyCSS_PROPERTY_CLEAR_UNSET = mycss_property_clear.MyCSS_PROPERTY_CLEAR_UNSET;
    enum MyCSS_PROPERTY_CLEAR_LEFT = mycss_property_clear.MyCSS_PROPERTY_CLEAR_LEFT;
    enum MyCSS_PROPERTY_CLEAR_INHERIT = mycss_property_clear.MyCSS_PROPERTY_CLEAR_INHERIT;
    enum MyCSS_PROPERTY_CLEAR_INITIAL = mycss_property_clear.MyCSS_PROPERTY_CLEAR_INITIAL;
    alias mycss_property_clear_t = mycss_property_clear;
    enum mycss_property_clear_after
    {
        MyCSS_PROPERTY_CLEAR_AFTER_OUTSIDE = 240,
        MyCSS_PROPERTY_CLEAR_AFTER_START = 326,
        MyCSS_PROPERTY_CLEAR_AFTER_DESCENDANTS = 84,
        MyCSS_PROPERTY_CLEAR_AFTER_TOP = 356,
        MyCSS_PROPERTY_CLEAR_AFTER_BOTH = 44,
        MyCSS_PROPERTY_CLEAR_AFTER_UNSET = 367,
        MyCSS_PROPERTY_CLEAR_AFTER_INHERIT = 146,
        MyCSS_PROPERTY_CLEAR_AFTER_END = 102,
        MyCSS_PROPERTY_CLEAR_AFTER_INITIAL = 147,
        MyCSS_PROPERTY_CLEAR_AFTER_INSIDE = 156,
        MyCSS_PROPERTY_CLEAR_AFTER_BOTTOM = 45,
        MyCSS_PROPERTY_CLEAR_AFTER_NONE = 211,
        MyCSS_PROPERTY_CLEAR_AFTER_LEFT = 174,
        MyCSS_PROPERTY_CLEAR_AFTER_RIGHT = 277,
    }
    enum MyCSS_PROPERTY_CLEAR_AFTER_OUTSIDE = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_OUTSIDE;
    enum MyCSS_PROPERTY_CLEAR_AFTER_START = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_START;
    enum MyCSS_PROPERTY_CLEAR_AFTER_DESCENDANTS = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_DESCENDANTS;
    enum MyCSS_PROPERTY_CLEAR_AFTER_TOP = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_TOP;
    enum MyCSS_PROPERTY_CLEAR_AFTER_BOTH = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_BOTH;
    enum MyCSS_PROPERTY_CLEAR_AFTER_UNSET = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_UNSET;
    enum MyCSS_PROPERTY_CLEAR_AFTER_INHERIT = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_INHERIT;
    enum MyCSS_PROPERTY_CLEAR_AFTER_END = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_END;
    enum MyCSS_PROPERTY_CLEAR_AFTER_INITIAL = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_INITIAL;
    enum MyCSS_PROPERTY_CLEAR_AFTER_INSIDE = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_INSIDE;
    enum MyCSS_PROPERTY_CLEAR_AFTER_BOTTOM = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_BOTTOM;
    enum MyCSS_PROPERTY_CLEAR_AFTER_NONE = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_NONE;
    enum MyCSS_PROPERTY_CLEAR_AFTER_LEFT = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_LEFT;
    enum MyCSS_PROPERTY_CLEAR_AFTER_RIGHT = mycss_property_clear_after.MyCSS_PROPERTY_CLEAR_AFTER_RIGHT;
    alias mycss_property_clear_after_t = mycss_property_clear_after;
    enum mycss_property_color
    {
        MyCSS_PROPERTY_COLOR__COLOR = 400,
        MyCSS_PROPERTY_COLOR_INHERIT = 146,
        MyCSS_PROPERTY_COLOR_UNSET = 367,
        MyCSS_PROPERTY_COLOR_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_COLOR__COLOR = mycss_property_color.MyCSS_PROPERTY_COLOR__COLOR;
    enum MyCSS_PROPERTY_COLOR_INHERIT = mycss_property_color.MyCSS_PROPERTY_COLOR_INHERIT;
    enum MyCSS_PROPERTY_COLOR_UNSET = mycss_property_color.MyCSS_PROPERTY_COLOR_UNSET;
    enum MyCSS_PROPERTY_COLOR_INITIAL = mycss_property_color.MyCSS_PROPERTY_COLOR_INITIAL;
    alias mycss_property_color_t = mycss_property_color;
    enum mycss_property_color_adjust
    {
        MyCSS_PROPERTY_COLOR_ADJUST_ECONOMY = 98,
        MyCSS_PROPERTY_COLOR_ADJUST_EXACT = 105,
    }
    enum MyCSS_PROPERTY_COLOR_ADJUST_ECONOMY = mycss_property_color_adjust.MyCSS_PROPERTY_COLOR_ADJUST_ECONOMY;
    enum MyCSS_PROPERTY_COLOR_ADJUST_EXACT = mycss_property_color_adjust.MyCSS_PROPERTY_COLOR_ADJUST_EXACT;
    alias mycss_property_color_adjust_t = mycss_property_color_adjust;
    enum mycss_property_color_interpolation
    {
        MyCSS_PROPERTY_COLOR_INTERPOLATION_SRGB = 324,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_AUTO = 24,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_INHERIT = 146,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_LINEARRGB = 179,
    }
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_SRGB = mycss_property_color_interpolation.MyCSS_PROPERTY_COLOR_INTERPOLATION_SRGB;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_AUTO = mycss_property_color_interpolation.MyCSS_PROPERTY_COLOR_INTERPOLATION_AUTO;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_INHERIT = mycss_property_color_interpolation.MyCSS_PROPERTY_COLOR_INTERPOLATION_INHERIT;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_LINEARRGB = mycss_property_color_interpolation.MyCSS_PROPERTY_COLOR_INTERPOLATION_LINEARRGB;
    alias mycss_property_color_interpolation_t = mycss_property_color_interpolation;
    enum mycss_property_color_interpolation_filters
    {
        MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_SRGB = 324,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_AUTO = 24,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_INHERIT = 146,
        MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_LINEARRGB = 179,
    }
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_SRGB = mycss_property_color_interpolation_filters.MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_SRGB;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_AUTO = mycss_property_color_interpolation_filters.MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_AUTO;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_INHERIT = mycss_property_color_interpolation_filters.MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_INHERIT;
    enum MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_LINEARRGB = mycss_property_color_interpolation_filters.MyCSS_PROPERTY_COLOR_INTERPOLATION_FILTERS_LINEARRGB;
    alias mycss_property_color_interpolation_filters_t = mycss_property_color_interpolation_filters;
    enum mycss_property_color_rendering
    {
        MyCSS_PROPERTY_COLOR_RENDERING_INHERIT = 146,
        MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZESPEED = 237,
        MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZEQUALITY = 236,
        MyCSS_PROPERTY_COLOR_RENDERING_AUTO = 24,
    }
    enum MyCSS_PROPERTY_COLOR_RENDERING_INHERIT = mycss_property_color_rendering.MyCSS_PROPERTY_COLOR_RENDERING_INHERIT;
    enum MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZESPEED = mycss_property_color_rendering.MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZESPEED;
    enum MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZEQUALITY = mycss_property_color_rendering.MyCSS_PROPERTY_COLOR_RENDERING_OPTIMIZEQUALITY;
    enum MyCSS_PROPERTY_COLOR_RENDERING_AUTO = mycss_property_color_rendering.MyCSS_PROPERTY_COLOR_RENDERING_AUTO;
    alias mycss_property_color_rendering_t = mycss_property_color_rendering;
    alias mycss_property_column_count_t = mycss_property_column_count;
    enum mycss_property_column_count
    {
        MyCSS_PROPERTY_COLUMN_COUNT_AUTO = 24,
    }
    enum MyCSS_PROPERTY_COLUMN_COUNT_AUTO = mycss_property_column_count.MyCSS_PROPERTY_COLUMN_COUNT_AUTO;
    enum mycss_property_column_fill
    {
        MyCSS_PROPERTY_COLUMN_FILL_AUTO = 24,
        MyCSS_PROPERTY_COLUMN_FILL_BALANCE = 31,
        MyCSS_PROPERTY_COLUMN_FILL_BALANCE_ALL = 32,
    }
    enum MyCSS_PROPERTY_COLUMN_FILL_AUTO = mycss_property_column_fill.MyCSS_PROPERTY_COLUMN_FILL_AUTO;
    enum MyCSS_PROPERTY_COLUMN_FILL_BALANCE = mycss_property_column_fill.MyCSS_PROPERTY_COLUMN_FILL_BALANCE;
    enum MyCSS_PROPERTY_COLUMN_FILL_BALANCE_ALL = mycss_property_column_fill.MyCSS_PROPERTY_COLUMN_FILL_BALANCE_ALL;
    alias mycss_property_column_fill_t = mycss_property_column_fill;
    enum mycss_property_column_gap
    {
        MyCSS_PROPERTY_COLUMN_GAP_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_COLUMN_GAP_NORMAL = mycss_property_column_gap.MyCSS_PROPERTY_COLUMN_GAP_NORMAL;
    alias mycss_property_column_gap_t = mycss_property_column_gap;
    enum mycss_property_column_rule_color
    {
        MyCSS_PROPERTY_COLUMN_RULE_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_COLUMN_RULE_COLOR_CURRENTCOLOR = mycss_property_column_rule_color.MyCSS_PROPERTY_COLUMN_RULE_COLOR_CURRENTCOLOR;
    alias mycss_property_column_rule_color_t = mycss_property_column_rule_color;
    enum mycss_property_column_rule_style
    {
        MyCSS_PROPERTY_COLUMN_RULE_STYLE_NONE = 211,
    }
    enum MyCSS_PROPERTY_COLUMN_RULE_STYLE_NONE = mycss_property_column_rule_style.MyCSS_PROPERTY_COLUMN_RULE_STYLE_NONE;
    alias mycss_property_column_rule_style_t = mycss_property_column_rule_style;
    enum mycss_property_column_rule_width
    {
        MyCSS_PROPERTY_COLUMN_RULE_WIDTH_MEDIUM = 198,
    }
    enum MyCSS_PROPERTY_COLUMN_RULE_WIDTH_MEDIUM = mycss_property_column_rule_width.MyCSS_PROPERTY_COLUMN_RULE_WIDTH_MEDIUM;
    alias mycss_property_column_rule_width_t = mycss_property_column_rule_width;
    enum mycss_property_column_span
    {
        MyCSS_PROPERTY_COLUMN_SPAN_NONE = 211,
        MyCSS_PROPERTY_COLUMN_SPAN_ALL = 16,
    }
    enum MyCSS_PROPERTY_COLUMN_SPAN_NONE = mycss_property_column_span.MyCSS_PROPERTY_COLUMN_SPAN_NONE;
    enum MyCSS_PROPERTY_COLUMN_SPAN_ALL = mycss_property_column_span.MyCSS_PROPERTY_COLUMN_SPAN_ALL;
    alias mycss_property_column_span_t = mycss_property_column_span;
    enum mycss_property_column_width
    {
        MyCSS_PROPERTY_COLUMN_WIDTH_AUTO = 24,
    }
    enum MyCSS_PROPERTY_COLUMN_WIDTH_AUTO = mycss_property_column_width.MyCSS_PROPERTY_COLUMN_WIDTH_AUTO;
    alias mycss_property_column_width_t = mycss_property_column_width;
    alias mycss_property_contain_t = mycss_property_contain;
    enum mycss_property_contain
    {
        MyCSS_PROPERTY_CONTAIN_CONTENT = 69,
        MyCSS_PROPERTY_CONTAIN_STRICT = 333,
        MyCSS_PROPERTY_CONTAIN_NONE = 211,
        MyCSS_PROPERTY_CONTAIN_STYLE = 335,
        MyCSS_PROPERTY_CONTAIN_LAYOUT = 173,
        MyCSS_PROPERTY_CONTAIN_PAINT = 248,
        MyCSS_PROPERTY_CONTAIN_SIZE = 308,
    }
    enum MyCSS_PROPERTY_CONTAIN_CONTENT = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_CONTENT;
    enum MyCSS_PROPERTY_CONTAIN_STRICT = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_STRICT;
    enum MyCSS_PROPERTY_CONTAIN_NONE = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_NONE;
    enum MyCSS_PROPERTY_CONTAIN_STYLE = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_STYLE;
    enum MyCSS_PROPERTY_CONTAIN_LAYOUT = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_LAYOUT;
    enum MyCSS_PROPERTY_CONTAIN_PAINT = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_PAINT;
    enum MyCSS_PROPERTY_CONTAIN_SIZE = mycss_property_contain.MyCSS_PROPERTY_CONTAIN_SIZE;
    enum mycss_property_content
    {
        MyCSS_PROPERTY_CONTENT_NONE = 211,
        MyCSS_PROPERTY_CONTENT_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_CONTENT_NONE = mycss_property_content.MyCSS_PROPERTY_CONTENT_NONE;
    enum MyCSS_PROPERTY_CONTENT_NORMAL = mycss_property_content.MyCSS_PROPERTY_CONTENT_NORMAL;
    alias mycss_property_content_t = mycss_property_content;
    enum mycss_property_continue
    {
        MyCSS_PROPERTY_CONTINUE_DISCARD = 87,
        MyCSS_PROPERTY_CONTINUE_OVERFLOW = 242,
        MyCSS_PROPERTY_CONTINUE_PAGINATE = 247,
        MyCSS_PROPERTY_CONTINUE_FRAGMENTS = 127,
        MyCSS_PROPERTY_CONTINUE_AUTO = 24,
    }
    enum MyCSS_PROPERTY_CONTINUE_DISCARD = mycss_property_continue.MyCSS_PROPERTY_CONTINUE_DISCARD;
    enum MyCSS_PROPERTY_CONTINUE_OVERFLOW = mycss_property_continue.MyCSS_PROPERTY_CONTINUE_OVERFLOW;
    enum MyCSS_PROPERTY_CONTINUE_PAGINATE = mycss_property_continue.MyCSS_PROPERTY_CONTINUE_PAGINATE;
    enum MyCSS_PROPERTY_CONTINUE_FRAGMENTS = mycss_property_continue.MyCSS_PROPERTY_CONTINUE_FRAGMENTS;
    enum MyCSS_PROPERTY_CONTINUE_AUTO = mycss_property_continue.MyCSS_PROPERTY_CONTINUE_AUTO;
    alias mycss_property_continue_t = mycss_property_continue;
    enum mycss_property_counter_increment
    {
        MyCSS_PROPERTY_COUNTER_INCREMENT_NONE = 211,
    }
    enum MyCSS_PROPERTY_COUNTER_INCREMENT_NONE = mycss_property_counter_increment.MyCSS_PROPERTY_COUNTER_INCREMENT_NONE;
    alias mycss_property_counter_increment_t = mycss_property_counter_increment;
    enum mycss_property_cue_after
    {
        MyCSS_PROPERTY_CUE_AFTER_NONE = 211,
    }
    enum MyCSS_PROPERTY_CUE_AFTER_NONE = mycss_property_cue_after.MyCSS_PROPERTY_CUE_AFTER_NONE;
    alias mycss_property_cue_after_t = mycss_property_cue_after;
    enum mycss_property_cue_before
    {
        MyCSS_PROPERTY_CUE_BEFORE_NONE = 211,
    }
    enum MyCSS_PROPERTY_CUE_BEFORE_NONE = mycss_property_cue_before.MyCSS_PROPERTY_CUE_BEFORE_NONE;
    alias mycss_property_cue_before_t = mycss_property_cue_before;
    enum mycss_property_cursor
    {
        MyCSS_PROPERTY_CURSOR_CELL = 54,
        MyCSS_PROPERTY_CURSOR_INITIAL = 147,
        MyCSS_PROPERTY_CURSOR_PROGRESS = 264,
        MyCSS_PROPERTY_CURSOR_HELP = 135,
        MyCSS_PROPERTY_CURSOR_DEFAULT = 83,
        MyCSS_PROPERTY_CURSOR_WAIT = 377,
        MyCSS_PROPERTY_CURSOR_POINTER = 258,
        MyCSS_PROPERTY_CURSOR_CONTEXT_MENU = 74,
        MyCSS_PROPERTY_CURSOR_AUTO = 24,
        MyCSS_PROPERTY_CURSOR_NONE = 211,
        MyCSS_PROPERTY_CURSOR_TEXT = 350,
        MyCSS_PROPERTY_CURSOR_COPY = 75,
        MyCSS_PROPERTY_CURSOR_CROSSHAIR = 78,
        MyCSS_PROPERTY_CURSOR_ALIAS = 15,
        MyCSS_PROPERTY_CURSOR_MOVE = 208,
        MyCSS_PROPERTY_CURSOR_VERTICAL_TEXT = 374,
        MyCSS_PROPERTY_CURSOR_GRAB = 130,
        MyCSS_PROPERTY_CURSOR_NO_DROP = 221,
        MyCSS_PROPERTY_CURSOR_UNSET = 367,
        MyCSS_PROPERTY_CURSOR_NOT_ALLOWED = 214,
        MyCSS_PROPERTY_CURSOR_ZOOM_IN = 398,
        MyCSS_PROPERTY_CURSOR_GRABBING = 131,
        MyCSS_PROPERTY_CURSOR_E_RESIZE = 109,
        MyCSS_PROPERTY_CURSOR_N_RESIZE = 228,
        MyCSS_PROPERTY_CURSOR_S_RESIZE = 339,
        MyCSS_PROPERTY_CURSOR_NE_RESIZE = 210,
        MyCSS_PROPERTY_CURSOR_NW_RESIZE = 227,
        MyCSS_PROPERTY_CURSOR_W_RESIZE = 383,
        MyCSS_PROPERTY_CURSOR_SE_RESIZE = 301,
        MyCSS_PROPERTY_CURSOR_SW_RESIZE = 338,
        MyCSS_PROPERTY_CURSOR_EW_RESIZE = 104,
        MyCSS_PROPERTY_CURSOR_NS_RESIZE = 225,
        MyCSS_PROPERTY_CURSOR_COL_RESIZE = 64,
        MyCSS_PROPERTY_CURSOR_NESW_RESIZE = 209,
        MyCSS_PROPERTY_CURSOR_NWSE_RESIZE = 226,
        MyCSS_PROPERTY_CURSOR_ROW_RESIZE = 282,
        MyCSS_PROPERTY_CURSOR_ALL_SCROLL = 19,
        MyCSS_PROPERTY_CURSOR_INHERIT = 146,
        MyCSS_PROPERTY_CURSOR_ZOOM_OUT = 399,
    }
    enum MyCSS_PROPERTY_CURSOR_CELL = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_CELL;
    enum MyCSS_PROPERTY_CURSOR_INITIAL = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_INITIAL;
    enum MyCSS_PROPERTY_CURSOR_PROGRESS = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_PROGRESS;
    enum MyCSS_PROPERTY_CURSOR_HELP = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_HELP;
    enum MyCSS_PROPERTY_CURSOR_DEFAULT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_DEFAULT;
    enum MyCSS_PROPERTY_CURSOR_WAIT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_WAIT;
    enum MyCSS_PROPERTY_CURSOR_POINTER = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_POINTER;
    enum MyCSS_PROPERTY_CURSOR_CONTEXT_MENU = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_CONTEXT_MENU;
    enum MyCSS_PROPERTY_CURSOR_AUTO = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_AUTO;
    enum MyCSS_PROPERTY_CURSOR_NONE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NONE;
    enum MyCSS_PROPERTY_CURSOR_TEXT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_TEXT;
    enum MyCSS_PROPERTY_CURSOR_COPY = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_COPY;
    enum MyCSS_PROPERTY_CURSOR_CROSSHAIR = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_CROSSHAIR;
    enum MyCSS_PROPERTY_CURSOR_ALIAS = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_ALIAS;
    enum MyCSS_PROPERTY_CURSOR_MOVE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_MOVE;
    enum MyCSS_PROPERTY_CURSOR_VERTICAL_TEXT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_VERTICAL_TEXT;
    enum MyCSS_PROPERTY_CURSOR_GRAB = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_GRAB;
    enum MyCSS_PROPERTY_CURSOR_NO_DROP = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NO_DROP;
    enum MyCSS_PROPERTY_CURSOR_UNSET = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_UNSET;
    enum MyCSS_PROPERTY_CURSOR_NOT_ALLOWED = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NOT_ALLOWED;
    enum MyCSS_PROPERTY_CURSOR_ZOOM_IN = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_ZOOM_IN;
    enum MyCSS_PROPERTY_CURSOR_GRABBING = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_GRABBING;
    enum MyCSS_PROPERTY_CURSOR_E_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_E_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_N_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_N_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_S_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_S_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_NE_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NE_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_NW_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NW_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_W_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_W_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_SE_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_SE_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_SW_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_SW_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_EW_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_EW_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_NS_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NS_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_COL_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_COL_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_NESW_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NESW_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_NWSE_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_NWSE_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_ROW_RESIZE = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_ROW_RESIZE;
    enum MyCSS_PROPERTY_CURSOR_ALL_SCROLL = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_ALL_SCROLL;
    enum MyCSS_PROPERTY_CURSOR_INHERIT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_INHERIT;
    enum MyCSS_PROPERTY_CURSOR_ZOOM_OUT = mycss_property_cursor.MyCSS_PROPERTY_CURSOR_ZOOM_OUT;
    alias mycss_property_cursor_t = mycss_property_cursor;
    enum mycss_property_direction
    {
        MyCSS_PROPERTY_DIRECTION_LTR = 190,
        MyCSS_PROPERTY_DIRECTION_RTL = 284,
        MyCSS_PROPERTY_DIRECTION_UNSET = 367,
        MyCSS_PROPERTY_DIRECTION_INHERIT = 146,
        MyCSS_PROPERTY_DIRECTION_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_DIRECTION_LTR = mycss_property_direction.MyCSS_PROPERTY_DIRECTION_LTR;
    enum MyCSS_PROPERTY_DIRECTION_RTL = mycss_property_direction.MyCSS_PROPERTY_DIRECTION_RTL;
    enum MyCSS_PROPERTY_DIRECTION_UNSET = mycss_property_direction.MyCSS_PROPERTY_DIRECTION_UNSET;
    enum MyCSS_PROPERTY_DIRECTION_INHERIT = mycss_property_direction.MyCSS_PROPERTY_DIRECTION_INHERIT;
    enum MyCSS_PROPERTY_DIRECTION_INITIAL = mycss_property_direction.MyCSS_PROPERTY_DIRECTION_INITIAL;
    alias mycss_property_direction_t = mycss_property_direction;
    enum mycss_property_display
    {
        MyCSS_PROPERTY_DISPLAY_RUBY_BASE = 286,
        MyCSS_PROPERTY_DISPLAY_TABLE = 340,
        MyCSS_PROPERTY_DISPLAY_FLOW_ROOT = 124,
        MyCSS_PROPERTY_DISPLAY_TABLE_CELL = 342,
        MyCSS_PROPERTY_DISPLAY_TABLE_ROW_GROUP = 348,
        MyCSS_PROPERTY_DISPLAY_NONE = 211,
        MyCSS_PROPERTY_DISPLAY_FLOW = 123,
        MyCSS_PROPERTY_DISPLAY_BLOCK = 38,
        MyCSS_PROPERTY_DISPLAY_FLEX = 120,
        MyCSS_PROPERTY_DISPLAY_INLINE = 149,
        MyCSS_PROPERTY_DISPLAY_RUN_IN = 291,
        MyCSS_PROPERTY_DISPLAY_TABLE_HEADER_GROUP = 346,
        MyCSS_PROPERTY_DISPLAY_TABLE_FOOTER_GROUP = 345,
        MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN = 343,
        MyCSS_PROPERTY_DISPLAY_RUBY_TEXT = 288,
        MyCSS_PROPERTY_DISPLAY_TABLE_CAPTION = 341,
        MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN_GROUP = 344,
        MyCSS_PROPERTY_DISPLAY_GRID = 132,
        MyCSS_PROPERTY_DISPLAY_RUBY = 285,
        MyCSS_PROPERTY_DISPLAY_UNSET = 367,
        MyCSS_PROPERTY_DISPLAY_INHERIT = 146,
        MyCSS_PROPERTY_DISPLAY_CONTENTS = 70,
        MyCSS_PROPERTY_DISPLAY_LIST_ITEM = 183,
        MyCSS_PROPERTY_DISPLAY_TABLE_ROW = 347,
        MyCSS_PROPERTY_DISPLAY_INITIAL = 147,
        MyCSS_PROPERTY_DISPLAY_INLINE_FLEX = 151,
        MyCSS_PROPERTY_DISPLAY_INLINE_BLOCK = 150,
        MyCSS_PROPERTY_DISPLAY_RUBY_BASE_CONTAINER = 287,
        MyCSS_PROPERTY_DISPLAY_RUBY_TEXT_CONTAINER = 289,
        MyCSS_PROPERTY_DISPLAY_INLINE_TABLE = 154,
        MyCSS_PROPERTY_DISPLAY_INLINE_LIST_ITEM = 153,
        MyCSS_PROPERTY_DISPLAY_INLINE_GRID = 152,
    }
    enum MyCSS_PROPERTY_DISPLAY_RUBY_BASE = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUBY_BASE;
    enum MyCSS_PROPERTY_DISPLAY_TABLE = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE;
    enum MyCSS_PROPERTY_DISPLAY_FLOW_ROOT = mycss_property_display.MyCSS_PROPERTY_DISPLAY_FLOW_ROOT;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_CELL = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_CELL;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_ROW_GROUP = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_ROW_GROUP;
    enum MyCSS_PROPERTY_DISPLAY_NONE = mycss_property_display.MyCSS_PROPERTY_DISPLAY_NONE;
    enum MyCSS_PROPERTY_DISPLAY_FLOW = mycss_property_display.MyCSS_PROPERTY_DISPLAY_FLOW;
    enum MyCSS_PROPERTY_DISPLAY_BLOCK = mycss_property_display.MyCSS_PROPERTY_DISPLAY_BLOCK;
    enum MyCSS_PROPERTY_DISPLAY_FLEX = mycss_property_display.MyCSS_PROPERTY_DISPLAY_FLEX;
    enum MyCSS_PROPERTY_DISPLAY_INLINE = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE;
    enum MyCSS_PROPERTY_DISPLAY_RUN_IN = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUN_IN;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_HEADER_GROUP = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_HEADER_GROUP;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_FOOTER_GROUP = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_FOOTER_GROUP;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN;
    enum MyCSS_PROPERTY_DISPLAY_RUBY_TEXT = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUBY_TEXT;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_CAPTION = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_CAPTION;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN_GROUP = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_COLUMN_GROUP;
    enum MyCSS_PROPERTY_DISPLAY_GRID = mycss_property_display.MyCSS_PROPERTY_DISPLAY_GRID;
    enum MyCSS_PROPERTY_DISPLAY_RUBY = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUBY;
    enum MyCSS_PROPERTY_DISPLAY_UNSET = mycss_property_display.MyCSS_PROPERTY_DISPLAY_UNSET;
    enum MyCSS_PROPERTY_DISPLAY_INHERIT = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INHERIT;
    enum MyCSS_PROPERTY_DISPLAY_CONTENTS = mycss_property_display.MyCSS_PROPERTY_DISPLAY_CONTENTS;
    enum MyCSS_PROPERTY_DISPLAY_LIST_ITEM = mycss_property_display.MyCSS_PROPERTY_DISPLAY_LIST_ITEM;
    enum MyCSS_PROPERTY_DISPLAY_TABLE_ROW = mycss_property_display.MyCSS_PROPERTY_DISPLAY_TABLE_ROW;
    enum MyCSS_PROPERTY_DISPLAY_INITIAL = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INITIAL;
    enum MyCSS_PROPERTY_DISPLAY_INLINE_FLEX = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE_FLEX;
    enum MyCSS_PROPERTY_DISPLAY_INLINE_BLOCK = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE_BLOCK;
    enum MyCSS_PROPERTY_DISPLAY_RUBY_BASE_CONTAINER = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUBY_BASE_CONTAINER;
    enum MyCSS_PROPERTY_DISPLAY_RUBY_TEXT_CONTAINER = mycss_property_display.MyCSS_PROPERTY_DISPLAY_RUBY_TEXT_CONTAINER;
    enum MyCSS_PROPERTY_DISPLAY_INLINE_TABLE = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE_TABLE;
    enum MyCSS_PROPERTY_DISPLAY_INLINE_LIST_ITEM = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE_LIST_ITEM;
    enum MyCSS_PROPERTY_DISPLAY_INLINE_GRID = mycss_property_display.MyCSS_PROPERTY_DISPLAY_INLINE_GRID;
    alias mycss_property_display_t = mycss_property_display;
    enum mycss_property_empty_cells
    {
        MyCSS_PROPERTY_EMPTY_CELLS_SHOW = 302,
        MyCSS_PROPERTY_EMPTY_CELLS_HIDE = 137,
    }
    enum MyCSS_PROPERTY_EMPTY_CELLS_SHOW = mycss_property_empty_cells.MyCSS_PROPERTY_EMPTY_CELLS_SHOW;
    enum MyCSS_PROPERTY_EMPTY_CELLS_HIDE = mycss_property_empty_cells.MyCSS_PROPERTY_EMPTY_CELLS_HIDE;
    alias mycss_property_empty_cells_t = mycss_property_empty_cells;
    enum mycss_property_fill_opacity
    {
        MyCSS_PROPERTY_FILL_OPACITY_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_FILL_OPACITY_INHERIT = mycss_property_fill_opacity.MyCSS_PROPERTY_FILL_OPACITY_INHERIT;
    alias mycss_property_fill_opacity_t = mycss_property_fill_opacity;
    enum mycss_property_fill_rule
    {
        MyCSS_PROPERTY_FILL_RULE_INHERIT = 146,
        MyCSS_PROPERTY_FILL_RULE_NONZERO = 212,
        MyCSS_PROPERTY_FILL_RULE_EVENODD = 103,
    }
    enum MyCSS_PROPERTY_FILL_RULE_INHERIT = mycss_property_fill_rule.MyCSS_PROPERTY_FILL_RULE_INHERIT;
    enum MyCSS_PROPERTY_FILL_RULE_NONZERO = mycss_property_fill_rule.MyCSS_PROPERTY_FILL_RULE_NONZERO;
    enum MyCSS_PROPERTY_FILL_RULE_EVENODD = mycss_property_fill_rule.MyCSS_PROPERTY_FILL_RULE_EVENODD;
    alias mycss_property_fill_rule_t = mycss_property_fill_rule;
    enum mycss_property_flex
    {
        MyCSS_PROPERTY_FLEX_NONE = 211,
    }
    enum MyCSS_PROPERTY_FLEX_NONE = mycss_property_flex.MyCSS_PROPERTY_FLEX_NONE;
    alias mycss_property_flex_t = mycss_property_flex;
    enum mycss_property_flex_basis
    {
        MyCSS_PROPERTY_FLEX_BASIS_AUTO = 24,
        MyCSS_PROPERTY_FLEX_BASIS_CONTENT = 69,
    }
    enum MyCSS_PROPERTY_FLEX_BASIS_AUTO = mycss_property_flex_basis.MyCSS_PROPERTY_FLEX_BASIS_AUTO;
    enum MyCSS_PROPERTY_FLEX_BASIS_CONTENT = mycss_property_flex_basis.MyCSS_PROPERTY_FLEX_BASIS_CONTENT;
    alias mycss_property_flex_basis_t = mycss_property_flex_basis;
    alias mycss_property_flex_direction_t = mycss_property_flex_direction;
    enum mycss_property_flex_direction
    {
        MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN = 62,
        MyCSS_PROPERTY_FLEX_DIRECTION_ROW = 281,
        MyCSS_PROPERTY_FLEX_DIRECTION_ROW_REVERSE = 283,
        MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN_REVERSE = 63,
    }
    enum MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN = mycss_property_flex_direction.MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN;
    enum MyCSS_PROPERTY_FLEX_DIRECTION_ROW = mycss_property_flex_direction.MyCSS_PROPERTY_FLEX_DIRECTION_ROW;
    enum MyCSS_PROPERTY_FLEX_DIRECTION_ROW_REVERSE = mycss_property_flex_direction.MyCSS_PROPERTY_FLEX_DIRECTION_ROW_REVERSE;
    enum MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN_REVERSE = mycss_property_flex_direction.MyCSS_PROPERTY_FLEX_DIRECTION_COLUMN_REVERSE;
    enum mycss_property_flex_flow
    {
        MyCSS_PROPERTY_FLEX_FLOW_NOWRAP = 215,
        MyCSS_PROPERTY_FLEX_FLOW_ROW_REVERSE = 283,
        MyCSS_PROPERTY_FLEX_FLOW_COLUMN_REVERSE = 63,
        MyCSS_PROPERTY_FLEX_FLOW_WRAP = 381,
        MyCSS_PROPERTY_FLEX_FLOW_COLUMN = 62,
        MyCSS_PROPERTY_FLEX_FLOW_ROW = 281,
        MyCSS_PROPERTY_FLEX_FLOW_WRAP_REVERSE = 382,
    }
    enum MyCSS_PROPERTY_FLEX_FLOW_NOWRAP = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_NOWRAP;
    enum MyCSS_PROPERTY_FLEX_FLOW_ROW_REVERSE = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_ROW_REVERSE;
    enum MyCSS_PROPERTY_FLEX_FLOW_COLUMN_REVERSE = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_COLUMN_REVERSE;
    enum MyCSS_PROPERTY_FLEX_FLOW_WRAP = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_WRAP;
    enum MyCSS_PROPERTY_FLEX_FLOW_COLUMN = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_COLUMN;
    enum MyCSS_PROPERTY_FLEX_FLOW_ROW = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_ROW;
    enum MyCSS_PROPERTY_FLEX_FLOW_WRAP_REVERSE = mycss_property_flex_flow.MyCSS_PROPERTY_FLEX_FLOW_WRAP_REVERSE;
    alias mycss_property_flex_flow_t = mycss_property_flex_flow;
    enum mycss_property_flex_wrap
    {
        MyCSS_PROPERTY_FLEX_WRAP_WRAP_REVERSE = 382,
        MyCSS_PROPERTY_FLEX_WRAP_WRAP = 381,
        MyCSS_PROPERTY_FLEX_WRAP_NOWRAP = 215,
    }
    enum MyCSS_PROPERTY_FLEX_WRAP_WRAP_REVERSE = mycss_property_flex_wrap.MyCSS_PROPERTY_FLEX_WRAP_WRAP_REVERSE;
    enum MyCSS_PROPERTY_FLEX_WRAP_WRAP = mycss_property_flex_wrap.MyCSS_PROPERTY_FLEX_WRAP_WRAP;
    enum MyCSS_PROPERTY_FLEX_WRAP_NOWRAP = mycss_property_flex_wrap.MyCSS_PROPERTY_FLEX_WRAP_NOWRAP;
    alias mycss_property_flex_wrap_t = mycss_property_flex_wrap;
    enum mycss_property_float
    {
        MyCSS_PROPERTY_FLOAT_START = 326,
        MyCSS_PROPERTY_FLOAT_BOTTOM = 45,
        MyCSS_PROPERTY_FLOAT_TOP = 356,
        MyCSS_PROPERTY_FLOAT_LEFT = 174,
        MyCSS_PROPERTY_FLOAT_NONE = 211,
        MyCSS_PROPERTY_FLOAT_UNSET = 367,
        MyCSS_PROPERTY_FLOAT_INHERIT = 146,
        MyCSS_PROPERTY_FLOAT_INITIAL = 147,
        MyCSS_PROPERTY_FLOAT_RIGHT = 277,
        MyCSS_PROPERTY_FLOAT_END = 102,
    }
    enum MyCSS_PROPERTY_FLOAT_START = mycss_property_float.MyCSS_PROPERTY_FLOAT_START;
    enum MyCSS_PROPERTY_FLOAT_BOTTOM = mycss_property_float.MyCSS_PROPERTY_FLOAT_BOTTOM;
    enum MyCSS_PROPERTY_FLOAT_TOP = mycss_property_float.MyCSS_PROPERTY_FLOAT_TOP;
    enum MyCSS_PROPERTY_FLOAT_LEFT = mycss_property_float.MyCSS_PROPERTY_FLOAT_LEFT;
    enum MyCSS_PROPERTY_FLOAT_NONE = mycss_property_float.MyCSS_PROPERTY_FLOAT_NONE;
    enum MyCSS_PROPERTY_FLOAT_UNSET = mycss_property_float.MyCSS_PROPERTY_FLOAT_UNSET;
    enum MyCSS_PROPERTY_FLOAT_INHERIT = mycss_property_float.MyCSS_PROPERTY_FLOAT_INHERIT;
    enum MyCSS_PROPERTY_FLOAT_INITIAL = mycss_property_float.MyCSS_PROPERTY_FLOAT_INITIAL;
    enum MyCSS_PROPERTY_FLOAT_RIGHT = mycss_property_float.MyCSS_PROPERTY_FLOAT_RIGHT;
    enum MyCSS_PROPERTY_FLOAT_END = mycss_property_float.MyCSS_PROPERTY_FLOAT_END;
    alias mycss_property_float_t = mycss_property_float;
    enum mycss_property_float_displace
    {
        MyCSS_PROPERTY_FLOAT_DISPLACE_LINE = 177,
        MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK = 38,
        MyCSS_PROPERTY_FLOAT_DISPLACE_INDENT = 145,
        MyCSS_PROPERTY_FLOAT_DISPLACE_UNSET = 367,
        MyCSS_PROPERTY_FLOAT_DISPLACE_INHERIT = 146,
        MyCSS_PROPERTY_FLOAT_DISPLACE_INITIAL = 147,
        MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK_WITHIN_PAGE = 39,
    }
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_LINE = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_LINE;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_INDENT = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_INDENT;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_UNSET = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_UNSET;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_INHERIT = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_INHERIT;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_INITIAL = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_INITIAL;
    enum MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK_WITHIN_PAGE = mycss_property_float_displace.MyCSS_PROPERTY_FLOAT_DISPLACE_BLOCK_WITHIN_PAGE;
    alias mycss_property_float_displace_t = mycss_property_float_displace;
    enum mycss_property_font
    {
        MyCSS_PROPERTY_FONT_ICON = 143,
        MyCSS_PROPERTY_FONT_CAPTION = 53,
        MyCSS_PROPERTY_FONT_MENU = 199,
        MyCSS_PROPERTY_FONT_UNSE = 366,
        MyCSS_PROPERTY_FONT_NORMAL = 213,
        MyCSS_PROPERTY_FONT_STATUS_BAR = 328,
        MyCSS_PROPERTY_FONT_MESSAGE_BOX = 200,
        MyCSS_PROPERTY_FONT_SMALL_CAPTION = 315,
        MyCSS_PROPERTY_FONT_INHERIT = 146,
        MyCSS_PROPERTY_FONT_SMALL_CAPS = 314,
        MyCSS_PROPERTY_FONT_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_FONT_ICON = mycss_property_font.MyCSS_PROPERTY_FONT_ICON;
    enum MyCSS_PROPERTY_FONT_CAPTION = mycss_property_font.MyCSS_PROPERTY_FONT_CAPTION;
    enum MyCSS_PROPERTY_FONT_MENU = mycss_property_font.MyCSS_PROPERTY_FONT_MENU;
    enum MyCSS_PROPERTY_FONT_UNSE = mycss_property_font.MyCSS_PROPERTY_FONT_UNSE;
    enum MyCSS_PROPERTY_FONT_NORMAL = mycss_property_font.MyCSS_PROPERTY_FONT_NORMAL;
    enum MyCSS_PROPERTY_FONT_STATUS_BAR = mycss_property_font.MyCSS_PROPERTY_FONT_STATUS_BAR;
    enum MyCSS_PROPERTY_FONT_MESSAGE_BOX = mycss_property_font.MyCSS_PROPERTY_FONT_MESSAGE_BOX;
    enum MyCSS_PROPERTY_FONT_SMALL_CAPTION = mycss_property_font.MyCSS_PROPERTY_FONT_SMALL_CAPTION;
    enum MyCSS_PROPERTY_FONT_INHERIT = mycss_property_font.MyCSS_PROPERTY_FONT_INHERIT;
    enum MyCSS_PROPERTY_FONT_SMALL_CAPS = mycss_property_font.MyCSS_PROPERTY_FONT_SMALL_CAPS;
    enum MyCSS_PROPERTY_FONT_INITIAL = mycss_property_font.MyCSS_PROPERTY_FONT_INITIAL;
    alias mycss_property_font_t = mycss_property_font;
    enum mycss_property_font_family
    {
        MyCSS_PROPERTY_FONT_FAMILY__GENERIC_FAMILY = 405,
        MyCSS_PROPERTY_FONT_FAMILY_SANS_SERIF = 293,
        MyCSS_PROPERTY_FONT_FAMILY_UNSE = 366,
        MyCSS_PROPERTY_FONT_FAMILY_SERIF = 299,
        MyCSS_PROPERTY_FONT_FAMILY_CURSIVE = 81,
        MyCSS_PROPERTY_FONT_FAMILY__FAMILY_NAME = 404,
        MyCSS_PROPERTY_FONT_FAMILY_FANTASY = 110,
        MyCSS_PROPERTY_FONT_FAMILY_INHERIT = 146,
        MyCSS_PROPERTY_FONT_FAMILY_MONOSPACE = 207,
        MyCSS_PROPERTY_FONT_FAMILY_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_FONT_FAMILY__GENERIC_FAMILY = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY__GENERIC_FAMILY;
    enum MyCSS_PROPERTY_FONT_FAMILY_SANS_SERIF = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_SANS_SERIF;
    enum MyCSS_PROPERTY_FONT_FAMILY_UNSE = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_UNSE;
    enum MyCSS_PROPERTY_FONT_FAMILY_SERIF = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_SERIF;
    enum MyCSS_PROPERTY_FONT_FAMILY_CURSIVE = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_CURSIVE;
    enum MyCSS_PROPERTY_FONT_FAMILY__FAMILY_NAME = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY__FAMILY_NAME;
    enum MyCSS_PROPERTY_FONT_FAMILY_FANTASY = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_FANTASY;
    enum MyCSS_PROPERTY_FONT_FAMILY_INHERIT = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_INHERIT;
    enum MyCSS_PROPERTY_FONT_FAMILY_MONOSPACE = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_MONOSPACE;
    enum MyCSS_PROPERTY_FONT_FAMILY_INITIAL = mycss_property_font_family.MyCSS_PROPERTY_FONT_FAMILY_INITIAL;
    alias mycss_property_font_family_t = mycss_property_font_family;
    alias mycss_property_font_feature_settings_t = mycss_property_font_feature_settings;
    enum mycss_property_font_feature_settings
    {
        MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_ON = 233,
        MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_NORMAL = 213,
        MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_OFF = 231,
    }
    enum MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_ON = mycss_property_font_feature_settings.MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_ON;
    enum MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_NORMAL = mycss_property_font_feature_settings.MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_NORMAL;
    enum MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_OFF = mycss_property_font_feature_settings.MyCSS_PROPERTY_FONT_FEATURE_SETTINGS_OFF;
    alias mycss_property_font_kerning_t = mycss_property_font_kerning;
    enum mycss_property_font_kerning
    {
        MyCSS_PROPERTY_FONT_KERNING_AUTO = 24,
        MyCSS_PROPERTY_FONT_KERNING_NONE = 211,
        MyCSS_PROPERTY_FONT_KERNING_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_FONT_KERNING_AUTO = mycss_property_font_kerning.MyCSS_PROPERTY_FONT_KERNING_AUTO;
    enum MyCSS_PROPERTY_FONT_KERNING_NONE = mycss_property_font_kerning.MyCSS_PROPERTY_FONT_KERNING_NONE;
    enum MyCSS_PROPERTY_FONT_KERNING_NORMAL = mycss_property_font_kerning.MyCSS_PROPERTY_FONT_KERNING_NORMAL;
    enum mycss_property_font_language_override
    {
        MyCSS_PROPERTY_FONT_LANGUAGE_OVERRIDE_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_FONT_LANGUAGE_OVERRIDE_NORMAL = mycss_property_font_language_override.MyCSS_PROPERTY_FONT_LANGUAGE_OVERRIDE_NORMAL;
    alias mycss_property_font_language_override_t = mycss_property_font_language_override;
    enum mycss_property_font_size
    {
        MyCSS_PROPERTY_FONT_SIZE_INITIAL = 147,
        MyCSS_PROPERTY_FONT_SIZE_SMALL = 312,
        MyCSS_PROPERTY_FONT_SIZE__LENGTH = 410,
        MyCSS_PROPERTY_FONT_SIZE_X_SMALL = 393,
        MyCSS_PROPERTY_FONT_SIZE_XX_SMALL = 386,
        MyCSS_PROPERTY_FONT_SIZE__PERCENTAGE = 413,
        MyCSS_PROPERTY_FONT_SIZE_LARGE = 170,
        MyCSS_PROPERTY_FONT_SIZE_MEDIUM = 198,
        MyCSS_PROPERTY_FONT_SIZE_UNSET = 367,
        MyCSS_PROPERTY_FONT_SIZE_LARGER = 171,
        MyCSS_PROPERTY_FONT_SIZE_X_LARGE = 389,
        MyCSS_PROPERTY_FONT_SIZE_XX_LARGE = 385,
        MyCSS_PROPERTY_FONT_SIZE_INHERIT = 146,
        MyCSS_PROPERTY_FONT_SIZE_SMALLER = 313,
    }
    enum MyCSS_PROPERTY_FONT_SIZE_INITIAL = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_INITIAL;
    enum MyCSS_PROPERTY_FONT_SIZE_SMALL = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_SMALL;
    enum MyCSS_PROPERTY_FONT_SIZE__LENGTH = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE__LENGTH;
    enum MyCSS_PROPERTY_FONT_SIZE_X_SMALL = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_X_SMALL;
    enum MyCSS_PROPERTY_FONT_SIZE_XX_SMALL = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_XX_SMALL;
    enum MyCSS_PROPERTY_FONT_SIZE__PERCENTAGE = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE__PERCENTAGE;
    enum MyCSS_PROPERTY_FONT_SIZE_LARGE = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_LARGE;
    enum MyCSS_PROPERTY_FONT_SIZE_MEDIUM = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_MEDIUM;
    enum MyCSS_PROPERTY_FONT_SIZE_UNSET = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_UNSET;
    enum MyCSS_PROPERTY_FONT_SIZE_LARGER = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_LARGER;
    enum MyCSS_PROPERTY_FONT_SIZE_X_LARGE = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_X_LARGE;
    enum MyCSS_PROPERTY_FONT_SIZE_XX_LARGE = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_XX_LARGE;
    enum MyCSS_PROPERTY_FONT_SIZE_INHERIT = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_INHERIT;
    enum MyCSS_PROPERTY_FONT_SIZE_SMALLER = mycss_property_font_size.MyCSS_PROPERTY_FONT_SIZE_SMALLER;
    alias mycss_property_font_size_t = mycss_property_font_size;
    enum mycss_property_font_size_adjust
    {
        MyCSS_PROPERTY_FONT_SIZE_ADJUST_INITIAL = 147,
        MyCSS_PROPERTY_FONT_SIZE_ADJUST_UNSET = 367,
        MyCSS_PROPERTY_FONT_SIZE_ADJUST_NONE = 211,
        MyCSS_PROPERTY_FONT_SIZE_ADJUST__NUMBER = 412,
        MyCSS_PROPERTY_FONT_SIZE_ADJUST_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_FONT_SIZE_ADJUST_INITIAL = mycss_property_font_size_adjust.MyCSS_PROPERTY_FONT_SIZE_ADJUST_INITIAL;
    enum MyCSS_PROPERTY_FONT_SIZE_ADJUST_UNSET = mycss_property_font_size_adjust.MyCSS_PROPERTY_FONT_SIZE_ADJUST_UNSET;
    enum MyCSS_PROPERTY_FONT_SIZE_ADJUST_NONE = mycss_property_font_size_adjust.MyCSS_PROPERTY_FONT_SIZE_ADJUST_NONE;
    enum MyCSS_PROPERTY_FONT_SIZE_ADJUST__NUMBER = mycss_property_font_size_adjust.MyCSS_PROPERTY_FONT_SIZE_ADJUST__NUMBER;
    enum MyCSS_PROPERTY_FONT_SIZE_ADJUST_INHERIT = mycss_property_font_size_adjust.MyCSS_PROPERTY_FONT_SIZE_ADJUST_INHERIT;
    alias mycss_property_font_size_adjust_t = mycss_property_font_size_adjust;
    enum mycss_property_font_stretch
    {
        MyCSS_PROPERTY_FONT_STRETCH_ULTRA_CONDENSED = 360,
        MyCSS_PROPERTY_FONT_STRETCH_EXTRA_CONDENSED = 107,
        MyCSS_PROPERTY_FONT_STRETCH_EXPANDED = 106,
        MyCSS_PROPERTY_FONT_STRETCH_CONDENSED = 67,
        MyCSS_PROPERTY_FONT_STRETCH_ULTRA_EXPANDED = 361,
        MyCSS_PROPERTY_FONT_STRETCH_NORMAL = 213,
        MyCSS_PROPERTY_FONT_STRETCH_SEMI_EXPANDED = 297,
        MyCSS_PROPERTY_FONT_STRETCH_SEMI_CONDENSED = 296,
        MyCSS_PROPERTY_FONT_STRETCH_EXTRA_EXPANDED = 108,
    }
    enum MyCSS_PROPERTY_FONT_STRETCH_ULTRA_CONDENSED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_ULTRA_CONDENSED;
    enum MyCSS_PROPERTY_FONT_STRETCH_EXTRA_CONDENSED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_EXTRA_CONDENSED;
    enum MyCSS_PROPERTY_FONT_STRETCH_EXPANDED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_EXPANDED;
    enum MyCSS_PROPERTY_FONT_STRETCH_CONDENSED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_CONDENSED;
    enum MyCSS_PROPERTY_FONT_STRETCH_ULTRA_EXPANDED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_ULTRA_EXPANDED;
    enum MyCSS_PROPERTY_FONT_STRETCH_NORMAL = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_NORMAL;
    enum MyCSS_PROPERTY_FONT_STRETCH_SEMI_EXPANDED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_SEMI_EXPANDED;
    enum MyCSS_PROPERTY_FONT_STRETCH_SEMI_CONDENSED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_SEMI_CONDENSED;
    enum MyCSS_PROPERTY_FONT_STRETCH_EXTRA_EXPANDED = mycss_property_font_stretch.MyCSS_PROPERTY_FONT_STRETCH_EXTRA_EXPANDED;
    alias mycss_property_font_stretch_t = mycss_property_font_stretch;
    alias mycss_property_font_style_t = mycss_property_font_style;
    enum mycss_property_font_style
    {
        MyCSS_PROPERTY_FONT_STYLE_NORMAL = 213,
        MyCSS_PROPERTY_FONT_STYLE_ITALIC = 162,
        MyCSS_PROPERTY_FONT_STYLE_OBLIQUE = 230,
        MyCSS_PROPERTY_FONT_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_FONT_STYLE_INITIAL = 147,
        MyCSS_PROPERTY_FONT_STYLE_UNSET = 367,
    }
    enum MyCSS_PROPERTY_FONT_STYLE_NORMAL = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_NORMAL;
    enum MyCSS_PROPERTY_FONT_STYLE_ITALIC = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_ITALIC;
    enum MyCSS_PROPERTY_FONT_STYLE_OBLIQUE = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_OBLIQUE;
    enum MyCSS_PROPERTY_FONT_STYLE_INHERIT = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_INHERIT;
    enum MyCSS_PROPERTY_FONT_STYLE_INITIAL = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_INITIAL;
    enum MyCSS_PROPERTY_FONT_STYLE_UNSET = mycss_property_font_style.MyCSS_PROPERTY_FONT_STYLE_UNSET;
    enum mycss_property_font_synthesis
    {
        MyCSS_PROPERTY_FONT_SYNTHESIS_NONE = 211,
        MyCSS_PROPERTY_FONT_SYNTHESIS_STYLE = 335,
        MyCSS_PROPERTY_FONT_SYNTHESIS_WEIGHT = 380,
    }
    enum MyCSS_PROPERTY_FONT_SYNTHESIS_NONE = mycss_property_font_synthesis.MyCSS_PROPERTY_FONT_SYNTHESIS_NONE;
    enum MyCSS_PROPERTY_FONT_SYNTHESIS_STYLE = mycss_property_font_synthesis.MyCSS_PROPERTY_FONT_SYNTHESIS_STYLE;
    enum MyCSS_PROPERTY_FONT_SYNTHESIS_WEIGHT = mycss_property_font_synthesis.MyCSS_PROPERTY_FONT_SYNTHESIS_WEIGHT;
    alias mycss_property_font_synthesis_t = mycss_property_font_synthesis;
    alias mycss_property_font_variant_t = mycss_property_font_variant;
    enum mycss_property_font_variant
    {
        MyCSS_PROPERTY_FONT_VARIANT_HISTORICAL_FORMS = 139,
        MyCSS_PROPERTY_FONT_VARIANT_PETITE_CAPS = 256,
        MyCSS_PROPERTY_FONT_VARIANT_UNICASE = 365,
        MyCSS_PROPERTY_FONT_VARIANT_RUBY = 285,
        MyCSS_PROPERTY_FONT_VARIANT_SMALL_CAPS = 314,
        MyCSS_PROPERTY_FONT_VARIANT_ORDINAL = 238,
        MyCSS_PROPERTY_FONT_VARIANT_ALL_SMALL_CAPS = 20,
        MyCSS_PROPERTY_FONT_VARIANT_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_ALL_PETITE_CAPS = 18,
        MyCSS_PROPERTY_FONT_VARIANT_TITLING_CAPS = 355,
        MyCSS_PROPERTY_FONT_VARIANT_SLASHED_ZERO = 309,
        MyCSS_PROPERTY_FONT_VARIANT_SUPER = 337,
        MyCSS_PROPERTY_FONT_VARIANT_SUB = 336,
        MyCSS_PROPERTY_FONT_VARIANT_NONE = 211,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_HISTORICAL_FORMS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_HISTORICAL_FORMS;
    enum MyCSS_PROPERTY_FONT_VARIANT_PETITE_CAPS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_PETITE_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_UNICASE = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_UNICASE;
    enum MyCSS_PROPERTY_FONT_VARIANT_RUBY = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_RUBY;
    enum MyCSS_PROPERTY_FONT_VARIANT_SMALL_CAPS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_SMALL_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_ORDINAL = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_ORDINAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_ALL_SMALL_CAPS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_ALL_SMALL_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NORMAL = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_ALL_PETITE_CAPS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_ALL_PETITE_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_TITLING_CAPS = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_TITLING_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_SLASHED_ZERO = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_SLASHED_ZERO;
    enum MyCSS_PROPERTY_FONT_VARIANT_SUPER = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_SUPER;
    enum MyCSS_PROPERTY_FONT_VARIANT_SUB = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_SUB;
    enum MyCSS_PROPERTY_FONT_VARIANT_NONE = mycss_property_font_variant.MyCSS_PROPERTY_FONT_VARIANT_NONE;
    alias mycss_property_font_variant_alternates_t = mycss_property_font_variant_alternates;
    enum mycss_property_font_variant_alternates
    {
        MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_HISTORICAL_FORMS = 139,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_NORMAL = mycss_property_font_variant_alternates.MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_HISTORICAL_FORMS = mycss_property_font_variant_alternates.MyCSS_PROPERTY_FONT_VARIANT_ALTERNATES_HISTORICAL_FORMS;
    alias mycss_property_font_variant_caps_t = mycss_property_font_variant_caps;
    enum mycss_property_font_variant_caps
    {
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_SMALL_CAPS = 314,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_PETITE_CAPS = 256,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_UNICASE = 365,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_SMALL_CAPS = 20,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_PETITE_CAPS = 18,
        MyCSS_PROPERTY_FONT_VARIANT_CAPS_TITLING_CAPS = 355,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_SMALL_CAPS = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_SMALL_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_PETITE_CAPS = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_PETITE_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_NORMAL = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_UNICASE = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_UNICASE;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_SMALL_CAPS = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_SMALL_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_PETITE_CAPS = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_ALL_PETITE_CAPS;
    enum MyCSS_PROPERTY_FONT_VARIANT_CAPS_TITLING_CAPS = mycss_property_font_variant_caps.MyCSS_PROPERTY_FONT_VARIANT_CAPS_TITLING_CAPS;
    alias mycss_property_font_variant_east_asian_t = mycss_property_font_variant_east_asian;
    enum mycss_property_font_variant_east_asian
    {
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_PROPORTIONAL_WIDTH = 266,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_RUBY = 285,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS78 = 164,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS83 = 165,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS90 = 166,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_SIMPLIFIED = 307,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_FULL_WIDTH = 128,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_TRADITIONAL = 357,
        MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS04 = 163,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_PROPORTIONAL_WIDTH = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_PROPORTIONAL_WIDTH;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_RUBY = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_RUBY;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS78 = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS78;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_NORMAL = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS83 = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS83;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS90 = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS90;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_SIMPLIFIED = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_SIMPLIFIED;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_FULL_WIDTH = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_FULL_WIDTH;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_TRADITIONAL = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_TRADITIONAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS04 = mycss_property_font_variant_east_asian.MyCSS_PROPERTY_FONT_VARIANT_EAST_ASIAN_JIS04;
    alias mycss_property_font_variant_ligatures_t = mycss_property_font_variant_ligatures;
    enum mycss_property_font_variant_ligatures
    {
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_HISTORICAL_LIGATURES = 140,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_DISCRETIONARY_LIGATURES = 88,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_DISCRETIONARY_LIGATURES = 219,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_CONTEXTUAL = 73,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_CONTEXTUAL = 218,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_COMMON_LIGATURES = 216,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NONE = 211,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_COMMON_LIGATURES = 65,
        MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_HISTORICAL_LIGATURES = 222,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_HISTORICAL_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_HISTORICAL_LIGATURES;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_DISCRETIONARY_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_DISCRETIONARY_LIGATURES;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_DISCRETIONARY_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_DISCRETIONARY_LIGATURES;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_CONTEXTUAL = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_CONTEXTUAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_CONTEXTUAL = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_CONTEXTUAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_COMMON_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_COMMON_LIGATURES;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NONE = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NONE;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NORMAL = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_COMMON_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_COMMON_LIGATURES;
    enum MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_HISTORICAL_LIGATURES = mycss_property_font_variant_ligatures.MyCSS_PROPERTY_FONT_VARIANT_LIGATURES_NO_HISTORICAL_LIGATURES;
    enum mycss_property_font_variant_numeric
    {
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_LINING_NUMS = 181,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_TABULAR_NUMS = 349,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_OLDSTYLE_NUMS = 232,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_PROPORTIONAL_NUMS = 265,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_STACKED_FRACTIONS = 325,
        MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_DIAGONAL_FRACTIONS = 85,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_NORMAL = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_LINING_NUMS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_LINING_NUMS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_TABULAR_NUMS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_TABULAR_NUMS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_OLDSTYLE_NUMS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_OLDSTYLE_NUMS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_PROPORTIONAL_NUMS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_PROPORTIONAL_NUMS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_STACKED_FRACTIONS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_STACKED_FRACTIONS;
    enum MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_DIAGONAL_FRACTIONS = mycss_property_font_variant_numeric.MyCSS_PROPERTY_FONT_VARIANT_NUMERIC_DIAGONAL_FRACTIONS;
    alias mycss_property_font_variant_numeric_t = mycss_property_font_variant_numeric;
    enum mycss_property_font_variant_position
    {
        MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUB = 336,
        MyCSS_PROPERTY_FONT_VARIANT_POSITION_NORMAL = 213,
        MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUPER = 337,
    }
    enum MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUB = mycss_property_font_variant_position.MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUB;
    enum MyCSS_PROPERTY_FONT_VARIANT_POSITION_NORMAL = mycss_property_font_variant_position.MyCSS_PROPERTY_FONT_VARIANT_POSITION_NORMAL;
    enum MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUPER = mycss_property_font_variant_position.MyCSS_PROPERTY_FONT_VARIANT_POSITION_SUPER;
    alias mycss_property_font_variant_position_t = mycss_property_font_variant_position;
    enum mycss_property_font_weight
    {
        MyCSS_PROPERTY_FONT_WEIGHT_500 = 7,
        MyCSS_PROPERTY_FONT_WEIGHT_600 = 8,
        MyCSS_PROPERTY_FONT_WEIGHT_700 = 9,
        MyCSS_PROPERTY_FONT_WEIGHT_800 = 10,
        MyCSS_PROPERTY_FONT_WEIGHT_900 = 12,
        MyCSS_PROPERTY_FONT_WEIGHT_UNSET = 367,
        MyCSS_PROPERTY_FONT_WEIGHT_INHERIT = 146,
        MyCSS_PROPERTY_FONT_WEIGHT_INITIAL = 147,
        MyCSS_PROPERTY_FONT_WEIGHT_400 = 6,
        MyCSS_PROPERTY_FONT_WEIGHT_BOLDER = 41,
        MyCSS_PROPERTY_FONT_WEIGHT_200 = 4,
        MyCSS_PROPERTY_FONT_WEIGHT_LIGHTER = 176,
        MyCSS_PROPERTY_FONT_WEIGHT_300 = 5,
        MyCSS_PROPERTY_FONT_WEIGHT_100 = 3,
        MyCSS_PROPERTY_FONT_WEIGHT_BOLD = 40,
        MyCSS_PROPERTY_FONT_WEIGHT_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_FONT_WEIGHT_500 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_500;
    enum MyCSS_PROPERTY_FONT_WEIGHT_600 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_600;
    enum MyCSS_PROPERTY_FONT_WEIGHT_700 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_700;
    enum MyCSS_PROPERTY_FONT_WEIGHT_800 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_800;
    enum MyCSS_PROPERTY_FONT_WEIGHT_900 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_900;
    enum MyCSS_PROPERTY_FONT_WEIGHT_UNSET = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_UNSET;
    enum MyCSS_PROPERTY_FONT_WEIGHT_INHERIT = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_INHERIT;
    enum MyCSS_PROPERTY_FONT_WEIGHT_INITIAL = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_INITIAL;
    enum MyCSS_PROPERTY_FONT_WEIGHT_400 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_400;
    enum MyCSS_PROPERTY_FONT_WEIGHT_BOLDER = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_BOLDER;
    enum MyCSS_PROPERTY_FONT_WEIGHT_200 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_200;
    enum MyCSS_PROPERTY_FONT_WEIGHT_LIGHTER = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_LIGHTER;
    enum MyCSS_PROPERTY_FONT_WEIGHT_300 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_300;
    enum MyCSS_PROPERTY_FONT_WEIGHT_100 = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_100;
    enum MyCSS_PROPERTY_FONT_WEIGHT_BOLD = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_BOLD;
    enum MyCSS_PROPERTY_FONT_WEIGHT_NORMAL = mycss_property_font_weight.MyCSS_PROPERTY_FONT_WEIGHT_NORMAL;
    alias mycss_property_font_weight_t = mycss_property_font_weight;
    enum mycss_property_glyph_orientation_vertical
    {
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INITIAL = 147,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0 = 1,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_AUTO = 24,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0DEG = 2,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90DEG = 13,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90 = 11,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_UNSET = 367,
        MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INITIAL = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INITIAL;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0 = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_AUTO = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_AUTO;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0DEG = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_0DEG;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90DEG = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90DEG;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90 = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_90;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_UNSET = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_UNSET;
    enum MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INHERIT = mycss_property_glyph_orientation_vertical.MyCSS_PROPERTY_GLYPH_ORIENTATION_VERTICAL_INHERIT;
    alias mycss_property_glyph_orientation_vertical_t = mycss_property_glyph_orientation_vertical;
    enum mycss_property_hanging_punctuation
    {
        MyCSS_PROPERTY_HANGING_PUNCTUATION_FORCE_END = 125,
        MyCSS_PROPERTY_HANGING_PUNCTUATION_NONE = 211,
        MyCSS_PROPERTY_HANGING_PUNCTUATION_LAST = 172,
        MyCSS_PROPERTY_HANGING_PUNCTUATION_FIRST = 115,
        MyCSS_PROPERTY_HANGING_PUNCTUATION_ALLOW_END = 17,
    }
    enum MyCSS_PROPERTY_HANGING_PUNCTUATION_FORCE_END = mycss_property_hanging_punctuation.MyCSS_PROPERTY_HANGING_PUNCTUATION_FORCE_END;
    enum MyCSS_PROPERTY_HANGING_PUNCTUATION_NONE = mycss_property_hanging_punctuation.MyCSS_PROPERTY_HANGING_PUNCTUATION_NONE;
    enum MyCSS_PROPERTY_HANGING_PUNCTUATION_LAST = mycss_property_hanging_punctuation.MyCSS_PROPERTY_HANGING_PUNCTUATION_LAST;
    enum MyCSS_PROPERTY_HANGING_PUNCTUATION_FIRST = mycss_property_hanging_punctuation.MyCSS_PROPERTY_HANGING_PUNCTUATION_FIRST;
    enum MyCSS_PROPERTY_HANGING_PUNCTUATION_ALLOW_END = mycss_property_hanging_punctuation.MyCSS_PROPERTY_HANGING_PUNCTUATION_ALLOW_END;
    alias mycss_property_hanging_punctuation_t = mycss_property_hanging_punctuation;
    enum mycss_property_height
    {
        MyCSS_PROPERTY_HEIGHT_AUTO = 24,
        MyCSS_PROPERTY_HEIGHT__LENGTH = 410,
        MyCSS_PROPERTY_HEIGHT_COMPLEX = 66,
        MyCSS_PROPERTY_HEIGHT_AVAILABLE = 25,
        MyCSS_PROPERTY_HEIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_HEIGHT_MIN_CONTENT = 203,
        MyCSS_PROPERTY_HEIGHT_MAX_CONTENT = 197,
        MyCSS_PROPERTY_HEIGHT_FIT_CONTENT = 117,
        MyCSS_PROPERTY_HEIGHT_UNSET = 367,
        MyCSS_PROPERTY_HEIGHT_INHERIT = 146,
        MyCSS_PROPERTY_HEIGHT_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_HEIGHT_AUTO = mycss_property_height.MyCSS_PROPERTY_HEIGHT_AUTO;
    enum MyCSS_PROPERTY_HEIGHT__LENGTH = mycss_property_height.MyCSS_PROPERTY_HEIGHT__LENGTH;
    enum MyCSS_PROPERTY_HEIGHT_COMPLEX = mycss_property_height.MyCSS_PROPERTY_HEIGHT_COMPLEX;
    enum MyCSS_PROPERTY_HEIGHT_AVAILABLE = mycss_property_height.MyCSS_PROPERTY_HEIGHT_AVAILABLE;
    enum MyCSS_PROPERTY_HEIGHT__PERCENTAGE = mycss_property_height.MyCSS_PROPERTY_HEIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_HEIGHT_MIN_CONTENT = mycss_property_height.MyCSS_PROPERTY_HEIGHT_MIN_CONTENT;
    enum MyCSS_PROPERTY_HEIGHT_MAX_CONTENT = mycss_property_height.MyCSS_PROPERTY_HEIGHT_MAX_CONTENT;
    enum MyCSS_PROPERTY_HEIGHT_FIT_CONTENT = mycss_property_height.MyCSS_PROPERTY_HEIGHT_FIT_CONTENT;
    enum MyCSS_PROPERTY_HEIGHT_UNSET = mycss_property_height.MyCSS_PROPERTY_HEIGHT_UNSET;
    enum MyCSS_PROPERTY_HEIGHT_INHERIT = mycss_property_height.MyCSS_PROPERTY_HEIGHT_INHERIT;
    enum MyCSS_PROPERTY_HEIGHT_INITIAL = mycss_property_height.MyCSS_PROPERTY_HEIGHT_INITIAL;
    alias mycss_property_height_t = mycss_property_height;
    enum mycss_property_hyphens
    {
        MyCSS_PROPERTY_HYPHENS_INHERIT = 146,
        MyCSS_PROPERTY_HYPHENS_INITIAL = 147,
        MyCSS_PROPERTY_HYPHENS_NONE = 211,
        MyCSS_PROPERTY_HYPHENS_UNSET = 367,
        MyCSS_PROPERTY_HYPHENS_AUTO = 24,
        MyCSS_PROPERTY_HYPHENS_MANUAL = 193,
    }
    enum MyCSS_PROPERTY_HYPHENS_INHERIT = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_INHERIT;
    enum MyCSS_PROPERTY_HYPHENS_INITIAL = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_INITIAL;
    enum MyCSS_PROPERTY_HYPHENS_NONE = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_NONE;
    enum MyCSS_PROPERTY_HYPHENS_UNSET = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_UNSET;
    enum MyCSS_PROPERTY_HYPHENS_AUTO = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_AUTO;
    enum MyCSS_PROPERTY_HYPHENS_MANUAL = mycss_property_hyphens.MyCSS_PROPERTY_HYPHENS_MANUAL;
    alias mycss_property_hyphens_t = mycss_property_hyphens;
    alias mycss_property_image_rendering_t = mycss_property_image_rendering;
    enum mycss_property_image_rendering
    {
        MyCSS_PROPERTY_IMAGE_RENDERING_INHERIT = 146,
        MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZESPEED = 237,
        MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZEQUALITY = 236,
        MyCSS_PROPERTY_IMAGE_RENDERING_AUTO = 24,
    }
    enum MyCSS_PROPERTY_IMAGE_RENDERING_INHERIT = mycss_property_image_rendering.MyCSS_PROPERTY_IMAGE_RENDERING_INHERIT;
    enum MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZESPEED = mycss_property_image_rendering.MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZESPEED;
    enum MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZEQUALITY = mycss_property_image_rendering.MyCSS_PROPERTY_IMAGE_RENDERING_OPTIMIZEQUALITY;
    enum MyCSS_PROPERTY_IMAGE_RENDERING_AUTO = mycss_property_image_rendering.MyCSS_PROPERTY_IMAGE_RENDERING_AUTO;
    alias mycss_property_indent_edge_reset_t = mycss_property_indent_edge_reset;
    enum mycss_property_indent_edge_reset
    {
        MyCSS_PROPERTY_INDENT_EDGE_RESET_NONE = 211,
        MyCSS_PROPERTY_INDENT_EDGE_RESET_MARGIN_EDGE = 194,
        MyCSS_PROPERTY_INDENT_EDGE_RESET_BORDER_EDGE = 43,
        MyCSS_PROPERTY_INDENT_EDGE_RESET_PADDING_EDGE = 245,
        MyCSS_PROPERTY_INDENT_EDGE_RESET_CONTENT_EDGE = 72,
    }
    enum MyCSS_PROPERTY_INDENT_EDGE_RESET_NONE = mycss_property_indent_edge_reset.MyCSS_PROPERTY_INDENT_EDGE_RESET_NONE;
    enum MyCSS_PROPERTY_INDENT_EDGE_RESET_MARGIN_EDGE = mycss_property_indent_edge_reset.MyCSS_PROPERTY_INDENT_EDGE_RESET_MARGIN_EDGE;
    enum MyCSS_PROPERTY_INDENT_EDGE_RESET_BORDER_EDGE = mycss_property_indent_edge_reset.MyCSS_PROPERTY_INDENT_EDGE_RESET_BORDER_EDGE;
    enum MyCSS_PROPERTY_INDENT_EDGE_RESET_PADDING_EDGE = mycss_property_indent_edge_reset.MyCSS_PROPERTY_INDENT_EDGE_RESET_PADDING_EDGE;
    enum MyCSS_PROPERTY_INDENT_EDGE_RESET_CONTENT_EDGE = mycss_property_indent_edge_reset.MyCSS_PROPERTY_INDENT_EDGE_RESET_CONTENT_EDGE;
    alias mycss_property_justify_content_t = mycss_property_justify_content;
    enum mycss_property_justify_content
    {
        MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_START = 122,
        MyCSS_PROPERTY_JUSTIFY_CONTENT_CENTER = 55,
        MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_END = 121,
        MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_AROUND = 320,
        MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_BETWEEN = 321,
    }
    enum MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_START = mycss_property_justify_content.MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_START;
    enum MyCSS_PROPERTY_JUSTIFY_CONTENT_CENTER = mycss_property_justify_content.MyCSS_PROPERTY_JUSTIFY_CONTENT_CENTER;
    enum MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_END = mycss_property_justify_content.MyCSS_PROPERTY_JUSTIFY_CONTENT_FLEX_END;
    enum MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_AROUND = mycss_property_justify_content.MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_AROUND;
    enum MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_BETWEEN = mycss_property_justify_content.MyCSS_PROPERTY_JUSTIFY_CONTENT_SPACE_BETWEEN;
    enum mycss_property_left
    {
        MyCSS_PROPERTY_LEFT__LENGTH = 410,
        MyCSS_PROPERTY_LEFT_UNSET = 367,
        MyCSS_PROPERTY_LEFT__PERCENTAGE = 413,
        MyCSS_PROPERTY_LEFT_INHERIT = 146,
        MyCSS_PROPERTY_LEFT_AUTO = 24,
        MyCSS_PROPERTY_LEFT_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_LEFT__LENGTH = mycss_property_left.MyCSS_PROPERTY_LEFT__LENGTH;
    enum MyCSS_PROPERTY_LEFT_UNSET = mycss_property_left.MyCSS_PROPERTY_LEFT_UNSET;
    enum MyCSS_PROPERTY_LEFT__PERCENTAGE = mycss_property_left.MyCSS_PROPERTY_LEFT__PERCENTAGE;
    enum MyCSS_PROPERTY_LEFT_INHERIT = mycss_property_left.MyCSS_PROPERTY_LEFT_INHERIT;
    enum MyCSS_PROPERTY_LEFT_AUTO = mycss_property_left.MyCSS_PROPERTY_LEFT_AUTO;
    enum MyCSS_PROPERTY_LEFT_INITIAL = mycss_property_left.MyCSS_PROPERTY_LEFT_INITIAL;
    alias mycss_property_left_t = mycss_property_left;
    enum mycss_property_letter_spacing
    {
        MyCSS_PROPERTY_LETTER_SPACING__LENGTH = 410,
        MyCSS_PROPERTY_LETTER_SPACING_INHERIT = 146,
        MyCSS_PROPERTY_LETTER_SPACING_NORMAL = 213,
        MyCSS_PROPERTY_LETTER_SPACING_INITIAL = 147,
        MyCSS_PROPERTY_LETTER_SPACING_UNSET = 367,
    }
    enum MyCSS_PROPERTY_LETTER_SPACING__LENGTH = mycss_property_letter_spacing.MyCSS_PROPERTY_LETTER_SPACING__LENGTH;
    enum MyCSS_PROPERTY_LETTER_SPACING_INHERIT = mycss_property_letter_spacing.MyCSS_PROPERTY_LETTER_SPACING_INHERIT;
    enum MyCSS_PROPERTY_LETTER_SPACING_NORMAL = mycss_property_letter_spacing.MyCSS_PROPERTY_LETTER_SPACING_NORMAL;
    enum MyCSS_PROPERTY_LETTER_SPACING_INITIAL = mycss_property_letter_spacing.MyCSS_PROPERTY_LETTER_SPACING_INITIAL;
    enum MyCSS_PROPERTY_LETTER_SPACING_UNSET = mycss_property_letter_spacing.MyCSS_PROPERTY_LETTER_SPACING_UNSET;
    alias mycss_property_letter_spacing_t = mycss_property_letter_spacing;
    enum mycss_property_line_break
    {
        MyCSS_PROPERTY_LINE_BREAK_NORMAL = 213,
        MyCSS_PROPERTY_LINE_BREAK_UNSET = 367,
        MyCSS_PROPERTY_LINE_BREAK_STRICT = 333,
        MyCSS_PROPERTY_LINE_BREAK_INHERIT = 146,
        MyCSS_PROPERTY_LINE_BREAK_INITIAL = 147,
        MyCSS_PROPERTY_LINE_BREAK_AUTO = 24,
        MyCSS_PROPERTY_LINE_BREAK_LOOSE = 186,
    }
    enum MyCSS_PROPERTY_LINE_BREAK_NORMAL = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_NORMAL;
    enum MyCSS_PROPERTY_LINE_BREAK_UNSET = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_UNSET;
    enum MyCSS_PROPERTY_LINE_BREAK_STRICT = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_STRICT;
    enum MyCSS_PROPERTY_LINE_BREAK_INHERIT = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_INHERIT;
    enum MyCSS_PROPERTY_LINE_BREAK_INITIAL = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_INITIAL;
    enum MyCSS_PROPERTY_LINE_BREAK_AUTO = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_AUTO;
    enum MyCSS_PROPERTY_LINE_BREAK_LOOSE = mycss_property_line_break.MyCSS_PROPERTY_LINE_BREAK_LOOSE;
    alias mycss_property_line_break_t = mycss_property_line_break;
    enum mycss_property_line_height
    {
        MyCSS_PROPERTY_LINE_HEIGHT_UNSET = 367,
        MyCSS_PROPERTY_LINE_HEIGHT_NORMAL = 213,
        MyCSS_PROPERTY_LINE_HEIGHT__NUMBER = 412,
        MyCSS_PROPERTY_LINE_HEIGHT__LENGTH = 410,
        MyCSS_PROPERTY_LINE_HEIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_LINE_HEIGHT_INHERIT = 146,
        MyCSS_PROPERTY_LINE_HEIGHT_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_LINE_HEIGHT_UNSET = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT_UNSET;
    enum MyCSS_PROPERTY_LINE_HEIGHT_NORMAL = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT_NORMAL;
    enum MyCSS_PROPERTY_LINE_HEIGHT__NUMBER = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT__NUMBER;
    enum MyCSS_PROPERTY_LINE_HEIGHT__LENGTH = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT__LENGTH;
    enum MyCSS_PROPERTY_LINE_HEIGHT__PERCENTAGE = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_LINE_HEIGHT_INHERIT = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT_INHERIT;
    enum MyCSS_PROPERTY_LINE_HEIGHT_INITIAL = mycss_property_line_height.MyCSS_PROPERTY_LINE_HEIGHT_INITIAL;
    alias mycss_property_line_height_t = mycss_property_line_height;
    alias mycss_property_list_style_image_t = mycss_property_list_style_image;
    enum mycss_property_list_style_image
    {
        MyCSS_PROPERTY_LIST_STYLE_IMAGE_NONE = 211,
    }
    enum MyCSS_PROPERTY_LIST_STYLE_IMAGE_NONE = mycss_property_list_style_image.MyCSS_PROPERTY_LIST_STYLE_IMAGE_NONE;
    alias mycss_property_list_style_position_t = mycss_property_list_style_position;
    enum mycss_property_list_style_position
    {
        MyCSS_PROPERTY_LIST_STYLE_POSITION_INSIDE = 156,
        MyCSS_PROPERTY_LIST_STYLE_POSITION_OUTSIDE = 240,
    }
    enum MyCSS_PROPERTY_LIST_STYLE_POSITION_INSIDE = mycss_property_list_style_position.MyCSS_PROPERTY_LIST_STYLE_POSITION_INSIDE;
    enum MyCSS_PROPERTY_LIST_STYLE_POSITION_OUTSIDE = mycss_property_list_style_position.MyCSS_PROPERTY_LIST_STYLE_POSITION_OUTSIDE;
    alias mycss_property_list_style_type_t = mycss_property_list_style_type;
    enum mycss_property_list_style_type
    {
        MyCSS_PROPERTY_LIST_STYLE_TYPE_NONE = 211,
    }
    enum MyCSS_PROPERTY_LIST_STYLE_TYPE_NONE = mycss_property_list_style_type.MyCSS_PROPERTY_LIST_STYLE_TYPE_NONE;
    alias mycss_property_margin_t = mycss_property_margin;
    enum mycss_property_margin
    {
        MyCSS_PROPERTY_MARGIN_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_UNSET = 367,
        MyCSS_PROPERTY_MARGIN__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_AUTO = mycss_property_margin.MyCSS_PROPERTY_MARGIN_AUTO;
    enum MyCSS_PROPERTY_MARGIN_UNSET = mycss_property_margin.MyCSS_PROPERTY_MARGIN_UNSET;
    enum MyCSS_PROPERTY_MARGIN__LENGTH = mycss_property_margin.MyCSS_PROPERTY_MARGIN__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_INHERIT = mycss_property_margin.MyCSS_PROPERTY_MARGIN_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_INITIAL = mycss_property_margin.MyCSS_PROPERTY_MARGIN_INITIAL;
    enum MyCSS_PROPERTY_MARGIN__PERCENTAGE = mycss_property_margin.MyCSS_PROPERTY_MARGIN__PERCENTAGE;
    alias mycss_property_margin_block_end_t = mycss_property_margin_block_end;
    enum mycss_property_margin_block_end
    {
        MyCSS_PROPERTY_MARGIN_BLOCK_END_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_BLOCK_END_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_BLOCK_END__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_BLOCK_END_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_BLOCK_END_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_BLOCK_END__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END_AUTO = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END_AUTO;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END_UNSET = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END_UNSET;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END__LENGTH = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END_INHERIT = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END_INITIAL = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_END__PERCENTAGE = mycss_property_margin_block_end.MyCSS_PROPERTY_MARGIN_BLOCK_END__PERCENTAGE;
    alias mycss_property_margin_block_start_t = mycss_property_margin_block_start;
    enum mycss_property_margin_block_start
    {
        MyCSS_PROPERTY_MARGIN_BLOCK_START_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_BLOCK_START_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_BLOCK_START__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_BLOCK_START_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_BLOCK_START_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_BLOCK_START__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START_AUTO = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START_AUTO;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START_UNSET = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START_UNSET;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START__LENGTH = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START_INHERIT = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START_INITIAL = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_BLOCK_START__PERCENTAGE = mycss_property_margin_block_start.MyCSS_PROPERTY_MARGIN_BLOCK_START__PERCENTAGE;
    alias mycss_property_margin_bottom_t = mycss_property_margin_bottom;
    enum mycss_property_margin_bottom
    {
        MyCSS_PROPERTY_MARGIN_BOTTOM_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_BOTTOM_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_BOTTOM__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_BOTTOM_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_BOTTOM_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_BOTTOM__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_BOTTOM_AUTO = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM_AUTO;
    enum MyCSS_PROPERTY_MARGIN_BOTTOM_UNSET = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM_UNSET;
    enum MyCSS_PROPERTY_MARGIN_BOTTOM__LENGTH = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_BOTTOM_INHERIT = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_BOTTOM_INITIAL = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_BOTTOM__PERCENTAGE = mycss_property_margin_bottom.MyCSS_PROPERTY_MARGIN_BOTTOM__PERCENTAGE;
    alias mycss_property_margin_inline_end_t = mycss_property_margin_inline_end;
    enum mycss_property_margin_inline_end
    {
        MyCSS_PROPERTY_MARGIN_INLINE_END_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_INLINE_END_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_INLINE_END__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_INLINE_END_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_INLINE_END_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_INLINE_END__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_INLINE_END_AUTO = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END_AUTO;
    enum MyCSS_PROPERTY_MARGIN_INLINE_END_UNSET = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END_UNSET;
    enum MyCSS_PROPERTY_MARGIN_INLINE_END__LENGTH = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_INLINE_END_INHERIT = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_INLINE_END_INITIAL = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_INLINE_END__PERCENTAGE = mycss_property_margin_inline_end.MyCSS_PROPERTY_MARGIN_INLINE_END__PERCENTAGE;
    alias mycss_property_margin_inline_start_t = mycss_property_margin_inline_start;
    enum mycss_property_margin_inline_start
    {
        MyCSS_PROPERTY_MARGIN_INLINE_START_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_INLINE_START_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_INLINE_START__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_INLINE_START_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_INLINE_START_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_INLINE_START__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_INLINE_START_AUTO = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START_AUTO;
    enum MyCSS_PROPERTY_MARGIN_INLINE_START_UNSET = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START_UNSET;
    enum MyCSS_PROPERTY_MARGIN_INLINE_START__LENGTH = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_INLINE_START_INHERIT = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_INLINE_START_INITIAL = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_INLINE_START__PERCENTAGE = mycss_property_margin_inline_start.MyCSS_PROPERTY_MARGIN_INLINE_START__PERCENTAGE;
    enum mycss_property_margin_left
    {
        MyCSS_PROPERTY_MARGIN_LEFT_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_LEFT_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_LEFT__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_LEFT_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_LEFT_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_LEFT__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MARGIN_LEFT_AUTO = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT_AUTO;
    enum MyCSS_PROPERTY_MARGIN_LEFT_UNSET = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT_UNSET;
    enum MyCSS_PROPERTY_MARGIN_LEFT__LENGTH = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_LEFT_INHERIT = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_LEFT_INITIAL = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_LEFT__PERCENTAGE = mycss_property_margin_left.MyCSS_PROPERTY_MARGIN_LEFT__PERCENTAGE;
    alias mycss_property_margin_left_t = mycss_property_margin_left;
    alias mycss_property_margin_right_t = mycss_property_margin_right;
    enum mycss_property_margin_right
    {
        MyCSS_PROPERTY_MARGIN_RIGHT_UNSET = 367,
        MyCSS_PROPERTY_MARGIN_RIGHT__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_RIGHT_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_RIGHT_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_RIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_MARGIN_RIGHT_AUTO = 24,
    }
    enum MyCSS_PROPERTY_MARGIN_RIGHT_UNSET = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT_UNSET;
    enum MyCSS_PROPERTY_MARGIN_RIGHT__LENGTH = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_RIGHT_INHERIT = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_RIGHT_INITIAL = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_RIGHT__PERCENTAGE = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_MARGIN_RIGHT_AUTO = mycss_property_margin_right.MyCSS_PROPERTY_MARGIN_RIGHT_AUTO;
    alias mycss_property_margin_top_t = mycss_property_margin_top;
    enum mycss_property_margin_top
    {
        MyCSS_PROPERTY_MARGIN_TOP__LENGTH = 410,
        MyCSS_PROPERTY_MARGIN_TOP_INHERIT = 146,
        MyCSS_PROPERTY_MARGIN_TOP_INITIAL = 147,
        MyCSS_PROPERTY_MARGIN_TOP__PERCENTAGE = 413,
        MyCSS_PROPERTY_MARGIN_TOP_AUTO = 24,
        MyCSS_PROPERTY_MARGIN_TOP_UNSET = 367,
    }
    enum MyCSS_PROPERTY_MARGIN_TOP__LENGTH = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP__LENGTH;
    enum MyCSS_PROPERTY_MARGIN_TOP_INHERIT = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP_INHERIT;
    enum MyCSS_PROPERTY_MARGIN_TOP_INITIAL = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP_INITIAL;
    enum MyCSS_PROPERTY_MARGIN_TOP__PERCENTAGE = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP__PERCENTAGE;
    enum MyCSS_PROPERTY_MARGIN_TOP_AUTO = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP_AUTO;
    enum MyCSS_PROPERTY_MARGIN_TOP_UNSET = mycss_property_margin_top.MyCSS_PROPERTY_MARGIN_TOP_UNSET;
    alias mycss_property_marker_end_t = mycss_property_marker_end;
    enum mycss_property_marker_end
    {
        MyCSS_PROPERTY_MARKER_END_NONE = 211,
    }
    enum MyCSS_PROPERTY_MARKER_END_NONE = mycss_property_marker_end.MyCSS_PROPERTY_MARKER_END_NONE;
    alias mycss_property_marker_mid_t = mycss_property_marker_mid;
    enum mycss_property_marker_mid
    {
        MyCSS_PROPERTY_MARKER_MID_NONE = 211,
    }
    enum MyCSS_PROPERTY_MARKER_MID_NONE = mycss_property_marker_mid.MyCSS_PROPERTY_MARKER_MID_NONE;
    alias mycss_property_marker_side_t = mycss_property_marker_side;
    enum mycss_property_marker_side
    {
        MyCSS_PROPERTY_MARKER_SIDE_LIST_CONTAINER = 182,
        MyCSS_PROPERTY_MARKER_SIDE_LIST_ITEM = 183,
    }
    enum MyCSS_PROPERTY_MARKER_SIDE_LIST_CONTAINER = mycss_property_marker_side.MyCSS_PROPERTY_MARKER_SIDE_LIST_CONTAINER;
    enum MyCSS_PROPERTY_MARKER_SIDE_LIST_ITEM = mycss_property_marker_side.MyCSS_PROPERTY_MARKER_SIDE_LIST_ITEM;
    alias mycss_property_marker_start_t = mycss_property_marker_start;
    enum mycss_property_marker_start
    {
        MyCSS_PROPERTY_MARKER_START_NONE = 211,
    }
    enum MyCSS_PROPERTY_MARKER_START_NONE = mycss_property_marker_start.MyCSS_PROPERTY_MARKER_START_NONE;
    alias mycss_property_max_height_t = mycss_property_max_height;
    enum mycss_property_max_height
    {
        MyCSS_PROPERTY_MAX_HEIGHT_INHERIT = 146,
        MyCSS_PROPERTY_MAX_HEIGHT_INITIAL = 147,
        MyCSS_PROPERTY_MAX_HEIGHT__LENGTH = 410,
        MyCSS_PROPERTY_MAX_HEIGHT_UNSET = 367,
        MyCSS_PROPERTY_MAX_HEIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_MAX_HEIGHT_NONE = 211,
    }
    enum MyCSS_PROPERTY_MAX_HEIGHT_INHERIT = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT_INHERIT;
    enum MyCSS_PROPERTY_MAX_HEIGHT_INITIAL = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT_INITIAL;
    enum MyCSS_PROPERTY_MAX_HEIGHT__LENGTH = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT__LENGTH;
    enum MyCSS_PROPERTY_MAX_HEIGHT_UNSET = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT_UNSET;
    enum MyCSS_PROPERTY_MAX_HEIGHT__PERCENTAGE = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_MAX_HEIGHT_NONE = mycss_property_max_height.MyCSS_PROPERTY_MAX_HEIGHT_NONE;
    alias mycss_property_max_lines_t = mycss_property_max_lines;
    enum mycss_property_max_lines
    {
        MyCSS_PROPERTY_MAX_LINES_NONE = 211,
    }
    enum MyCSS_PROPERTY_MAX_LINES_NONE = mycss_property_max_lines.MyCSS_PROPERTY_MAX_LINES_NONE;
    alias mycss_property_max_width_t = mycss_property_max_width;
    enum mycss_property_max_width
    {
        MyCSS_PROPERTY_MAX_WIDTH_NONE = 211,
        MyCSS_PROPERTY_MAX_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_MAX_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_MAX_WIDTH__PERCENTAGE = 413,
        MyCSS_PROPERTY_MAX_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_MAX_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_MAX_WIDTH_NONE = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH_NONE;
    enum MyCSS_PROPERTY_MAX_WIDTH__LENGTH = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_MAX_WIDTH_UNSET = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH_UNSET;
    enum MyCSS_PROPERTY_MAX_WIDTH__PERCENTAGE = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH__PERCENTAGE;
    enum MyCSS_PROPERTY_MAX_WIDTH_INHERIT = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_MAX_WIDTH_INITIAL = mycss_property_max_width.MyCSS_PROPERTY_MAX_WIDTH_INITIAL;
    alias mycss_property_min_height_t = mycss_property_min_height;
    enum mycss_property_min_height
    {
        MyCSS_PROPERTY_MIN_HEIGHT_UNSET = 367,
        MyCSS_PROPERTY_MIN_HEIGHT__LENGTH = 410,
        MyCSS_PROPERTY_MIN_HEIGHT_INHERIT = 146,
        MyCSS_PROPERTY_MIN_HEIGHT_INITIAL = 147,
        MyCSS_PROPERTY_MIN_HEIGHT__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_MIN_HEIGHT_UNSET = mycss_property_min_height.MyCSS_PROPERTY_MIN_HEIGHT_UNSET;
    enum MyCSS_PROPERTY_MIN_HEIGHT__LENGTH = mycss_property_min_height.MyCSS_PROPERTY_MIN_HEIGHT__LENGTH;
    enum MyCSS_PROPERTY_MIN_HEIGHT_INHERIT = mycss_property_min_height.MyCSS_PROPERTY_MIN_HEIGHT_INHERIT;
    enum MyCSS_PROPERTY_MIN_HEIGHT_INITIAL = mycss_property_min_height.MyCSS_PROPERTY_MIN_HEIGHT_INITIAL;
    enum MyCSS_PROPERTY_MIN_HEIGHT__PERCENTAGE = mycss_property_min_height.MyCSS_PROPERTY_MIN_HEIGHT__PERCENTAGE;
    enum mycss_property_min_width
    {
        MyCSS_PROPERTY_MIN_WIDTH_INITIAL = 147,
        MyCSS_PROPERTY_MIN_WIDTH__PERCENTAGE = 413,
        MyCSS_PROPERTY_MIN_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_MIN_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_MIN_WIDTH_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_MIN_WIDTH_INITIAL = mycss_property_min_width.MyCSS_PROPERTY_MIN_WIDTH_INITIAL;
    enum MyCSS_PROPERTY_MIN_WIDTH__PERCENTAGE = mycss_property_min_width.MyCSS_PROPERTY_MIN_WIDTH__PERCENTAGE;
    enum MyCSS_PROPERTY_MIN_WIDTH_UNSET = mycss_property_min_width.MyCSS_PROPERTY_MIN_WIDTH_UNSET;
    enum MyCSS_PROPERTY_MIN_WIDTH__LENGTH = mycss_property_min_width.MyCSS_PROPERTY_MIN_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_MIN_WIDTH_INHERIT = mycss_property_min_width.MyCSS_PROPERTY_MIN_WIDTH_INHERIT;
    alias mycss_property_min_width_t = mycss_property_min_width;
    alias mycss_property_nav_down_t = mycss_property_nav_down;
    enum mycss_property_nav_down
    {
        MyCSS_PROPERTY_NAV_DOWN_AUTO = 24,
        MyCSS_PROPERTY_NAV_DOWN_ROOT = 279,
        MyCSS_PROPERTY_NAV_DOWN_CURRENT = 79,
    }
    enum MyCSS_PROPERTY_NAV_DOWN_AUTO = mycss_property_nav_down.MyCSS_PROPERTY_NAV_DOWN_AUTO;
    enum MyCSS_PROPERTY_NAV_DOWN_ROOT = mycss_property_nav_down.MyCSS_PROPERTY_NAV_DOWN_ROOT;
    enum MyCSS_PROPERTY_NAV_DOWN_CURRENT = mycss_property_nav_down.MyCSS_PROPERTY_NAV_DOWN_CURRENT;
    alias mycss_property_nav_left_t = mycss_property_nav_left;
    enum mycss_property_nav_left
    {
        MyCSS_PROPERTY_NAV_LEFT_AUTO = 24,
        MyCSS_PROPERTY_NAV_LEFT_ROOT = 279,
        MyCSS_PROPERTY_NAV_LEFT_CURRENT = 79,
    }
    enum MyCSS_PROPERTY_NAV_LEFT_AUTO = mycss_property_nav_left.MyCSS_PROPERTY_NAV_LEFT_AUTO;
    enum MyCSS_PROPERTY_NAV_LEFT_ROOT = mycss_property_nav_left.MyCSS_PROPERTY_NAV_LEFT_ROOT;
    enum MyCSS_PROPERTY_NAV_LEFT_CURRENT = mycss_property_nav_left.MyCSS_PROPERTY_NAV_LEFT_CURRENT;
    alias mycss_property_nav_right_t = mycss_property_nav_right;
    enum mycss_property_nav_right
    {
        MyCSS_PROPERTY_NAV_RIGHT_ROOT = 279,
        MyCSS_PROPERTY_NAV_RIGHT_AUTO = 24,
        MyCSS_PROPERTY_NAV_RIGHT_CURRENT = 79,
    }
    enum MyCSS_PROPERTY_NAV_RIGHT_ROOT = mycss_property_nav_right.MyCSS_PROPERTY_NAV_RIGHT_ROOT;
    enum MyCSS_PROPERTY_NAV_RIGHT_AUTO = mycss_property_nav_right.MyCSS_PROPERTY_NAV_RIGHT_AUTO;
    enum MyCSS_PROPERTY_NAV_RIGHT_CURRENT = mycss_property_nav_right.MyCSS_PROPERTY_NAV_RIGHT_CURRENT;
    alias mycss_property_nav_up_t = mycss_property_nav_up;
    enum mycss_property_nav_up
    {
        MyCSS_PROPERTY_NAV_UP_AUTO = 24,
        MyCSS_PROPERTY_NAV_UP_ROOT = 279,
        MyCSS_PROPERTY_NAV_UP_CURRENT = 79,
    }
    enum MyCSS_PROPERTY_NAV_UP_AUTO = mycss_property_nav_up.MyCSS_PROPERTY_NAV_UP_AUTO;
    enum MyCSS_PROPERTY_NAV_UP_ROOT = mycss_property_nav_up.MyCSS_PROPERTY_NAV_UP_ROOT;
    enum MyCSS_PROPERTY_NAV_UP_CURRENT = mycss_property_nav_up.MyCSS_PROPERTY_NAV_UP_CURRENT;
    alias mycss_property_offset_after_t = mycss_property_offset_after;
    enum mycss_property_offset_after
    {
        MyCSS_PROPERTY_OFFSET_AFTER_AUTO = 24,
    }
    enum MyCSS_PROPERTY_OFFSET_AFTER_AUTO = mycss_property_offset_after.MyCSS_PROPERTY_OFFSET_AFTER_AUTO;
    alias mycss_property_offset_before_t = mycss_property_offset_before;
    enum mycss_property_offset_before
    {
        MyCSS_PROPERTY_OFFSET_BEFORE_AUTO = 24,
    }
    enum MyCSS_PROPERTY_OFFSET_BEFORE_AUTO = mycss_property_offset_before.MyCSS_PROPERTY_OFFSET_BEFORE_AUTO;
    alias mycss_property_offset_end_t = mycss_property_offset_end;
    enum mycss_property_offset_end
    {
        MyCSS_PROPERTY_OFFSET_END_AUTO = 24,
    }
    enum MyCSS_PROPERTY_OFFSET_END_AUTO = mycss_property_offset_end.MyCSS_PROPERTY_OFFSET_END_AUTO;
    enum mycss_property_offset_start
    {
        MyCSS_PROPERTY_OFFSET_START_AUTO = 24,
    }
    enum MyCSS_PROPERTY_OFFSET_START_AUTO = mycss_property_offset_start.MyCSS_PROPERTY_OFFSET_START_AUTO;
    alias mycss_property_offset_start_t = mycss_property_offset_start;
    enum mycss_property_outline_color
    {
        MyCSS_PROPERTY_OUTLINE_COLOR_INVERT = 159,
    }
    enum MyCSS_PROPERTY_OUTLINE_COLOR_INVERT = mycss_property_outline_color.MyCSS_PROPERTY_OUTLINE_COLOR_INVERT;
    alias mycss_property_outline_color_t = mycss_property_outline_color;
    alias mycss_property_outline_style_t = mycss_property_outline_style;
    enum mycss_property_outline_style
    {
        MyCSS_PROPERTY_OUTLINE_STYLE_NONE = 211,
        MyCSS_PROPERTY_OUTLINE_STYLE_AUTO = 24,
    }
    enum MyCSS_PROPERTY_OUTLINE_STYLE_NONE = mycss_property_outline_style.MyCSS_PROPERTY_OUTLINE_STYLE_NONE;
    enum MyCSS_PROPERTY_OUTLINE_STYLE_AUTO = mycss_property_outline_style.MyCSS_PROPERTY_OUTLINE_STYLE_AUTO;
    enum mycss_property_outline_width
    {
        MyCSS_PROPERTY_OUTLINE_WIDTH_MEDIUM = 198,
    }
    enum MyCSS_PROPERTY_OUTLINE_WIDTH_MEDIUM = mycss_property_outline_width.MyCSS_PROPERTY_OUTLINE_WIDTH_MEDIUM;
    alias mycss_property_outline_width_t = mycss_property_outline_width;
    enum mycss_property_overflow
    {
        MyCSS_PROPERTY_OVERFLOW_HIDDEN = 136,
        MyCSS_PROPERTY_OVERFLOW_VISIBLE = 376,
        MyCSS_PROPERTY_OVERFLOW_AUTO = 24,
        MyCSS_PROPERTY_OVERFLOW_SCROLL = 294,
        MyCSS_PROPERTY_OVERFLOW_UNSET = 367,
        MyCSS_PROPERTY_OVERFLOW_INHERIT = 146,
        MyCSS_PROPERTY_OVERFLOW_NO_DISPLAY = 220,
        MyCSS_PROPERTY_OVERFLOW_NO_CONTENT = 217,
        MyCSS_PROPERTY_OVERFLOW_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_OVERFLOW_HIDDEN = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_HIDDEN;
    enum MyCSS_PROPERTY_OVERFLOW_VISIBLE = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_VISIBLE;
    enum MyCSS_PROPERTY_OVERFLOW_AUTO = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_AUTO;
    enum MyCSS_PROPERTY_OVERFLOW_SCROLL = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_SCROLL;
    enum MyCSS_PROPERTY_OVERFLOW_UNSET = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_UNSET;
    enum MyCSS_PROPERTY_OVERFLOW_INHERIT = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_INHERIT;
    enum MyCSS_PROPERTY_OVERFLOW_NO_DISPLAY = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_NO_DISPLAY;
    enum MyCSS_PROPERTY_OVERFLOW_NO_CONTENT = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_NO_CONTENT;
    enum MyCSS_PROPERTY_OVERFLOW_INITIAL = mycss_property_overflow.MyCSS_PROPERTY_OVERFLOW_INITIAL;
    alias mycss_property_overflow_t = mycss_property_overflow;
    enum mycss_property_overflow_wrap
    {
        MyCSS_PROPERTY_OVERFLOW_WRAP_INITIAL = 147,
        MyCSS_PROPERTY_OVERFLOW_WRAP_UNSET = 367,
        MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_WORD = 50,
        MyCSS_PROPERTY_OVERFLOW_WRAP_INHERIT = 146,
        MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_SPACES = 49,
        MyCSS_PROPERTY_OVERFLOW_WRAP_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_INITIAL = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_INITIAL;
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_UNSET = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_UNSET;
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_WORD = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_WORD;
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_INHERIT = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_INHERIT;
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_SPACES = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_BREAK_SPACES;
    enum MyCSS_PROPERTY_OVERFLOW_WRAP_NORMAL = mycss_property_overflow_wrap.MyCSS_PROPERTY_OVERFLOW_WRAP_NORMAL;
    alias mycss_property_overflow_wrap_t = mycss_property_overflow_wrap;
    enum mycss_property_overflow_x
    {
        MyCSS_PROPERTY_OVERFLOW_X_NO_DISPLAY = 220,
        MyCSS_PROPERTY_OVERFLOW_X_INHERIT = 146,
        MyCSS_PROPERTY_OVERFLOW_X_UNSET = 367,
        MyCSS_PROPERTY_OVERFLOW_X_NO_CONTENT = 217,
        MyCSS_PROPERTY_OVERFLOW_X_INITIAL = 147,
        MyCSS_PROPERTY_OVERFLOW_X_AUTO = 24,
        MyCSS_PROPERTY_OVERFLOW_X_HIDDEN = 136,
        MyCSS_PROPERTY_OVERFLOW_X_VISIBLE = 376,
        MyCSS_PROPERTY_OVERFLOW_X_SCROLL = 294,
    }
    enum MyCSS_PROPERTY_OVERFLOW_X_NO_DISPLAY = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_NO_DISPLAY;
    enum MyCSS_PROPERTY_OVERFLOW_X_INHERIT = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_INHERIT;
    enum MyCSS_PROPERTY_OVERFLOW_X_UNSET = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_UNSET;
    enum MyCSS_PROPERTY_OVERFLOW_X_NO_CONTENT = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_NO_CONTENT;
    enum MyCSS_PROPERTY_OVERFLOW_X_INITIAL = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_INITIAL;
    enum MyCSS_PROPERTY_OVERFLOW_X_AUTO = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_AUTO;
    enum MyCSS_PROPERTY_OVERFLOW_X_HIDDEN = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_HIDDEN;
    enum MyCSS_PROPERTY_OVERFLOW_X_VISIBLE = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_VISIBLE;
    enum MyCSS_PROPERTY_OVERFLOW_X_SCROLL = mycss_property_overflow_x.MyCSS_PROPERTY_OVERFLOW_X_SCROLL;
    alias mycss_property_overflow_x_t = mycss_property_overflow_x;
    enum mycss_property_overflow_y
    {
        MyCSS_PROPERTY_OVERFLOW_Y_AUTO = 24,
        MyCSS_PROPERTY_OVERFLOW_Y_HIDDEN = 136,
        MyCSS_PROPERTY_OVERFLOW_Y_VISIBLE = 376,
        MyCSS_PROPERTY_OVERFLOW_Y_SCROLL = 294,
        MyCSS_PROPERTY_OVERFLOW_Y_UNSET = 367,
        MyCSS_PROPERTY_OVERFLOW_Y_INHERIT = 146,
        MyCSS_PROPERTY_OVERFLOW_Y_NO_DISPLAY = 220,
        MyCSS_PROPERTY_OVERFLOW_Y_NO_CONTENT = 217,
        MyCSS_PROPERTY_OVERFLOW_Y_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_OVERFLOW_Y_AUTO = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_AUTO;
    enum MyCSS_PROPERTY_OVERFLOW_Y_HIDDEN = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_HIDDEN;
    enum MyCSS_PROPERTY_OVERFLOW_Y_VISIBLE = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_VISIBLE;
    enum MyCSS_PROPERTY_OVERFLOW_Y_SCROLL = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_SCROLL;
    enum MyCSS_PROPERTY_OVERFLOW_Y_UNSET = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_UNSET;
    enum MyCSS_PROPERTY_OVERFLOW_Y_INHERIT = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_INHERIT;
    enum MyCSS_PROPERTY_OVERFLOW_Y_NO_DISPLAY = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_NO_DISPLAY;
    enum MyCSS_PROPERTY_OVERFLOW_Y_NO_CONTENT = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_NO_CONTENT;
    enum MyCSS_PROPERTY_OVERFLOW_Y_INITIAL = mycss_property_overflow_y.MyCSS_PROPERTY_OVERFLOW_Y_INITIAL;
    alias mycss_property_overflow_y_t = mycss_property_overflow_y;
    alias mycss_property_padding_t = mycss_property_padding;
    enum mycss_property_padding
    {
        MyCSS_PROPERTY_PADDING_UNSET = 367,
        MyCSS_PROPERTY_PADDING__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_INITIAL = 147,
        MyCSS_PROPERTY_PADDING__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_UNSET = mycss_property_padding.MyCSS_PROPERTY_PADDING_UNSET;
    enum MyCSS_PROPERTY_PADDING__LENGTH = mycss_property_padding.MyCSS_PROPERTY_PADDING__LENGTH;
    enum MyCSS_PROPERTY_PADDING_INHERIT = mycss_property_padding.MyCSS_PROPERTY_PADDING_INHERIT;
    enum MyCSS_PROPERTY_PADDING_INITIAL = mycss_property_padding.MyCSS_PROPERTY_PADDING_INITIAL;
    enum MyCSS_PROPERTY_PADDING__PERCENTAGE = mycss_property_padding.MyCSS_PROPERTY_PADDING__PERCENTAGE;
    enum mycss_property_padding_block_end
    {
        MyCSS_PROPERTY_PADDING_BLOCK_END_UNSET = 367,
        MyCSS_PROPERTY_PADDING_BLOCK_END__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_BLOCK_END_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_BLOCK_END_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_BLOCK_END__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_BLOCK_END_UNSET = mycss_property_padding_block_end.MyCSS_PROPERTY_PADDING_BLOCK_END_UNSET;
    enum MyCSS_PROPERTY_PADDING_BLOCK_END__LENGTH = mycss_property_padding_block_end.MyCSS_PROPERTY_PADDING_BLOCK_END__LENGTH;
    enum MyCSS_PROPERTY_PADDING_BLOCK_END_INHERIT = mycss_property_padding_block_end.MyCSS_PROPERTY_PADDING_BLOCK_END_INHERIT;
    enum MyCSS_PROPERTY_PADDING_BLOCK_END_INITIAL = mycss_property_padding_block_end.MyCSS_PROPERTY_PADDING_BLOCK_END_INITIAL;
    enum MyCSS_PROPERTY_PADDING_BLOCK_END__PERCENTAGE = mycss_property_padding_block_end.MyCSS_PROPERTY_PADDING_BLOCK_END__PERCENTAGE;
    alias mycss_property_padding_block_end_t = mycss_property_padding_block_end;
    enum mycss_property_padding_block_start
    {
        MyCSS_PROPERTY_PADDING_BLOCK_START_UNSET = 367,
        MyCSS_PROPERTY_PADDING_BLOCK_START__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_BLOCK_START_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_BLOCK_START_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_BLOCK_START__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_BLOCK_START_UNSET = mycss_property_padding_block_start.MyCSS_PROPERTY_PADDING_BLOCK_START_UNSET;
    enum MyCSS_PROPERTY_PADDING_BLOCK_START__LENGTH = mycss_property_padding_block_start.MyCSS_PROPERTY_PADDING_BLOCK_START__LENGTH;
    enum MyCSS_PROPERTY_PADDING_BLOCK_START_INHERIT = mycss_property_padding_block_start.MyCSS_PROPERTY_PADDING_BLOCK_START_INHERIT;
    enum MyCSS_PROPERTY_PADDING_BLOCK_START_INITIAL = mycss_property_padding_block_start.MyCSS_PROPERTY_PADDING_BLOCK_START_INITIAL;
    enum MyCSS_PROPERTY_PADDING_BLOCK_START__PERCENTAGE = mycss_property_padding_block_start.MyCSS_PROPERTY_PADDING_BLOCK_START__PERCENTAGE;
    alias mycss_property_padding_block_start_t = mycss_property_padding_block_start;
    enum mycss_property_padding_bottom
    {
        MyCSS_PROPERTY_PADDING_BOTTOM_UNSET = 367,
        MyCSS_PROPERTY_PADDING_BOTTOM__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_BOTTOM_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_BOTTOM_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_BOTTOM__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_BOTTOM_UNSET = mycss_property_padding_bottom.MyCSS_PROPERTY_PADDING_BOTTOM_UNSET;
    enum MyCSS_PROPERTY_PADDING_BOTTOM__LENGTH = mycss_property_padding_bottom.MyCSS_PROPERTY_PADDING_BOTTOM__LENGTH;
    enum MyCSS_PROPERTY_PADDING_BOTTOM_INHERIT = mycss_property_padding_bottom.MyCSS_PROPERTY_PADDING_BOTTOM_INHERIT;
    enum MyCSS_PROPERTY_PADDING_BOTTOM_INITIAL = mycss_property_padding_bottom.MyCSS_PROPERTY_PADDING_BOTTOM_INITIAL;
    enum MyCSS_PROPERTY_PADDING_BOTTOM__PERCENTAGE = mycss_property_padding_bottom.MyCSS_PROPERTY_PADDING_BOTTOM__PERCENTAGE;
    alias mycss_property_padding_bottom_t = mycss_property_padding_bottom;
    enum mycss_property_padding_inline_end
    {
        MyCSS_PROPERTY_PADDING_INLINE_END_UNSET = 367,
        MyCSS_PROPERTY_PADDING_INLINE_END__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_INLINE_END_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_INLINE_END_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_INLINE_END__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_INLINE_END_UNSET = mycss_property_padding_inline_end.MyCSS_PROPERTY_PADDING_INLINE_END_UNSET;
    enum MyCSS_PROPERTY_PADDING_INLINE_END__LENGTH = mycss_property_padding_inline_end.MyCSS_PROPERTY_PADDING_INLINE_END__LENGTH;
    enum MyCSS_PROPERTY_PADDING_INLINE_END_INHERIT = mycss_property_padding_inline_end.MyCSS_PROPERTY_PADDING_INLINE_END_INHERIT;
    enum MyCSS_PROPERTY_PADDING_INLINE_END_INITIAL = mycss_property_padding_inline_end.MyCSS_PROPERTY_PADDING_INLINE_END_INITIAL;
    enum MyCSS_PROPERTY_PADDING_INLINE_END__PERCENTAGE = mycss_property_padding_inline_end.MyCSS_PROPERTY_PADDING_INLINE_END__PERCENTAGE;
    alias mycss_property_padding_inline_end_t = mycss_property_padding_inline_end;
    enum mycss_property_padding_inline_start
    {
        MyCSS_PROPERTY_PADDING_INLINE_START_UNSET = 367,
        MyCSS_PROPERTY_PADDING_INLINE_START__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_INLINE_START_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_INLINE_START_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_INLINE_START__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_INLINE_START_UNSET = mycss_property_padding_inline_start.MyCSS_PROPERTY_PADDING_INLINE_START_UNSET;
    enum MyCSS_PROPERTY_PADDING_INLINE_START__LENGTH = mycss_property_padding_inline_start.MyCSS_PROPERTY_PADDING_INLINE_START__LENGTH;
    enum MyCSS_PROPERTY_PADDING_INLINE_START_INHERIT = mycss_property_padding_inline_start.MyCSS_PROPERTY_PADDING_INLINE_START_INHERIT;
    enum MyCSS_PROPERTY_PADDING_INLINE_START_INITIAL = mycss_property_padding_inline_start.MyCSS_PROPERTY_PADDING_INLINE_START_INITIAL;
    enum MyCSS_PROPERTY_PADDING_INLINE_START__PERCENTAGE = mycss_property_padding_inline_start.MyCSS_PROPERTY_PADDING_INLINE_START__PERCENTAGE;
    alias mycss_property_padding_inline_start_t = mycss_property_padding_inline_start;
    alias mycss_property_padding_left_t = mycss_property_padding_left;
    enum mycss_property_padding_left
    {
        MyCSS_PROPERTY_PADDING_LEFT_UNSET = 367,
        MyCSS_PROPERTY_PADDING_LEFT__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_LEFT_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_LEFT_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_LEFT__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_LEFT_UNSET = mycss_property_padding_left.MyCSS_PROPERTY_PADDING_LEFT_UNSET;
    enum MyCSS_PROPERTY_PADDING_LEFT__LENGTH = mycss_property_padding_left.MyCSS_PROPERTY_PADDING_LEFT__LENGTH;
    enum MyCSS_PROPERTY_PADDING_LEFT_INHERIT = mycss_property_padding_left.MyCSS_PROPERTY_PADDING_LEFT_INHERIT;
    enum MyCSS_PROPERTY_PADDING_LEFT_INITIAL = mycss_property_padding_left.MyCSS_PROPERTY_PADDING_LEFT_INITIAL;
    enum MyCSS_PROPERTY_PADDING_LEFT__PERCENTAGE = mycss_property_padding_left.MyCSS_PROPERTY_PADDING_LEFT__PERCENTAGE;
    enum mycss_property_padding_right
    {
        MyCSS_PROPERTY_PADDING_RIGHT_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_RIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_PADDING_RIGHT_UNSET = 367,
        MyCSS_PROPERTY_PADDING_RIGHT__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_RIGHT_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_PADDING_RIGHT_INITIAL = mycss_property_padding_right.MyCSS_PROPERTY_PADDING_RIGHT_INITIAL;
    enum MyCSS_PROPERTY_PADDING_RIGHT__PERCENTAGE = mycss_property_padding_right.MyCSS_PROPERTY_PADDING_RIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_PADDING_RIGHT_UNSET = mycss_property_padding_right.MyCSS_PROPERTY_PADDING_RIGHT_UNSET;
    enum MyCSS_PROPERTY_PADDING_RIGHT__LENGTH = mycss_property_padding_right.MyCSS_PROPERTY_PADDING_RIGHT__LENGTH;
    enum MyCSS_PROPERTY_PADDING_RIGHT_INHERIT = mycss_property_padding_right.MyCSS_PROPERTY_PADDING_RIGHT_INHERIT;
    alias mycss_property_padding_right_t = mycss_property_padding_right;
    alias mycss_property_padding_top_t = mycss_property_padding_top;
    enum mycss_property_padding_top
    {
        MyCSS_PROPERTY_PADDING_TOP_UNSET = 367,
        MyCSS_PROPERTY_PADDING_TOP__LENGTH = 410,
        MyCSS_PROPERTY_PADDING_TOP_INHERIT = 146,
        MyCSS_PROPERTY_PADDING_TOP_INITIAL = 147,
        MyCSS_PROPERTY_PADDING_TOP__PERCENTAGE = 413,
    }
    enum MyCSS_PROPERTY_PADDING_TOP_UNSET = mycss_property_padding_top.MyCSS_PROPERTY_PADDING_TOP_UNSET;
    enum MyCSS_PROPERTY_PADDING_TOP__LENGTH = mycss_property_padding_top.MyCSS_PROPERTY_PADDING_TOP__LENGTH;
    enum MyCSS_PROPERTY_PADDING_TOP_INHERIT = mycss_property_padding_top.MyCSS_PROPERTY_PADDING_TOP_INHERIT;
    enum MyCSS_PROPERTY_PADDING_TOP_INITIAL = mycss_property_padding_top.MyCSS_PROPERTY_PADDING_TOP_INITIAL;
    enum MyCSS_PROPERTY_PADDING_TOP__PERCENTAGE = mycss_property_padding_top.MyCSS_PROPERTY_PADDING_TOP__PERCENTAGE;
    alias mycss_property_pause_after_t = mycss_property_pause_after;
    enum mycss_property_pause_after
    {
        MyCSS_PROPERTY_PAUSE_AFTER_WEAK = 379,
        MyCSS_PROPERTY_PAUSE_AFTER_STRONG = 334,
        MyCSS_PROPERTY_PAUSE_AFTER_MEDIUM = 198,
        MyCSS_PROPERTY_PAUSE_AFTER_X_STRONG = 395,
        MyCSS_PROPERTY_PAUSE_AFTER_X_WEAK = 396,
        MyCSS_PROPERTY_PAUSE_AFTER_NONE = 211,
    }
    enum MyCSS_PROPERTY_PAUSE_AFTER_WEAK = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_WEAK;
    enum MyCSS_PROPERTY_PAUSE_AFTER_STRONG = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_STRONG;
    enum MyCSS_PROPERTY_PAUSE_AFTER_MEDIUM = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_MEDIUM;
    enum MyCSS_PROPERTY_PAUSE_AFTER_X_STRONG = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_X_STRONG;
    enum MyCSS_PROPERTY_PAUSE_AFTER_X_WEAK = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_X_WEAK;
    enum MyCSS_PROPERTY_PAUSE_AFTER_NONE = mycss_property_pause_after.MyCSS_PROPERTY_PAUSE_AFTER_NONE;
    enum mycss_property_pause_before
    {
        MyCSS_PROPERTY_PAUSE_BEFORE_NONE = 211,
        MyCSS_PROPERTY_PAUSE_BEFORE_WEAK = 379,
        MyCSS_PROPERTY_PAUSE_BEFORE_X_WEAK = 396,
        MyCSS_PROPERTY_PAUSE_BEFORE_MEDIUM = 198,
        MyCSS_PROPERTY_PAUSE_BEFORE_STRONG = 334,
        MyCSS_PROPERTY_PAUSE_BEFORE_X_STRONG = 395,
    }
    enum MyCSS_PROPERTY_PAUSE_BEFORE_NONE = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_NONE;
    enum MyCSS_PROPERTY_PAUSE_BEFORE_WEAK = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_WEAK;
    enum MyCSS_PROPERTY_PAUSE_BEFORE_X_WEAK = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_X_WEAK;
    enum MyCSS_PROPERTY_PAUSE_BEFORE_MEDIUM = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_MEDIUM;
    enum MyCSS_PROPERTY_PAUSE_BEFORE_STRONG = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_STRONG;
    enum MyCSS_PROPERTY_PAUSE_BEFORE_X_STRONG = mycss_property_pause_before.MyCSS_PROPERTY_PAUSE_BEFORE_X_STRONG;
    alias mycss_property_pause_before_t = mycss_property_pause_before;
    enum mycss_property_perspective
    {
        MyCSS_PROPERTY_PERSPECTIVE_NONE = 211,
    }
    enum MyCSS_PROPERTY_PERSPECTIVE_NONE = mycss_property_perspective.MyCSS_PROPERTY_PERSPECTIVE_NONE;
    alias mycss_property_perspective_t = mycss_property_perspective;
    enum mycss_property_perspective_origin
    {
        MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_RIGHT = 277,
        MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_CENTER = 55,
        MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_TOP = 356,
        MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_BOTTOM = 45,
        MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_LEFT = 174,
    }
    enum MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_RIGHT = mycss_property_perspective_origin.MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_RIGHT;
    enum MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_CENTER = mycss_property_perspective_origin.MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_CENTER;
    enum MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_TOP = mycss_property_perspective_origin.MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_TOP;
    enum MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_BOTTOM = mycss_property_perspective_origin.MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_BOTTOM;
    enum MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_LEFT = mycss_property_perspective_origin.MyCSS_PROPERTY_PERSPECTIVE_ORIGIN_LEFT;
    alias mycss_property_perspective_origin_t = mycss_property_perspective_origin;
    alias mycss_property_position_t = mycss_property_position;
    enum mycss_property_position
    {
        MyCSS_PROPERTY_POSITION_INITIAL = 147,
        MyCSS_PROPERTY_POSITION_UNSET = 367,
        MyCSS_PROPERTY_POSITION_INHERIT = 146,
        MyCSS_PROPERTY_POSITION_RELATIVE = 271,
        MyCSS_PROPERTY_POSITION_ABSOLUTE = 14,
        MyCSS_PROPERTY_POSITION_STICKY = 331,
        MyCSS_PROPERTY_POSITION_FIXED = 118,
        MyCSS_PROPERTY_POSITION_STATIC = 327,
    }
    enum MyCSS_PROPERTY_POSITION_INITIAL = mycss_property_position.MyCSS_PROPERTY_POSITION_INITIAL;
    enum MyCSS_PROPERTY_POSITION_UNSET = mycss_property_position.MyCSS_PROPERTY_POSITION_UNSET;
    enum MyCSS_PROPERTY_POSITION_INHERIT = mycss_property_position.MyCSS_PROPERTY_POSITION_INHERIT;
    enum MyCSS_PROPERTY_POSITION_RELATIVE = mycss_property_position.MyCSS_PROPERTY_POSITION_RELATIVE;
    enum MyCSS_PROPERTY_POSITION_ABSOLUTE = mycss_property_position.MyCSS_PROPERTY_POSITION_ABSOLUTE;
    enum MyCSS_PROPERTY_POSITION_STICKY = mycss_property_position.MyCSS_PROPERTY_POSITION_STICKY;
    enum MyCSS_PROPERTY_POSITION_FIXED = mycss_property_position.MyCSS_PROPERTY_POSITION_FIXED;
    enum MyCSS_PROPERTY_POSITION_STATIC = mycss_property_position.MyCSS_PROPERTY_POSITION_STATIC;
    alias mycss_property_presentation_level_t = mycss_property_presentation_level;
    enum mycss_property_presentation_level
    {
        MyCSS_PROPERTY_PRESENTATION_LEVEL_INCREMENT = 144,
        MyCSS_PROPERTY_PRESENTATION_LEVEL_SAME = 292,
    }
    enum MyCSS_PROPERTY_PRESENTATION_LEVEL_INCREMENT = mycss_property_presentation_level.MyCSS_PROPERTY_PRESENTATION_LEVEL_INCREMENT;
    enum MyCSS_PROPERTY_PRESENTATION_LEVEL_SAME = mycss_property_presentation_level.MyCSS_PROPERTY_PRESENTATION_LEVEL_SAME;
    alias mycss_property_quotes_t = mycss_property_quotes;
    enum mycss_property_quotes
    {
        MyCSS_PROPERTY_QUOTES_NONE = 211,
    }
    enum MyCSS_PROPERTY_QUOTES_NONE = mycss_property_quotes.MyCSS_PROPERTY_QUOTES_NONE;
    enum mycss_property_region_fragment
    {
        MyCSS_PROPERTY_REGION_FRAGMENT_AUTO = 24,
        MyCSS_PROPERTY_REGION_FRAGMENT_BREAK = 47,
    }
    enum MyCSS_PROPERTY_REGION_FRAGMENT_AUTO = mycss_property_region_fragment.MyCSS_PROPERTY_REGION_FRAGMENT_AUTO;
    enum MyCSS_PROPERTY_REGION_FRAGMENT_BREAK = mycss_property_region_fragment.MyCSS_PROPERTY_REGION_FRAGMENT_BREAK;
    alias mycss_property_region_fragment_t = mycss_property_region_fragment;
    alias mycss_property_resize_t = mycss_property_resize;
    enum mycss_property_resize
    {
        MyCSS_PROPERTY_RESIZE_BOTH = 44,
        MyCSS_PROPERTY_RESIZE_NONE = 211,
        MyCSS_PROPERTY_RESIZE_VERTICAL = 371,
        MyCSS_PROPERTY_RESIZE_HORIZONTAL = 141,
    }
    enum MyCSS_PROPERTY_RESIZE_BOTH = mycss_property_resize.MyCSS_PROPERTY_RESIZE_BOTH;
    enum MyCSS_PROPERTY_RESIZE_NONE = mycss_property_resize.MyCSS_PROPERTY_RESIZE_NONE;
    enum MyCSS_PROPERTY_RESIZE_VERTICAL = mycss_property_resize.MyCSS_PROPERTY_RESIZE_VERTICAL;
    enum MyCSS_PROPERTY_RESIZE_HORIZONTAL = mycss_property_resize.MyCSS_PROPERTY_RESIZE_HORIZONTAL;
    alias mycss_property_rest_after_t = mycss_property_rest_after;
    enum mycss_property_rest_after
    {
        MyCSS_PROPERTY_REST_AFTER_X_WEAK = 396,
        MyCSS_PROPERTY_REST_AFTER_WEAK = 379,
        MyCSS_PROPERTY_REST_AFTER_MEDIUM = 198,
        MyCSS_PROPERTY_REST_AFTER_NONE = 211,
        MyCSS_PROPERTY_REST_AFTER_STRONG = 334,
        MyCSS_PROPERTY_REST_AFTER_X_STRONG = 395,
    }
    enum MyCSS_PROPERTY_REST_AFTER_X_WEAK = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_X_WEAK;
    enum MyCSS_PROPERTY_REST_AFTER_WEAK = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_WEAK;
    enum MyCSS_PROPERTY_REST_AFTER_MEDIUM = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_MEDIUM;
    enum MyCSS_PROPERTY_REST_AFTER_NONE = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_NONE;
    enum MyCSS_PROPERTY_REST_AFTER_STRONG = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_STRONG;
    enum MyCSS_PROPERTY_REST_AFTER_X_STRONG = mycss_property_rest_after.MyCSS_PROPERTY_REST_AFTER_X_STRONG;
    alias mycss_property_rest_before_t = mycss_property_rest_before;
    enum mycss_property_rest_before
    {
        MyCSS_PROPERTY_REST_BEFORE_NONE = 211,
        MyCSS_PROPERTY_REST_BEFORE_MEDIUM = 198,
        MyCSS_PROPERTY_REST_BEFORE_STRONG = 334,
        MyCSS_PROPERTY_REST_BEFORE_WEAK = 379,
        MyCSS_PROPERTY_REST_BEFORE_X_WEAK = 396,
        MyCSS_PROPERTY_REST_BEFORE_X_STRONG = 395,
    }
    enum MyCSS_PROPERTY_REST_BEFORE_NONE = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_NONE;
    enum MyCSS_PROPERTY_REST_BEFORE_MEDIUM = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_MEDIUM;
    enum MyCSS_PROPERTY_REST_BEFORE_STRONG = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_STRONG;
    enum MyCSS_PROPERTY_REST_BEFORE_WEAK = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_WEAK;
    enum MyCSS_PROPERTY_REST_BEFORE_X_WEAK = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_X_WEAK;
    enum MyCSS_PROPERTY_REST_BEFORE_X_STRONG = mycss_property_rest_before.MyCSS_PROPERTY_REST_BEFORE_X_STRONG;
    alias mycss_property_right_t = mycss_property_right;
    enum mycss_property_right
    {
        MyCSS_PROPERTY_RIGHT__PERCENTAGE = 413,
        MyCSS_PROPERTY_RIGHT_INHERIT = 146,
        MyCSS_PROPERTY_RIGHT__LENGTH = 410,
        MyCSS_PROPERTY_RIGHT_UNSET = 367,
        MyCSS_PROPERTY_RIGHT_INITIAL = 147,
        MyCSS_PROPERTY_RIGHT_AUTO = 24,
    }
    enum MyCSS_PROPERTY_RIGHT__PERCENTAGE = mycss_property_right.MyCSS_PROPERTY_RIGHT__PERCENTAGE;
    enum MyCSS_PROPERTY_RIGHT_INHERIT = mycss_property_right.MyCSS_PROPERTY_RIGHT_INHERIT;
    enum MyCSS_PROPERTY_RIGHT__LENGTH = mycss_property_right.MyCSS_PROPERTY_RIGHT__LENGTH;
    enum MyCSS_PROPERTY_RIGHT_UNSET = mycss_property_right.MyCSS_PROPERTY_RIGHT_UNSET;
    enum MyCSS_PROPERTY_RIGHT_INITIAL = mycss_property_right.MyCSS_PROPERTY_RIGHT_INITIAL;
    enum MyCSS_PROPERTY_RIGHT_AUTO = mycss_property_right.MyCSS_PROPERTY_RIGHT_AUTO;
    alias mycss_property_ruby_align_t = mycss_property_ruby_align;
    enum mycss_property_ruby_align
    {
        MyCSS_PROPERTY_RUBY_ALIGN_CENTER = 55,
        MyCSS_PROPERTY_RUBY_ALIGN_START = 326,
        MyCSS_PROPERTY_RUBY_ALIGN_SPACE_AROUND = 320,
        MyCSS_PROPERTY_RUBY_ALIGN_SPACE_BETWEEN = 321,
    }
    enum MyCSS_PROPERTY_RUBY_ALIGN_CENTER = mycss_property_ruby_align.MyCSS_PROPERTY_RUBY_ALIGN_CENTER;
    enum MyCSS_PROPERTY_RUBY_ALIGN_START = mycss_property_ruby_align.MyCSS_PROPERTY_RUBY_ALIGN_START;
    enum MyCSS_PROPERTY_RUBY_ALIGN_SPACE_AROUND = mycss_property_ruby_align.MyCSS_PROPERTY_RUBY_ALIGN_SPACE_AROUND;
    enum MyCSS_PROPERTY_RUBY_ALIGN_SPACE_BETWEEN = mycss_property_ruby_align.MyCSS_PROPERTY_RUBY_ALIGN_SPACE_BETWEEN;
    alias mycss_property_ruby_merge_t = mycss_property_ruby_merge;
    enum mycss_property_ruby_merge
    {
        MyCSS_PROPERTY_RUBY_MERGE_AUTO = 24,
        MyCSS_PROPERTY_RUBY_MERGE_SEPARATE = 298,
        MyCSS_PROPERTY_RUBY_MERGE_COLLAPSE = 61,
    }
    enum MyCSS_PROPERTY_RUBY_MERGE_AUTO = mycss_property_ruby_merge.MyCSS_PROPERTY_RUBY_MERGE_AUTO;
    enum MyCSS_PROPERTY_RUBY_MERGE_SEPARATE = mycss_property_ruby_merge.MyCSS_PROPERTY_RUBY_MERGE_SEPARATE;
    enum MyCSS_PROPERTY_RUBY_MERGE_COLLAPSE = mycss_property_ruby_merge.MyCSS_PROPERTY_RUBY_MERGE_COLLAPSE;
    alias mycss_property_ruby_position_t = mycss_property_ruby_position;
    enum mycss_property_ruby_position
    {
        MyCSS_PROPERTY_RUBY_POSITION_INTER_CHARACTER = 157,
        MyCSS_PROPERTY_RUBY_POSITION_UNDER = 362,
        MyCSS_PROPERTY_RUBY_POSITION_OVER = 241,
    }
    enum MyCSS_PROPERTY_RUBY_POSITION_INTER_CHARACTER = mycss_property_ruby_position.MyCSS_PROPERTY_RUBY_POSITION_INTER_CHARACTER;
    enum MyCSS_PROPERTY_RUBY_POSITION_UNDER = mycss_property_ruby_position.MyCSS_PROPERTY_RUBY_POSITION_UNDER;
    enum MyCSS_PROPERTY_RUBY_POSITION_OVER = mycss_property_ruby_position.MyCSS_PROPERTY_RUBY_POSITION_OVER;
    enum mycss_property_scroll_snap_align
    {
        MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_END = 102,
        MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_NONE = 211,
        MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_START = 326,
        MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_CENTER = 55,
    }
    enum MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_END = mycss_property_scroll_snap_align.MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_END;
    enum MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_NONE = mycss_property_scroll_snap_align.MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_NONE;
    enum MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_START = mycss_property_scroll_snap_align.MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_START;
    enum MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_CENTER = mycss_property_scroll_snap_align.MyCSS_PROPERTY_SCROLL_SNAP_ALIGN_CENTER;
    alias mycss_property_scroll_snap_align_t = mycss_property_scroll_snap_align;
    alias mycss_property_scroll_snap_stop_t = mycss_property_scroll_snap_stop;
    enum mycss_property_scroll_snap_stop
    {
        MyCSS_PROPERTY_SCROLL_SNAP_STOP_NORMAL = 213,
        MyCSS_PROPERTY_SCROLL_SNAP_STOP_ALWAYS = 23,
    }
    enum MyCSS_PROPERTY_SCROLL_SNAP_STOP_NORMAL = mycss_property_scroll_snap_stop.MyCSS_PROPERTY_SCROLL_SNAP_STOP_NORMAL;
    enum MyCSS_PROPERTY_SCROLL_SNAP_STOP_ALWAYS = mycss_property_scroll_snap_stop.MyCSS_PROPERTY_SCROLL_SNAP_STOP_ALWAYS;
    enum mycss_property_scroll_snap_type
    {
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BLOCK = 38,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_X = 384,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_INLINE = 149,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BOTH = 44,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_MANDATORY = 191,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_PROXIMITY = 267,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_NONE = 211,
        MyCSS_PROPERTY_SCROLL_SNAP_TYPE_Y = 397,
    }
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BLOCK = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BLOCK;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_X = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_X;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_INLINE = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_INLINE;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BOTH = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_BOTH;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_MANDATORY = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_MANDATORY;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_PROXIMITY = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_PROXIMITY;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_NONE = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_NONE;
    enum MyCSS_PROPERTY_SCROLL_SNAP_TYPE_Y = mycss_property_scroll_snap_type.MyCSS_PROPERTY_SCROLL_SNAP_TYPE_Y;
    alias mycss_property_scroll_snap_type_t = mycss_property_scroll_snap_type;
    enum mycss_property_shape_outside
    {
        MyCSS_PROPERTY_SHAPE_OUTSIDE_NONE = 211,
    }
    enum MyCSS_PROPERTY_SHAPE_OUTSIDE_NONE = mycss_property_shape_outside.MyCSS_PROPERTY_SHAPE_OUTSIDE_NONE;
    alias mycss_property_shape_outside_t = mycss_property_shape_outside;
    enum mycss_property_shape_rendering
    {
        MyCSS_PROPERTY_SHAPE_RENDERING_AUTO = 24,
        MyCSS_PROPERTY_SHAPE_RENDERING_INHERIT = 146,
        MyCSS_PROPERTY_SHAPE_RENDERING_CRISPEDGES = 77,
        MyCSS_PROPERTY_SHAPE_RENDERING_OPTIMIZESPEED = 237,
        MyCSS_PROPERTY_SHAPE_RENDERING_GEOMETRICPRECISION = 129,
    }
    enum MyCSS_PROPERTY_SHAPE_RENDERING_AUTO = mycss_property_shape_rendering.MyCSS_PROPERTY_SHAPE_RENDERING_AUTO;
    enum MyCSS_PROPERTY_SHAPE_RENDERING_INHERIT = mycss_property_shape_rendering.MyCSS_PROPERTY_SHAPE_RENDERING_INHERIT;
    enum MyCSS_PROPERTY_SHAPE_RENDERING_CRISPEDGES = mycss_property_shape_rendering.MyCSS_PROPERTY_SHAPE_RENDERING_CRISPEDGES;
    enum MyCSS_PROPERTY_SHAPE_RENDERING_OPTIMIZESPEED = mycss_property_shape_rendering.MyCSS_PROPERTY_SHAPE_RENDERING_OPTIMIZESPEED;
    enum MyCSS_PROPERTY_SHAPE_RENDERING_GEOMETRICPRECISION = mycss_property_shape_rendering.MyCSS_PROPERTY_SHAPE_RENDERING_GEOMETRICPRECISION;
    alias mycss_property_shape_rendering_t = mycss_property_shape_rendering;
    enum mycss_property_speak
    {
        MyCSS_PROPERTY_SPEAK_AUTO = 24,
        MyCSS_PROPERTY_SPEAK_NONE = 211,
        MyCSS_PROPERTY_SPEAK_NORMAL = 213,
    }
    enum MyCSS_PROPERTY_SPEAK_AUTO = mycss_property_speak.MyCSS_PROPERTY_SPEAK_AUTO;
    enum MyCSS_PROPERTY_SPEAK_NONE = mycss_property_speak.MyCSS_PROPERTY_SPEAK_NONE;
    enum MyCSS_PROPERTY_SPEAK_NORMAL = mycss_property_speak.MyCSS_PROPERTY_SPEAK_NORMAL;
    alias mycss_property_speak_t = mycss_property_speak;
    enum mycss_property_speak_as
    {
        MyCSS_PROPERTY_SPEAK_AS_LITERAL_PUNCTUATION = 184,
        MyCSS_PROPERTY_SPEAK_AS_NO_PUNCTUATION = 223,
        MyCSS_PROPERTY_SPEAK_AS_NORMAL = 213,
        MyCSS_PROPERTY_SPEAK_AS_DIGITS = 86,
        MyCSS_PROPERTY_SPEAK_AS_SPELL_OUT = 322,
    }
    enum MyCSS_PROPERTY_SPEAK_AS_LITERAL_PUNCTUATION = mycss_property_speak_as.MyCSS_PROPERTY_SPEAK_AS_LITERAL_PUNCTUATION;
    enum MyCSS_PROPERTY_SPEAK_AS_NO_PUNCTUATION = mycss_property_speak_as.MyCSS_PROPERTY_SPEAK_AS_NO_PUNCTUATION;
    enum MyCSS_PROPERTY_SPEAK_AS_NORMAL = mycss_property_speak_as.MyCSS_PROPERTY_SPEAK_AS_NORMAL;
    enum MyCSS_PROPERTY_SPEAK_AS_DIGITS = mycss_property_speak_as.MyCSS_PROPERTY_SPEAK_AS_DIGITS;
    enum MyCSS_PROPERTY_SPEAK_AS_SPELL_OUT = mycss_property_speak_as.MyCSS_PROPERTY_SPEAK_AS_SPELL_OUT;
    alias mycss_property_speak_as_t = mycss_property_speak_as;
    alias mycss_property_string_set_t = mycss_property_string_set;
    enum mycss_property_string_set
    {
        MyCSS_PROPERTY_STRING_SET_NONE = 211,
    }
    enum MyCSS_PROPERTY_STRING_SET_NONE = mycss_property_string_set.MyCSS_PROPERTY_STRING_SET_NONE;
    enum mycss_property_stroke
    {
        MyCSS_PROPERTY_STROKE_NONE = 211,
    }
    enum MyCSS_PROPERTY_STROKE_NONE = mycss_property_stroke.MyCSS_PROPERTY_STROKE_NONE;
    alias mycss_property_stroke_t = mycss_property_stroke;
    enum mycss_property_stroke_dasharray
    {
        MyCSS_PROPERTY_STROKE_DASHARRAY_NONE = 211,
    }
    enum MyCSS_PROPERTY_STROKE_DASHARRAY_NONE = mycss_property_stroke_dasharray.MyCSS_PROPERTY_STROKE_DASHARRAY_NONE;
    alias mycss_property_stroke_dasharray_t = mycss_property_stroke_dasharray;
    enum mycss_property_stroke_linecap
    {
        MyCSS_PROPERTY_STROKE_LINECAP_ROUND = 280,
        MyCSS_PROPERTY_STROKE_LINECAP_BUTT = 51,
        MyCSS_PROPERTY_STROKE_LINECAP_INHERIT = 146,
        MyCSS_PROPERTY_STROKE_LINECAP_SQUARE = 323,
    }
    enum MyCSS_PROPERTY_STROKE_LINECAP_ROUND = mycss_property_stroke_linecap.MyCSS_PROPERTY_STROKE_LINECAP_ROUND;
    enum MyCSS_PROPERTY_STROKE_LINECAP_BUTT = mycss_property_stroke_linecap.MyCSS_PROPERTY_STROKE_LINECAP_BUTT;
    enum MyCSS_PROPERTY_STROKE_LINECAP_INHERIT = mycss_property_stroke_linecap.MyCSS_PROPERTY_STROKE_LINECAP_INHERIT;
    enum MyCSS_PROPERTY_STROKE_LINECAP_SQUARE = mycss_property_stroke_linecap.MyCSS_PROPERTY_STROKE_LINECAP_SQUARE;
    alias mycss_property_stroke_linecap_t = mycss_property_stroke_linecap;
    alias mycss_property_stroke_linejoin_t = mycss_property_stroke_linejoin;
    enum mycss_property_stroke_linejoin
    {
        MyCSS_PROPERTY_STROKE_LINEJOIN_ROUND = 280,
        MyCSS_PROPERTY_STROKE_LINEJOIN_MITER = 204,
        MyCSS_PROPERTY_STROKE_LINEJOIN_BEVEL = 35,
        MyCSS_PROPERTY_STROKE_LINEJOIN_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_STROKE_LINEJOIN_ROUND = mycss_property_stroke_linejoin.MyCSS_PROPERTY_STROKE_LINEJOIN_ROUND;
    enum MyCSS_PROPERTY_STROKE_LINEJOIN_MITER = mycss_property_stroke_linejoin.MyCSS_PROPERTY_STROKE_LINEJOIN_MITER;
    enum MyCSS_PROPERTY_STROKE_LINEJOIN_BEVEL = mycss_property_stroke_linejoin.MyCSS_PROPERTY_STROKE_LINEJOIN_BEVEL;
    enum MyCSS_PROPERTY_STROKE_LINEJOIN_INHERIT = mycss_property_stroke_linejoin.MyCSS_PROPERTY_STROKE_LINEJOIN_INHERIT;
    enum mycss_property_tab_size
    {
        MyCSS_PROPERTY_TAB_SIZE__NUMBER = 412,
        MyCSS_PROPERTY_TAB_SIZE_INHERIT = 146,
        MyCSS_PROPERTY_TAB_SIZE__LENGTH = 410,
        MyCSS_PROPERTY_TAB_SIZE_INITIAL = 147,
        MyCSS_PROPERTY_TAB_SIZE_UNSET = 367,
    }
    enum MyCSS_PROPERTY_TAB_SIZE__NUMBER = mycss_property_tab_size.MyCSS_PROPERTY_TAB_SIZE__NUMBER;
    enum MyCSS_PROPERTY_TAB_SIZE_INHERIT = mycss_property_tab_size.MyCSS_PROPERTY_TAB_SIZE_INHERIT;
    enum MyCSS_PROPERTY_TAB_SIZE__LENGTH = mycss_property_tab_size.MyCSS_PROPERTY_TAB_SIZE__LENGTH;
    enum MyCSS_PROPERTY_TAB_SIZE_INITIAL = mycss_property_tab_size.MyCSS_PROPERTY_TAB_SIZE_INITIAL;
    enum MyCSS_PROPERTY_TAB_SIZE_UNSET = mycss_property_tab_size.MyCSS_PROPERTY_TAB_SIZE_UNSET;
    alias mycss_property_tab_size_t = mycss_property_tab_size;
    alias mycss_property_table_layout_t = mycss_property_table_layout;
    enum mycss_property_table_layout
    {
        MyCSS_PROPERTY_TABLE_LAYOUT_AUTO = 24,
        MyCSS_PROPERTY_TABLE_LAYOUT_FIXED = 118,
    }
    enum MyCSS_PROPERTY_TABLE_LAYOUT_AUTO = mycss_property_table_layout.MyCSS_PROPERTY_TABLE_LAYOUT_AUTO;
    enum MyCSS_PROPERTY_TABLE_LAYOUT_FIXED = mycss_property_table_layout.MyCSS_PROPERTY_TABLE_LAYOUT_FIXED;
    alias mycss_property_text_align_t = mycss_property_text_align;
    enum mycss_property_text_align
    {
        MyCSS_PROPERTY_TEXT_ALIGN_RIGHT = 277,
        MyCSS_PROPERTY_TEXT_ALIGN_UNSET = 367,
        MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY = 167,
        MyCSS_PROPERTY_TEXT_ALIGN_CENTER = 55,
        MyCSS_PROPERTY_TEXT_ALIGN_LEFT = 174,
        MyCSS_PROPERTY_TEXT_ALIGN_START = 326,
        MyCSS_PROPERTY_TEXT_ALIGN_END = 102,
        MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY_ALL = 168,
        MyCSS_PROPERTY_TEXT_ALIGN_MATCH_PARENT = 195,
        MyCSS_PROPERTY_TEXT_ALIGN_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_ALIGN_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TEXT_ALIGN_RIGHT = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_RIGHT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_UNSET = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_UNSET;
    enum MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY;
    enum MyCSS_PROPERTY_TEXT_ALIGN_CENTER = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_CENTER;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LEFT = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_LEFT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_START = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_START;
    enum MyCSS_PROPERTY_TEXT_ALIGN_END = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_END;
    enum MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY_ALL = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_JUSTIFY_ALL;
    enum MyCSS_PROPERTY_TEXT_ALIGN_MATCH_PARENT = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_MATCH_PARENT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_INHERIT = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_INHERIT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_INITIAL = mycss_property_text_align.MyCSS_PROPERTY_TEXT_ALIGN_INITIAL;
    alias mycss_property_text_align_all_t = mycss_property_text_align_all;
    enum mycss_property_text_align_all
    {
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_END = 102,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_START = 326,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_LEFT = 174,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_CENTER = 55,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_RIGHT = 277,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_UNSET = 367,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_JUSTIFY = 167,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_MATCH_PARENT = 195,
        MyCSS_PROPERTY_TEXT_ALIGN_ALL_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_END = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_END;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_START = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_START;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_LEFT = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_LEFT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_CENTER = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_CENTER;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_RIGHT = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_RIGHT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_UNSET = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_UNSET;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_JUSTIFY = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_JUSTIFY;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_INHERIT = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_INHERIT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_MATCH_PARENT = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_MATCH_PARENT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_ALL_INITIAL = mycss_property_text_align_all.MyCSS_PROPERTY_TEXT_ALIGN_ALL_INITIAL;
    enum mycss_property_text_align_last
    {
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_RIGHT = 277,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_UNSET = 367,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_CENTER = 55,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_START = 326,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_JUSTIFY = 167,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_INITIAL = 147,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_END = 102,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_LEFT = 174,
        MyCSS_PROPERTY_TEXT_ALIGN_LAST_AUTO = 24,
    }
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_RIGHT = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_RIGHT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_UNSET = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_UNSET;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_CENTER = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_CENTER;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_START = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_START;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_INHERIT = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_INHERIT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_JUSTIFY = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_JUSTIFY;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_INITIAL = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_INITIAL;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_END = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_END;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_LEFT = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_LEFT;
    enum MyCSS_PROPERTY_TEXT_ALIGN_LAST_AUTO = mycss_property_text_align_last.MyCSS_PROPERTY_TEXT_ALIGN_LAST_AUTO;
    alias mycss_property_text_align_last_t = mycss_property_text_align_last;
    enum mycss_property_text_combine_upright
    {
        MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_DIGITS = 86,
        MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_ALL = 16,
        MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_NONE = 211,
    }
    enum MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_DIGITS = mycss_property_text_combine_upright.MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_DIGITS;
    enum MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_ALL = mycss_property_text_combine_upright.MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_ALL;
    enum MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_NONE = mycss_property_text_combine_upright.MyCSS_PROPERTY_TEXT_COMBINE_UPRIGHT_NONE;
    alias mycss_property_text_combine_upright_t = mycss_property_text_combine_upright;
    enum mycss_property_text_decoration_color
    {
        MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INITIAL = 147,
        MyCSS_PROPERTY_TEXT_DECORATION_COLOR_CURRENTCOLOR = 80,
        MyCSS_PROPERTY_TEXT_DECORATION_COLOR_UNSET = 367,
        MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INHERIT = 146,
    }
    enum MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INITIAL = mycss_property_text_decoration_color.MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INITIAL;
    enum MyCSS_PROPERTY_TEXT_DECORATION_COLOR_CURRENTCOLOR = mycss_property_text_decoration_color.MyCSS_PROPERTY_TEXT_DECORATION_COLOR_CURRENTCOLOR;
    enum MyCSS_PROPERTY_TEXT_DECORATION_COLOR_UNSET = mycss_property_text_decoration_color.MyCSS_PROPERTY_TEXT_DECORATION_COLOR_UNSET;
    enum MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INHERIT = mycss_property_text_decoration_color.MyCSS_PROPERTY_TEXT_DECORATION_COLOR_INHERIT;
    alias mycss_property_text_decoration_color_t = mycss_property_text_decoration_color;
    enum mycss_property_text_decoration_line
    {
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_INITIAL = 147,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNDERLINE = 363,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNSET = 367,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_OVERLINE = 243,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_LINE_THROUGH = 180,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_BLINK = 37,
        MyCSS_PROPERTY_TEXT_DECORATION_LINE_NONE = 211,
    }
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_INITIAL = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_INITIAL;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_INHERIT = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_INHERIT;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNDERLINE = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNDERLINE;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNSET = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_UNSET;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_OVERLINE = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_OVERLINE;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_LINE_THROUGH = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_LINE_THROUGH;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_BLINK = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_BLINK;
    enum MyCSS_PROPERTY_TEXT_DECORATION_LINE_NONE = mycss_property_text_decoration_line.MyCSS_PROPERTY_TEXT_DECORATION_LINE_NONE;
    alias mycss_property_text_decoration_line_t = mycss_property_text_decoration_line;
    alias mycss_property_text_decoration_skip_t = mycss_property_text_decoration_skip;
    enum mycss_property_text_decoration_skip
    {
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INK = 148,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_UNSET = 367,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INITIAL = 147,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_BOX_DECORATION = 46,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_SPACES = 319,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_OBJECTS = 229,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_EDGES = 99,
        MyCSS_PROPERTY_TEXT_DECORATION_SKIP_NONE = 211,
    }
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INK = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INK;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_UNSET = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_UNSET;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INHERIT = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INHERIT;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INITIAL = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_INITIAL;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_BOX_DECORATION = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_BOX_DECORATION;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_SPACES = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_SPACES;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_OBJECTS = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_OBJECTS;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_EDGES = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_EDGES;
    enum MyCSS_PROPERTY_TEXT_DECORATION_SKIP_NONE = mycss_property_text_decoration_skip.MyCSS_PROPERTY_TEXT_DECORATION_SKIP_NONE;
    alias mycss_property_text_decoration_style_t = mycss_property_text_decoration_style;
    enum mycss_property_text_decoration_style
    {
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_WAVY = 378,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_SOLID = 317,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOUBLE = 91,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOTTED = 90,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DASHED = 82,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_UNSET = 367,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_WAVY = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_WAVY;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_SOLID = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_SOLID;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOUBLE = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOUBLE;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOTTED = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DOTTED;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DASHED = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_DASHED;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_UNSET = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_UNSET;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INHERIT = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INHERIT;
    enum MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INITIAL = mycss_property_text_decoration_style.MyCSS_PROPERTY_TEXT_DECORATION_STYLE_INITIAL;
    alias mycss_property_text_emphasis_color_t = mycss_property_text_emphasis_color;
    enum mycss_property_text_emphasis_color
    {
        MyCSS_PROPERTY_TEXT_EMPHASIS_COLOR_CURRENTCOLOR = 80,
    }
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_COLOR_CURRENTCOLOR = mycss_property_text_emphasis_color.MyCSS_PROPERTY_TEXT_EMPHASIS_COLOR_CURRENTCOLOR;
    alias mycss_property_text_emphasis_position_t = mycss_property_text_emphasis_position;
    enum mycss_property_text_emphasis_position
    {
        MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_RIGHT = 277,
        MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_OVER = 241,
        MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_LEFT = 174,
        MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_UNDER = 362,
    }
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_RIGHT = mycss_property_text_emphasis_position.MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_RIGHT;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_OVER = mycss_property_text_emphasis_position.MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_OVER;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_LEFT = mycss_property_text_emphasis_position.MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_LEFT;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_UNDER = mycss_property_text_emphasis_position.MyCSS_PROPERTY_TEXT_EMPHASIS_POSITION_UNDER;
    alias mycss_property_text_emphasis_style_t = mycss_property_text_emphasis_style;
    enum mycss_property_text_emphasis_style
    {
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOT = 89,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_NONE = 211,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_OPEN = 234,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_FILLED = 113,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOUBLE_CIRCLE = 92,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_SESAMEINITIAL = 300,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_TRIANGLE = 359,
        MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_CIRCLE = 56,
    }
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOT = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOT;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_NONE = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_NONE;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_OPEN = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_OPEN;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_FILLED = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_FILLED;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOUBLE_CIRCLE = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_DOUBLE_CIRCLE;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_SESAMEINITIAL = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_SESAMEINITIAL;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_TRIANGLE = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_TRIANGLE;
    enum MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_CIRCLE = mycss_property_text_emphasis_style.MyCSS_PROPERTY_TEXT_EMPHASIS_STYLE_CIRCLE;
    alias mycss_property_text_indent_t = mycss_property_text_indent;
    enum mycss_property_text_indent
    {
        MyCSS_PROPERTY_TEXT_INDENT_EACH_LINE = 93,
        MyCSS_PROPERTY_TEXT_INDENT_HANGING = 134,
    }
    enum MyCSS_PROPERTY_TEXT_INDENT_EACH_LINE = mycss_property_text_indent.MyCSS_PROPERTY_TEXT_INDENT_EACH_LINE;
    enum MyCSS_PROPERTY_TEXT_INDENT_HANGING = mycss_property_text_indent.MyCSS_PROPERTY_TEXT_INDENT_HANGING;
    enum mycss_property_text_justify
    {
        MyCSS_PROPERTY_TEXT_JUSTIFY_AUTO = 24,
        MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_WORD = 158,
        MyCSS_PROPERTY_TEXT_JUSTIFY_NONE = 211,
        MyCSS_PROPERTY_TEXT_JUSTIFY_INITIAL = 147,
        MyCSS_PROPERTY_TEXT_JUSTIFY_UNSET = 367,
        MyCSS_PROPERTY_TEXT_JUSTIFY_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_CHARACTER = 157,
    }
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_AUTO = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_AUTO;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_WORD = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_WORD;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_NONE = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_NONE;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_INITIAL = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_INITIAL;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_UNSET = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_UNSET;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_INHERIT = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_INHERIT;
    enum MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_CHARACTER = mycss_property_text_justify.MyCSS_PROPERTY_TEXT_JUSTIFY_INTER_CHARACTER;
    alias mycss_property_text_justify_t = mycss_property_text_justify;
    enum mycss_property_text_orientation
    {
        MyCSS_PROPERTY_TEXT_ORIENTATION_MIXED = 205,
        MyCSS_PROPERTY_TEXT_ORIENTATION_UNSET = 367,
        MyCSS_PROPERTY_TEXT_ORIENTATION_UPRIGHT = 369,
        MyCSS_PROPERTY_TEXT_ORIENTATION_SIDEWAYS = 303,
        MyCSS_PROPERTY_TEXT_ORIENTATION_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_ORIENTATION_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_MIXED = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_MIXED;
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_UNSET = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_UNSET;
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_UPRIGHT = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_UPRIGHT;
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_SIDEWAYS = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_SIDEWAYS;
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_INHERIT = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_INHERIT;
    enum MyCSS_PROPERTY_TEXT_ORIENTATION_INITIAL = mycss_property_text_orientation.MyCSS_PROPERTY_TEXT_ORIENTATION_INITIAL;
    alias mycss_property_text_orientation_t = mycss_property_text_orientation;
    alias mycss_property_text_overflow_t = mycss_property_text_overflow;
    enum mycss_property_text_overflow
    {
        MyCSS_PROPERTY_TEXT_OVERFLOW_CLIP = 58,
        MyCSS_PROPERTY_TEXT_OVERFLOW_ELLIPSIS = 100,
    }
    enum MyCSS_PROPERTY_TEXT_OVERFLOW_CLIP = mycss_property_text_overflow.MyCSS_PROPERTY_TEXT_OVERFLOW_CLIP;
    enum MyCSS_PROPERTY_TEXT_OVERFLOW_ELLIPSIS = mycss_property_text_overflow.MyCSS_PROPERTY_TEXT_OVERFLOW_ELLIPSIS;
    alias mycss_property_text_rendering_t = mycss_property_text_rendering;
    enum mycss_property_text_rendering
    {
        MyCSS_PROPERTY_TEXT_RENDERING_AUTO = 24,
        MyCSS_PROPERTY_TEXT_RENDERING_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZESPEED = 237,
        MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZELEGIBILITY = 235,
        MyCSS_PROPERTY_TEXT_RENDERING_GEOMETRICPRECISION = 129,
    }
    enum MyCSS_PROPERTY_TEXT_RENDERING_AUTO = mycss_property_text_rendering.MyCSS_PROPERTY_TEXT_RENDERING_AUTO;
    enum MyCSS_PROPERTY_TEXT_RENDERING_INHERIT = mycss_property_text_rendering.MyCSS_PROPERTY_TEXT_RENDERING_INHERIT;
    enum MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZESPEED = mycss_property_text_rendering.MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZESPEED;
    enum MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZELEGIBILITY = mycss_property_text_rendering.MyCSS_PROPERTY_TEXT_RENDERING_OPTIMIZELEGIBILITY;
    enum MyCSS_PROPERTY_TEXT_RENDERING_GEOMETRICPRECISION = mycss_property_text_rendering.MyCSS_PROPERTY_TEXT_RENDERING_GEOMETRICPRECISION;
    alias mycss_property_text_shadow_t = mycss_property_text_shadow;
    enum mycss_property_text_shadow
    {
        MyCSS_PROPERTY_TEXT_SHADOW_NONE = 211,
    }
    enum MyCSS_PROPERTY_TEXT_SHADOW_NONE = mycss_property_text_shadow.MyCSS_PROPERTY_TEXT_SHADOW_NONE;
    alias mycss_property_text_size_adjust_t = mycss_property_text_size_adjust;
    enum mycss_property_text_size_adjust
    {
        MyCSS_PROPERTY_TEXT_SIZE_ADJUST_NONE = 211,
        MyCSS_PROPERTY_TEXT_SIZE_ADJUST_AUTO = 24,
    }
    enum MyCSS_PROPERTY_TEXT_SIZE_ADJUST_NONE = mycss_property_text_size_adjust.MyCSS_PROPERTY_TEXT_SIZE_ADJUST_NONE;
    enum MyCSS_PROPERTY_TEXT_SIZE_ADJUST_AUTO = mycss_property_text_size_adjust.MyCSS_PROPERTY_TEXT_SIZE_ADJUST_AUTO;
    alias mycss_property_text_transform_t = mycss_property_text_transform;
    enum mycss_property_text_transform
    {
        MyCSS_PROPERTY_TEXT_TRANSFORM_LOWERCASE = 189,
        MyCSS_PROPERTY_TEXT_TRANSFORM_NONE = 211,
        MyCSS_PROPERTY_TEXT_TRANSFORM_UNSET = 367,
        MyCSS_PROPERTY_TEXT_TRANSFORM_INHERIT = 146,
        MyCSS_PROPERTY_TEXT_TRANSFORM_UPPERCASE = 368,
        MyCSS_PROPERTY_TEXT_TRANSFORM_CAPITALIZE = 52,
        MyCSS_PROPERTY_TEXT_TRANSFORM_FULL_WIDTH = 128,
        MyCSS_PROPERTY_TEXT_TRANSFORM_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_LOWERCASE = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_LOWERCASE;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_NONE = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_NONE;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_UNSET = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_UNSET;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_INHERIT = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_INHERIT;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_UPPERCASE = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_UPPERCASE;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_CAPITALIZE = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_CAPITALIZE;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_FULL_WIDTH = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_FULL_WIDTH;
    enum MyCSS_PROPERTY_TEXT_TRANSFORM_INITIAL = mycss_property_text_transform.MyCSS_PROPERTY_TEXT_TRANSFORM_INITIAL;
    enum mycss_property_text_underline_position
    {
        MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_LEFT = 174,
        MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_UNDER = 362,
        MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_RIGHT = 277,
        MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_AUTO = 24,
    }
    enum MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_LEFT = mycss_property_text_underline_position.MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_LEFT;
    enum MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_UNDER = mycss_property_text_underline_position.MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_UNDER;
    enum MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_RIGHT = mycss_property_text_underline_position.MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_RIGHT;
    enum MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_AUTO = mycss_property_text_underline_position.MyCSS_PROPERTY_TEXT_UNDERLINE_POSITION_AUTO;
    alias mycss_property_text_underline_position_t = mycss_property_text_underline_position;
    enum mycss_property_top
    {
        MyCSS_PROPERTY_TOP_AUTO = 24,
        MyCSS_PROPERTY_TOP__LENGTH = 410,
        MyCSS_PROPERTY_TOP_UNSET = 367,
        MyCSS_PROPERTY_TOP__PERCENTAGE = 413,
        MyCSS_PROPERTY_TOP_INHERIT = 146,
        MyCSS_PROPERTY_TOP_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_TOP_AUTO = mycss_property_top.MyCSS_PROPERTY_TOP_AUTO;
    enum MyCSS_PROPERTY_TOP__LENGTH = mycss_property_top.MyCSS_PROPERTY_TOP__LENGTH;
    enum MyCSS_PROPERTY_TOP_UNSET = mycss_property_top.MyCSS_PROPERTY_TOP_UNSET;
    enum MyCSS_PROPERTY_TOP__PERCENTAGE = mycss_property_top.MyCSS_PROPERTY_TOP__PERCENTAGE;
    enum MyCSS_PROPERTY_TOP_INHERIT = mycss_property_top.MyCSS_PROPERTY_TOP_INHERIT;
    enum MyCSS_PROPERTY_TOP_INITIAL = mycss_property_top.MyCSS_PROPERTY_TOP_INITIAL;
    alias mycss_property_top_t = mycss_property_top;
    enum mycss_property_touch_action
    {
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_LEFT = 250,
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_UP = 252,
        MyCSS_PROPERTY_TOUCH_ACTION_NONE = 211,
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_RIGHT = 251,
        MyCSS_PROPERTY_TOUCH_ACTION_AUTO = 24,
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_X = 253,
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_Y = 254,
        MyCSS_PROPERTY_TOUCH_ACTION_PAN_DOWN = 249,
        MyCSS_PROPERTY_TOUCH_ACTION_MANIPULATION = 192,
    }
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_LEFT = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_LEFT;
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_UP = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_UP;
    enum MyCSS_PROPERTY_TOUCH_ACTION_NONE = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_NONE;
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_RIGHT = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_RIGHT;
    enum MyCSS_PROPERTY_TOUCH_ACTION_AUTO = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_AUTO;
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_X = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_X;
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_Y = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_Y;
    enum MyCSS_PROPERTY_TOUCH_ACTION_PAN_DOWN = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_PAN_DOWN;
    enum MyCSS_PROPERTY_TOUCH_ACTION_MANIPULATION = mycss_property_touch_action.MyCSS_PROPERTY_TOUCH_ACTION_MANIPULATION;
    alias mycss_property_touch_action_t = mycss_property_touch_action;
    enum mycss_property_transform
    {
        MyCSS_PROPERTY_TRANSFORM_NONE = 211,
    }
    enum MyCSS_PROPERTY_TRANSFORM_NONE = mycss_property_transform.MyCSS_PROPERTY_TRANSFORM_NONE;
    alias mycss_property_transform_t = mycss_property_transform;
    enum mycss_property_transform_box
    {
        MyCSS_PROPERTY_TRANSFORM_BOX_VIEW_BOX = 375,
        MyCSS_PROPERTY_TRANSFORM_BOX_FILL_BOX = 114,
        MyCSS_PROPERTY_TRANSFORM_BOX_BORDER_BOX = 42,
    }
    enum MyCSS_PROPERTY_TRANSFORM_BOX_VIEW_BOX = mycss_property_transform_box.MyCSS_PROPERTY_TRANSFORM_BOX_VIEW_BOX;
    enum MyCSS_PROPERTY_TRANSFORM_BOX_FILL_BOX = mycss_property_transform_box.MyCSS_PROPERTY_TRANSFORM_BOX_FILL_BOX;
    enum MyCSS_PROPERTY_TRANSFORM_BOX_BORDER_BOX = mycss_property_transform_box.MyCSS_PROPERTY_TRANSFORM_BOX_BORDER_BOX;
    alias mycss_property_transform_box_t = mycss_property_transform_box;
    enum mycss_property_transform_origin
    {
        MyCSS_PROPERTY_TRANSFORM_ORIGIN_TOP = 356,
        MyCSS_PROPERTY_TRANSFORM_ORIGIN_RIGHT = 277,
        MyCSS_PROPERTY_TRANSFORM_ORIGIN_CENTER = 55,
        MyCSS_PROPERTY_TRANSFORM_ORIGIN_BOTTOM = 45,
        MyCSS_PROPERTY_TRANSFORM_ORIGIN_LEFT = 174,
    }
    enum MyCSS_PROPERTY_TRANSFORM_ORIGIN_TOP = mycss_property_transform_origin.MyCSS_PROPERTY_TRANSFORM_ORIGIN_TOP;
    enum MyCSS_PROPERTY_TRANSFORM_ORIGIN_RIGHT = mycss_property_transform_origin.MyCSS_PROPERTY_TRANSFORM_ORIGIN_RIGHT;
    enum MyCSS_PROPERTY_TRANSFORM_ORIGIN_CENTER = mycss_property_transform_origin.MyCSS_PROPERTY_TRANSFORM_ORIGIN_CENTER;
    enum MyCSS_PROPERTY_TRANSFORM_ORIGIN_BOTTOM = mycss_property_transform_origin.MyCSS_PROPERTY_TRANSFORM_ORIGIN_BOTTOM;
    enum MyCSS_PROPERTY_TRANSFORM_ORIGIN_LEFT = mycss_property_transform_origin.MyCSS_PROPERTY_TRANSFORM_ORIGIN_LEFT;
    alias mycss_property_transform_origin_t = mycss_property_transform_origin;
    alias mycss_property_transform_style_t = mycss_property_transform_style;
    enum mycss_property_transform_style
    {
        MyCSS_PROPERTY_TRANSFORM_STYLE_FLAT = 119,
        MyCSS_PROPERTY_TRANSFORM_STYLE_PRESERVE_3D = 261,
        MyCSS_PROPERTY_TRANSFORM_STYLE_AUTO = 24,
    }
    enum MyCSS_PROPERTY_TRANSFORM_STYLE_FLAT = mycss_property_transform_style.MyCSS_PROPERTY_TRANSFORM_STYLE_FLAT;
    enum MyCSS_PROPERTY_TRANSFORM_STYLE_PRESERVE_3D = mycss_property_transform_style.MyCSS_PROPERTY_TRANSFORM_STYLE_PRESERVE_3D;
    enum MyCSS_PROPERTY_TRANSFORM_STYLE_AUTO = mycss_property_transform_style.MyCSS_PROPERTY_TRANSFORM_STYLE_AUTO;
    enum mycss_property_transition_property
    {
        MyCSS_PROPERTY_TRANSITION_PROPERTY_NONE = 211,
        MyCSS_PROPERTY_TRANSITION_PROPERTY_ALL = 16,
    }
    enum MyCSS_PROPERTY_TRANSITION_PROPERTY_NONE = mycss_property_transition_property.MyCSS_PROPERTY_TRANSITION_PROPERTY_NONE;
    enum MyCSS_PROPERTY_TRANSITION_PROPERTY_ALL = mycss_property_transition_property.MyCSS_PROPERTY_TRANSITION_PROPERTY_ALL;
    alias mycss_property_transition_property_t = mycss_property_transition_property;
    enum mycss_property_transition_timing_function
    {
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_LINEAR = 178,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE = 94,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN = 95,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_OUT = 97,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_END = 329,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_START = 330,
        MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN_OUT = 96,
    }
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_LINEAR = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_LINEAR;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_OUT = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_OUT;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_END = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_END;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_START = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_STEP_START;
    enum MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN_OUT = mycss_property_transition_timing_function.MyCSS_PROPERTY_TRANSITION_TIMING_FUNCTION_EASE_IN_OUT;
    alias mycss_property_transition_timing_function_t = mycss_property_transition_timing_function;
    alias mycss_property_unicode_bidi_t = mycss_property_unicode_bidi;
    enum mycss_property_unicode_bidi
    {
        MyCSS_PROPERTY_UNICODE_BIDI_EMBED = 101,
        MyCSS_PROPERTY_UNICODE_BIDI_NORMAL = 213,
        MyCSS_PROPERTY_UNICODE_BIDI_INHERIT = 146,
        MyCSS_PROPERTY_UNICODE_BIDI_PLAINTEXT = 257,
        MyCSS_PROPERTY_UNICODE_BIDI_UNSET = 367,
        MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE = 160,
        MyCSS_PROPERTY_UNICODE_BIDI_INITIAL = 147,
        MyCSS_PROPERTY_UNICODE_BIDI_BIDI_OVERRIDE = 36,
        MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE_OVERRIDE = 161,
    }
    enum MyCSS_PROPERTY_UNICODE_BIDI_EMBED = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_EMBED;
    enum MyCSS_PROPERTY_UNICODE_BIDI_NORMAL = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_NORMAL;
    enum MyCSS_PROPERTY_UNICODE_BIDI_INHERIT = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_INHERIT;
    enum MyCSS_PROPERTY_UNICODE_BIDI_PLAINTEXT = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_PLAINTEXT;
    enum MyCSS_PROPERTY_UNICODE_BIDI_UNSET = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_UNSET;
    enum MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE;
    enum MyCSS_PROPERTY_UNICODE_BIDI_INITIAL = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_INITIAL;
    enum MyCSS_PROPERTY_UNICODE_BIDI_BIDI_OVERRIDE = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_BIDI_OVERRIDE;
    enum MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE_OVERRIDE = mycss_property_unicode_bidi.MyCSS_PROPERTY_UNICODE_BIDI_ISOLATE_OVERRIDE;
    alias mycss_property_user_select_t = mycss_property_user_select;
    enum mycss_property_user_select
    {
        MyCSS_PROPERTY_USER_SELECT_CONTAIN = 68,
        MyCSS_PROPERTY_USER_SELECT_ALL = 16,
        MyCSS_PROPERTY_USER_SELECT_AUTO = 24,
        MyCSS_PROPERTY_USER_SELECT_TEXT = 350,
        MyCSS_PROPERTY_USER_SELECT_NONE = 211,
    }
    enum MyCSS_PROPERTY_USER_SELECT_CONTAIN = mycss_property_user_select.MyCSS_PROPERTY_USER_SELECT_CONTAIN;
    enum MyCSS_PROPERTY_USER_SELECT_ALL = mycss_property_user_select.MyCSS_PROPERTY_USER_SELECT_ALL;
    enum MyCSS_PROPERTY_USER_SELECT_AUTO = mycss_property_user_select.MyCSS_PROPERTY_USER_SELECT_AUTO;
    enum MyCSS_PROPERTY_USER_SELECT_TEXT = mycss_property_user_select.MyCSS_PROPERTY_USER_SELECT_TEXT;
    enum MyCSS_PROPERTY_USER_SELECT_NONE = mycss_property_user_select.MyCSS_PROPERTY_USER_SELECT_NONE;
    alias mycss_property_vertical_align_t = mycss_property_vertical_align;
    enum mycss_property_vertical_align
    {
        MyCSS_PROPERTY_VERTICAL_ALIGN_SUB = 336,
        MyCSS_PROPERTY_VERTICAL_ALIGN_TOP = 356,
        MyCSS_PROPERTY_VERTICAL_ALIGN__LENGTH = 410,
        MyCSS_PROPERTY_VERTICAL_ALIGN_BASELINE = 34,
        MyCSS_PROPERTY_VERTICAL_ALIGN__PERCENTAGE = 413,
        MyCSS_PROPERTY_VERTICAL_ALIGN_SUPER = 337,
        MyCSS_PROPERTY_VERTICAL_ALIGN_UNSET = 367,
        MyCSS_PROPERTY_VERTICAL_ALIGN_MIDDLE = 201,
        MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_TOP = 352,
        MyCSS_PROPERTY_VERTICAL_ALIGN_BOTTOM = 45,
        MyCSS_PROPERTY_VERTICAL_ALIGN_INHERIT = 146,
        MyCSS_PROPERTY_VERTICAL_ALIGN_INITIAL = 147,
        MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_BOTTOM = 351,
    }
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_SUB = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_SUB;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_TOP = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_TOP;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN__LENGTH = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN__LENGTH;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_BASELINE = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_BASELINE;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN__PERCENTAGE = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN__PERCENTAGE;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_SUPER = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_SUPER;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_UNSET = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_UNSET;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_MIDDLE = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_MIDDLE;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_TOP = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_TOP;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_BOTTOM = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_BOTTOM;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_INHERIT = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_INHERIT;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_INITIAL = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_INITIAL;
    enum MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_BOTTOM = mycss_property_vertical_align.MyCSS_PROPERTY_VERTICAL_ALIGN_TEXT_BOTTOM;
    alias mycss_property_visibility_t = mycss_property_visibility;
    enum mycss_property_visibility
    {
        MyCSS_PROPERTY_VISIBILITY_UNSET = 367,
        MyCSS_PROPERTY_VISIBILITY_HIDDEN = 136,
        MyCSS_PROPERTY_VISIBILITY_VISIBLE = 376,
        MyCSS_PROPERTY_VISIBILITY_INHERIT = 146,
        MyCSS_PROPERTY_VISIBILITY_COLLAPSE = 61,
        MyCSS_PROPERTY_VISIBILITY_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_VISIBILITY_UNSET = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_UNSET;
    enum MyCSS_PROPERTY_VISIBILITY_HIDDEN = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_HIDDEN;
    enum MyCSS_PROPERTY_VISIBILITY_VISIBLE = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_VISIBLE;
    enum MyCSS_PROPERTY_VISIBILITY_INHERIT = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_INHERIT;
    enum MyCSS_PROPERTY_VISIBILITY_COLLAPSE = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_COLLAPSE;
    enum MyCSS_PROPERTY_VISIBILITY_INITIAL = mycss_property_visibility.MyCSS_PROPERTY_VISIBILITY_INITIAL;
    alias mycss_property_voice_balance_t = mycss_property_voice_balance;
    enum mycss_property_voice_balance
    {
        MyCSS_PROPERTY_VOICE_BALANCE_LEFT = 174,
        MyCSS_PROPERTY_VOICE_BALANCE_RIGHT = 277,
        MyCSS_PROPERTY_VOICE_BALANCE_CENTER = 55,
        MyCSS_PROPERTY_VOICE_BALANCE_LEFTWARDS = 175,
        MyCSS_PROPERTY_VOICE_BALANCE_RIGHTWARDS = 278,
    }
    enum MyCSS_PROPERTY_VOICE_BALANCE_LEFT = mycss_property_voice_balance.MyCSS_PROPERTY_VOICE_BALANCE_LEFT;
    enum MyCSS_PROPERTY_VOICE_BALANCE_RIGHT = mycss_property_voice_balance.MyCSS_PROPERTY_VOICE_BALANCE_RIGHT;
    enum MyCSS_PROPERTY_VOICE_BALANCE_CENTER = mycss_property_voice_balance.MyCSS_PROPERTY_VOICE_BALANCE_CENTER;
    enum MyCSS_PROPERTY_VOICE_BALANCE_LEFTWARDS = mycss_property_voice_balance.MyCSS_PROPERTY_VOICE_BALANCE_LEFTWARDS;
    enum MyCSS_PROPERTY_VOICE_BALANCE_RIGHTWARDS = mycss_property_voice_balance.MyCSS_PROPERTY_VOICE_BALANCE_RIGHTWARDS;
    alias mycss_property_voice_duration_t = mycss_property_voice_duration;
    enum mycss_property_voice_duration
    {
        MyCSS_PROPERTY_VOICE_DURATION_AUTO = 24,
    }
    enum MyCSS_PROPERTY_VOICE_DURATION_AUTO = mycss_property_voice_duration.MyCSS_PROPERTY_VOICE_DURATION_AUTO;
    enum mycss_property_voice_family
    {
        MyCSS_PROPERTY_VOICE_FAMILY_PRESERVE = 260,
    }
    enum MyCSS_PROPERTY_VOICE_FAMILY_PRESERVE = mycss_property_voice_family.MyCSS_PROPERTY_VOICE_FAMILY_PRESERVE;
    alias mycss_property_voice_family_t = mycss_property_voice_family;
    alias mycss_property_voice_pitch_t = mycss_property_voice_pitch;
    enum mycss_property_voice_pitch
    {
        MyCSS_PROPERTY_VOICE_PITCH_LOW = 188,
        MyCSS_PROPERTY_VOICE_PITCH_X_LOW = 391,
        MyCSS_PROPERTY_VOICE_PITCH_ABSOLUTE = 14,
        MyCSS_PROPERTY_VOICE_PITCH_HIGH = 138,
        MyCSS_PROPERTY_VOICE_PITCH_MEDIUM = 198,
        MyCSS_PROPERTY_VOICE_PITCH_X_HIGH = 388,
    }
    enum MyCSS_PROPERTY_VOICE_PITCH_LOW = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_LOW;
    enum MyCSS_PROPERTY_VOICE_PITCH_X_LOW = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_X_LOW;
    enum MyCSS_PROPERTY_VOICE_PITCH_ABSOLUTE = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_ABSOLUTE;
    enum MyCSS_PROPERTY_VOICE_PITCH_HIGH = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_HIGH;
    enum MyCSS_PROPERTY_VOICE_PITCH_MEDIUM = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_MEDIUM;
    enum MyCSS_PROPERTY_VOICE_PITCH_X_HIGH = mycss_property_voice_pitch.MyCSS_PROPERTY_VOICE_PITCH_X_HIGH;
    enum mycss_property_voice_range
    {
        MyCSS_PROPERTY_VOICE_RANGE_X_LOW = 391,
        MyCSS_PROPERTY_VOICE_RANGE_LOW = 188,
        MyCSS_PROPERTY_VOICE_RANGE_ABSOLUTE = 14,
        MyCSS_PROPERTY_VOICE_RANGE_HIGH = 138,
        MyCSS_PROPERTY_VOICE_RANGE_MEDIUM = 198,
        MyCSS_PROPERTY_VOICE_RANGE_X_HIGH = 388,
    }
    enum MyCSS_PROPERTY_VOICE_RANGE_X_LOW = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_X_LOW;
    enum MyCSS_PROPERTY_VOICE_RANGE_LOW = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_LOW;
    enum MyCSS_PROPERTY_VOICE_RANGE_ABSOLUTE = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_ABSOLUTE;
    enum MyCSS_PROPERTY_VOICE_RANGE_HIGH = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_HIGH;
    enum MyCSS_PROPERTY_VOICE_RANGE_MEDIUM = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_MEDIUM;
    enum MyCSS_PROPERTY_VOICE_RANGE_X_HIGH = mycss_property_voice_range.MyCSS_PROPERTY_VOICE_RANGE_X_HIGH;
    alias mycss_property_voice_range_t = mycss_property_voice_range;
    alias mycss_property_voice_rate_t = mycss_property_voice_rate;
    enum mycss_property_voice_rate
    {
        MyCSS_PROPERTY_VOICE_RATE_SLOW = 311,
        MyCSS_PROPERTY_VOICE_RATE_X_FAST = 387,
        MyCSS_PROPERTY_VOICE_RATE_NORMAL = 213,
        MyCSS_PROPERTY_VOICE_RATE_X_SLOW = 392,
        MyCSS_PROPERTY_VOICE_RATE_FAST = 111,
        MyCSS_PROPERTY_VOICE_RATE_MEDIUM = 198,
    }
    enum MyCSS_PROPERTY_VOICE_RATE_SLOW = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_SLOW;
    enum MyCSS_PROPERTY_VOICE_RATE_X_FAST = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_X_FAST;
    enum MyCSS_PROPERTY_VOICE_RATE_NORMAL = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_NORMAL;
    enum MyCSS_PROPERTY_VOICE_RATE_X_SLOW = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_X_SLOW;
    enum MyCSS_PROPERTY_VOICE_RATE_FAST = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_FAST;
    enum MyCSS_PROPERTY_VOICE_RATE_MEDIUM = mycss_property_voice_rate.MyCSS_PROPERTY_VOICE_RATE_MEDIUM;
    alias mycss_property_voice_stress_t = mycss_property_voice_stress;
    enum mycss_property_voice_stress
    {
        MyCSS_PROPERTY_VOICE_STRESS_STRONG = 334,
        MyCSS_PROPERTY_VOICE_STRESS_NORMAL = 213,
        MyCSS_PROPERTY_VOICE_STRESS_NONE = 211,
        MyCSS_PROPERTY_VOICE_STRESS_MODERATE = 206,
        MyCSS_PROPERTY_VOICE_STRESS_REDUCED = 269,
    }
    enum MyCSS_PROPERTY_VOICE_STRESS_STRONG = mycss_property_voice_stress.MyCSS_PROPERTY_VOICE_STRESS_STRONG;
    enum MyCSS_PROPERTY_VOICE_STRESS_NORMAL = mycss_property_voice_stress.MyCSS_PROPERTY_VOICE_STRESS_NORMAL;
    enum MyCSS_PROPERTY_VOICE_STRESS_NONE = mycss_property_voice_stress.MyCSS_PROPERTY_VOICE_STRESS_NONE;
    enum MyCSS_PROPERTY_VOICE_STRESS_MODERATE = mycss_property_voice_stress.MyCSS_PROPERTY_VOICE_STRESS_MODERATE;
    enum MyCSS_PROPERTY_VOICE_STRESS_REDUCED = mycss_property_voice_stress.MyCSS_PROPERTY_VOICE_STRESS_REDUCED;
    alias mycss_property_voice_volume_t = mycss_property_voice_volume;
    enum mycss_property_voice_volume
    {
        MyCSS_PROPERTY_VOICE_VOLUME_SOFT = 316,
        MyCSS_PROPERTY_VOICE_VOLUME_X_SOFT = 394,
        MyCSS_PROPERTY_VOICE_VOLUME_SILENT = 306,
        MyCSS_PROPERTY_VOICE_VOLUME_LOUD = 187,
        MyCSS_PROPERTY_VOICE_VOLUME_MEDIUM = 198,
        MyCSS_PROPERTY_VOICE_VOLUME_X_LOUD = 390,
    }
    enum MyCSS_PROPERTY_VOICE_VOLUME_SOFT = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_SOFT;
    enum MyCSS_PROPERTY_VOICE_VOLUME_X_SOFT = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_X_SOFT;
    enum MyCSS_PROPERTY_VOICE_VOLUME_SILENT = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_SILENT;
    enum MyCSS_PROPERTY_VOICE_VOLUME_LOUD = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_LOUD;
    enum MyCSS_PROPERTY_VOICE_VOLUME_MEDIUM = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_MEDIUM;
    enum MyCSS_PROPERTY_VOICE_VOLUME_X_LOUD = mycss_property_voice_volume.MyCSS_PROPERTY_VOICE_VOLUME_X_LOUD;
    alias mycss_property_white_space_t = mycss_property_white_space;
    enum mycss_property_white_space
    {
        MyCSS_PROPERTY_WHITE_SPACE_PRE = 259,
        MyCSS_PROPERTY_WHITE_SPACE_NORMAL = 213,
        MyCSS_PROPERTY_WHITE_SPACE_UNSET = 367,
        MyCSS_PROPERTY_WHITE_SPACE_NOWRAP = 215,
        MyCSS_PROPERTY_WHITE_SPACE_INHERIT = 146,
        MyCSS_PROPERTY_WHITE_SPACE_PRE_WRAP = 263,
        MyCSS_PROPERTY_WHITE_SPACE_PRE_LINE = 262,
        MyCSS_PROPERTY_WHITE_SPACE_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_WHITE_SPACE_PRE = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_PRE;
    enum MyCSS_PROPERTY_WHITE_SPACE_NORMAL = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_NORMAL;
    enum MyCSS_PROPERTY_WHITE_SPACE_UNSET = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_UNSET;
    enum MyCSS_PROPERTY_WHITE_SPACE_NOWRAP = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_NOWRAP;
    enum MyCSS_PROPERTY_WHITE_SPACE_INHERIT = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_INHERIT;
    enum MyCSS_PROPERTY_WHITE_SPACE_PRE_WRAP = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_PRE_WRAP;
    enum MyCSS_PROPERTY_WHITE_SPACE_PRE_LINE = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_PRE_LINE;
    enum MyCSS_PROPERTY_WHITE_SPACE_INITIAL = mycss_property_white_space.MyCSS_PROPERTY_WHITE_SPACE_INITIAL;
    alias mycss_property_width_t = mycss_property_width;
    enum mycss_property_width
    {
        MyCSS_PROPERTY_WIDTH_MAX_CONTENT = 197,
        MyCSS_PROPERTY_WIDTH_AUTO = 24,
        MyCSS_PROPERTY_WIDTH__LENGTH = 410,
        MyCSS_PROPERTY_WIDTH_AVAILABLE = 25,
        MyCSS_PROPERTY_WIDTH__PERCENTAGE = 413,
        MyCSS_PROPERTY_WIDTH_UNSET = 367,
        MyCSS_PROPERTY_WIDTH_MIN_CONTENT = 203,
        MyCSS_PROPERTY_WIDTH_FIT_CONTENT = 117,
        MyCSS_PROPERTY_WIDTH_INHERIT = 146,
        MyCSS_PROPERTY_WIDTH_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_WIDTH_MAX_CONTENT = mycss_property_width.MyCSS_PROPERTY_WIDTH_MAX_CONTENT;
    enum MyCSS_PROPERTY_WIDTH_AUTO = mycss_property_width.MyCSS_PROPERTY_WIDTH_AUTO;
    enum MyCSS_PROPERTY_WIDTH__LENGTH = mycss_property_width.MyCSS_PROPERTY_WIDTH__LENGTH;
    enum MyCSS_PROPERTY_WIDTH_AVAILABLE = mycss_property_width.MyCSS_PROPERTY_WIDTH_AVAILABLE;
    enum MyCSS_PROPERTY_WIDTH__PERCENTAGE = mycss_property_width.MyCSS_PROPERTY_WIDTH__PERCENTAGE;
    enum MyCSS_PROPERTY_WIDTH_UNSET = mycss_property_width.MyCSS_PROPERTY_WIDTH_UNSET;
    enum MyCSS_PROPERTY_WIDTH_MIN_CONTENT = mycss_property_width.MyCSS_PROPERTY_WIDTH_MIN_CONTENT;
    enum MyCSS_PROPERTY_WIDTH_FIT_CONTENT = mycss_property_width.MyCSS_PROPERTY_WIDTH_FIT_CONTENT;
    enum MyCSS_PROPERTY_WIDTH_INHERIT = mycss_property_width.MyCSS_PROPERTY_WIDTH_INHERIT;
    enum MyCSS_PROPERTY_WIDTH_INITIAL = mycss_property_width.MyCSS_PROPERTY_WIDTH_INITIAL;
    alias mycss_property_will_change_t = mycss_property_will_change;
    enum mycss_property_will_change
    {
        MyCSS_PROPERTY_WILL_CHANGE_SCROLL_POSITION = 295,
        MyCSS_PROPERTY_WILL_CHANGE_AUTO = 24,
        MyCSS_PROPERTY_WILL_CHANGE_CONTENTS = 70,
    }
    enum MyCSS_PROPERTY_WILL_CHANGE_SCROLL_POSITION = mycss_property_will_change.MyCSS_PROPERTY_WILL_CHANGE_SCROLL_POSITION;
    enum MyCSS_PROPERTY_WILL_CHANGE_AUTO = mycss_property_will_change.MyCSS_PROPERTY_WILL_CHANGE_AUTO;
    enum MyCSS_PROPERTY_WILL_CHANGE_CONTENTS = mycss_property_will_change.MyCSS_PROPERTY_WILL_CHANGE_CONTENTS;
    enum mycss_property_word_break
    {
        MyCSS_PROPERTY_WORD_BREAK_BREAK_ALL = 48,
        MyCSS_PROPERTY_WORD_BREAK_NORMAL = 213,
        MyCSS_PROPERTY_WORD_BREAK_UNSET = 367,
        MyCSS_PROPERTY_WORD_BREAK_INHERIT = 146,
        MyCSS_PROPERTY_WORD_BREAK_KEEP_ALL = 169,
        MyCSS_PROPERTY_WORD_BREAK_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_WORD_BREAK_BREAK_ALL = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_BREAK_ALL;
    enum MyCSS_PROPERTY_WORD_BREAK_NORMAL = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_NORMAL;
    enum MyCSS_PROPERTY_WORD_BREAK_UNSET = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_UNSET;
    enum MyCSS_PROPERTY_WORD_BREAK_INHERIT = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_INHERIT;
    enum MyCSS_PROPERTY_WORD_BREAK_KEEP_ALL = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_KEEP_ALL;
    enum MyCSS_PROPERTY_WORD_BREAK_INITIAL = mycss_property_word_break.MyCSS_PROPERTY_WORD_BREAK_INITIAL;
    alias mycss_property_word_break_t = mycss_property_word_break;
    alias mycss_property_word_spacing_t = mycss_property_word_spacing;
    enum mycss_property_word_spacing
    {
        MyCSS_PROPERTY_WORD_SPACING_INHERIT = 146,
        MyCSS_PROPERTY_WORD_SPACING_NORMAL = 213,
        MyCSS_PROPERTY_WORD_SPACING__PERCENTAGE = 413,
        MyCSS_PROPERTY_WORD_SPACING__LENGTH = 410,
        MyCSS_PROPERTY_WORD_SPACING_UNSET = 367,
        MyCSS_PROPERTY_WORD_SPACING_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_WORD_SPACING_INHERIT = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING_INHERIT;
    enum MyCSS_PROPERTY_WORD_SPACING_NORMAL = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING_NORMAL;
    enum MyCSS_PROPERTY_WORD_SPACING__PERCENTAGE = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING__PERCENTAGE;
    enum MyCSS_PROPERTY_WORD_SPACING__LENGTH = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING__LENGTH;
    enum MyCSS_PROPERTY_WORD_SPACING_UNSET = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING_UNSET;
    enum MyCSS_PROPERTY_WORD_SPACING_INITIAL = mycss_property_word_spacing.MyCSS_PROPERTY_WORD_SPACING_INITIAL;
    alias mycss_property_word_wrap_t = mycss_property_word_wrap;
    enum mycss_property_word_wrap
    {
        MyCSS_PROPERTY_WORD_WRAP_NORMAL = 213,
        MyCSS_PROPERTY_WORD_WRAP_UNSET = 367,
        MyCSS_PROPERTY_WORD_WRAP_INITIAL = 147,
        MyCSS_PROPERTY_WORD_WRAP_BREAK_SPACES = 49,
        MyCSS_PROPERTY_WORD_WRAP_INHERIT = 146,
        MyCSS_PROPERTY_WORD_WRAP_BREAK_WORD = 50,
    }
    enum MyCSS_PROPERTY_WORD_WRAP_NORMAL = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_NORMAL;
    enum MyCSS_PROPERTY_WORD_WRAP_UNSET = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_UNSET;
    enum MyCSS_PROPERTY_WORD_WRAP_INITIAL = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_INITIAL;
    enum MyCSS_PROPERTY_WORD_WRAP_BREAK_SPACES = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_BREAK_SPACES;
    enum MyCSS_PROPERTY_WORD_WRAP_INHERIT = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_INHERIT;
    enum MyCSS_PROPERTY_WORD_WRAP_BREAK_WORD = mycss_property_word_wrap.MyCSS_PROPERTY_WORD_WRAP_BREAK_WORD;
    alias mycss_property_wrap_flow_t = mycss_property_wrap_flow;
    enum mycss_property_wrap_flow
    {
        MyCSS_PROPERTY_WRAP_FLOW_MAXIMUM = 196,
        MyCSS_PROPERTY_WRAP_FLOW_MINIMUM = 202,
        MyCSS_PROPERTY_WRAP_FLOW_END = 102,
        MyCSS_PROPERTY_WRAP_FLOW_AUTO = 24,
        MyCSS_PROPERTY_WRAP_FLOW_BOTH = 44,
        MyCSS_PROPERTY_WRAP_FLOW_START = 326,
        MyCSS_PROPERTY_WRAP_FLOW_CLEAR = 57,
    }
    enum MyCSS_PROPERTY_WRAP_FLOW_MAXIMUM = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_MAXIMUM;
    enum MyCSS_PROPERTY_WRAP_FLOW_MINIMUM = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_MINIMUM;
    enum MyCSS_PROPERTY_WRAP_FLOW_END = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_END;
    enum MyCSS_PROPERTY_WRAP_FLOW_AUTO = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_AUTO;
    enum MyCSS_PROPERTY_WRAP_FLOW_BOTH = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_BOTH;
    enum MyCSS_PROPERTY_WRAP_FLOW_START = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_START;
    enum MyCSS_PROPERTY_WRAP_FLOW_CLEAR = mycss_property_wrap_flow.MyCSS_PROPERTY_WRAP_FLOW_CLEAR;
    enum mycss_property_wrap_through
    {
        MyCSS_PROPERTY_WRAP_THROUGH_WRAP = 381,
        MyCSS_PROPERTY_WRAP_THROUGH_NONE = 211,
    }
    enum MyCSS_PROPERTY_WRAP_THROUGH_WRAP = mycss_property_wrap_through.MyCSS_PROPERTY_WRAP_THROUGH_WRAP;
    enum MyCSS_PROPERTY_WRAP_THROUGH_NONE = mycss_property_wrap_through.MyCSS_PROPERTY_WRAP_THROUGH_NONE;
    alias mycss_property_wrap_through_t = mycss_property_wrap_through;
    enum mycss_property_writing_mode
    {
        MyCSS_PROPERTY_WRITING_MODE_INITIAL = 147,
        MyCSS_PROPERTY_WRITING_MODE_VERTICAL_RL = 373,
        MyCSS_PROPERTY_WRITING_MODE_HORIZONTAL_TB = 142,
        MyCSS_PROPERTY_WRITING_MODE_VERTICAL_LR = 372,
        MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_RL = 305,
        MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_LR = 304,
        MyCSS_PROPERTY_WRITING_MODE_INHERIT = 146,
        MyCSS_PROPERTY_WRITING_MODE_UNSET = 367,
    }
    enum MyCSS_PROPERTY_WRITING_MODE_INITIAL = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_INITIAL;
    enum MyCSS_PROPERTY_WRITING_MODE_VERTICAL_RL = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_VERTICAL_RL;
    enum MyCSS_PROPERTY_WRITING_MODE_HORIZONTAL_TB = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_HORIZONTAL_TB;
    enum MyCSS_PROPERTY_WRITING_MODE_VERTICAL_LR = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_VERTICAL_LR;
    enum MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_RL = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_RL;
    enum MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_LR = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_SIDEWAYS_LR;
    enum MyCSS_PROPERTY_WRITING_MODE_INHERIT = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_INHERIT;
    enum MyCSS_PROPERTY_WRITING_MODE_UNSET = mycss_property_writing_mode.MyCSS_PROPERTY_WRITING_MODE_UNSET;
    alias mycss_property_writing_mode_t = mycss_property_writing_mode;
    enum mycss_property_z_index
    {
        MyCSS_PROPERTY_Z_INDEX_AUTO = 24,
        MyCSS_PROPERTY_Z_INDEX__NUMBER = 412,
        MyCSS_PROPERTY_Z_INDEX_UNSET = 367,
        MyCSS_PROPERTY_Z_INDEX_INHERIT = 146,
        MyCSS_PROPERTY_Z_INDEX_INITIAL = 147,
    }
    enum MyCSS_PROPERTY_Z_INDEX_AUTO = mycss_property_z_index.MyCSS_PROPERTY_Z_INDEX_AUTO;
    enum MyCSS_PROPERTY_Z_INDEX__NUMBER = mycss_property_z_index.MyCSS_PROPERTY_Z_INDEX__NUMBER;
    enum MyCSS_PROPERTY_Z_INDEX_UNSET = mycss_property_z_index.MyCSS_PROPERTY_Z_INDEX_UNSET;
    enum MyCSS_PROPERTY_Z_INDEX_INHERIT = mycss_property_z_index.MyCSS_PROPERTY_Z_INDEX_INHERIT;
    enum MyCSS_PROPERTY_Z_INDEX_INITIAL = mycss_property_z_index.MyCSS_PROPERTY_Z_INDEX_INITIAL;
    alias mycss_property_z_index_t = mycss_property_z_index;
}

extern(C)
{


   //size_t mycss_token_data_to_string(mycss_entry_t*, mycss_token_t*, mycore_string_t*, bool) @nogc nothrow;
}

extern(C)
{
    bool modest_finder_selector_sub_type_pseudo_class_function_undef(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_finder_selector_type_f = bool function(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*);
    bool modest_finder_match_attribute_only_key(myhtml_token_attr_t*, const(char)*, size_t) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_current(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_match_attribute_eq(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;


    bool modest_finder_selector_sub_type_pseudo_class_function_dir(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_finder_t = modest_finder;
    bool modest_finder_match_attribute_ws(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;
    alias modest_finder_selector_combinator_f = myhtml_tree_node* function(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*);
    bool modest_finder_selector_sub_type_pseudo_class_function_drop(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_match_attribute_begin(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_has(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_match_attribute_end(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;
    alias modest_finder_callback_f = void function(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, void*);
    bool modest_finder_selector_sub_type_pseudo_class_function_lang(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_match_attribute_sub(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;
    alias modest_finder_match_f = bool function(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool);
    bool modest_finder_selector_type_undef(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_matches(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_match_attribute_hsp(myhtml_token_attr_t*, const(char)*, size_t, const(char)*, size_t, bool) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_not(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    struct modest_finder
    {
        void* ctx;
    }
    modest_finder_t* modest_finder_create() @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_type_element(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    mystatus_t modest_finder_init(modest_finder_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_column(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_last_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    void modest_finder_clean(modest_finder_t*) @nogc nothrow;
    modest_finder_t* modest_finder_destroy(modest_finder_t*, bool) @nogc nothrow;
    bool modest_finder_selector_type_id(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_last_column(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_finder_thread_declaration_t = modest_finder_thread_declaration;
    struct modest_finder_thread_declaration;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_last_of_type(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_finder_thread_entry_t = modest_finder_thread_entry;
    struct modest_finder_thread_entry;
    bool modest_finder_selector_sub_type_pseudo_class_function_nth_of_type(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_finder_thread_context_t = modest_finder_thread_context;
    struct modest_finder_thread_context;
    modest_finder_t* modest_finder_create_simple() @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_function_contains(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    struct modest_finder_thread;
    alias modest_finder_thread_t = modest_finder_thread;
    bool modest_finder_selector_type_class(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    struct modest_finder_thread_found_context;
    alias modest_finder_thread_found_context_t = modest_finder_thread_found_context;
    bool modest_finder_selector_sub_type_pseudo_class_undef(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    void modest_finder_callback_found_with_collection(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, void*) @nogc nothrow;
    bool modest_finder_selector_type_attribute(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_active(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_any_link(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_blank(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_type_pseudo_class_function(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    void modest_finder_callback_found_with_bool(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, void*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_checked(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_current(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_status_t = modest_status;
    enum modest_status
    {
        MODEST_STATUS_OK = 0,
        MODEST_STATUS_ERROR = 131072,
        MODEST_STATUS_ERROR_MEMORY_ALLOCATION = 131073,
        MODEST_STATUS_ERROR_MNODE_CREATE = 131330,
        MODEST_STATUS_ERROR_MNODE_INIT = 131331,
        MODEST_STATUS_ERROR_MNODE_NODE_ADD = 131332,
        MODEST_STATUS_ERROR_STYLESHEET_CREATE = 131344,
        MODEST_STATUS_ERROR_STYLESHEET_INIT = 131345,
        MODEST_STATUS_ERROR_STYLESHEET_NODE_ADD = 131346,
        MODEST_STATUS_ERROR_STYLE_TYPE_CREATE = 131360,
        MODEST_STATUS_ERROR_STYLE_TYPE_NODE_ADD = 131361,
        MODEST_STATUS_ERROR_STYLE_DECLARATION_CREATE = 131362,
        MODEST_STATUS_ERROR_STYLE_DECLARATION_INIT = 131363,
        MODEST_STATUS_ERROR_AVL_TREE_CREATE = 131364,
        MODEST_STATUS_ERROR_AVL_TREE_INIT = 131365,
    }
    enum MODEST_STATUS_OK = modest_status.MODEST_STATUS_OK;
    enum MODEST_STATUS_ERROR = modest_status.MODEST_STATUS_ERROR;
    enum MODEST_STATUS_ERROR_MEMORY_ALLOCATION = modest_status.MODEST_STATUS_ERROR_MEMORY_ALLOCATION;
    enum MODEST_STATUS_ERROR_MNODE_CREATE = modest_status.MODEST_STATUS_ERROR_MNODE_CREATE;
    enum MODEST_STATUS_ERROR_MNODE_INIT = modest_status.MODEST_STATUS_ERROR_MNODE_INIT;
    enum MODEST_STATUS_ERROR_MNODE_NODE_ADD = modest_status.MODEST_STATUS_ERROR_MNODE_NODE_ADD;
    enum MODEST_STATUS_ERROR_STYLESHEET_CREATE = modest_status.MODEST_STATUS_ERROR_STYLESHEET_CREATE;
    enum MODEST_STATUS_ERROR_STYLESHEET_INIT = modest_status.MODEST_STATUS_ERROR_STYLESHEET_INIT;
    enum MODEST_STATUS_ERROR_STYLESHEET_NODE_ADD = modest_status.MODEST_STATUS_ERROR_STYLESHEET_NODE_ADD;
    enum MODEST_STATUS_ERROR_STYLE_TYPE_CREATE = modest_status.MODEST_STATUS_ERROR_STYLE_TYPE_CREATE;
    enum MODEST_STATUS_ERROR_STYLE_TYPE_NODE_ADD = modest_status.MODEST_STATUS_ERROR_STYLE_TYPE_NODE_ADD;
    enum MODEST_STATUS_ERROR_STYLE_DECLARATION_CREATE = modest_status.MODEST_STATUS_ERROR_STYLE_DECLARATION_CREATE;
    enum MODEST_STATUS_ERROR_STYLE_DECLARATION_INIT = modest_status.MODEST_STATUS_ERROR_STYLE_DECLARATION_INIT;
    enum MODEST_STATUS_ERROR_AVL_TREE_CREATE = modest_status.MODEST_STATUS_ERROR_AVL_TREE_CREATE;
    enum MODEST_STATUS_ERROR_AVL_TREE_INIT = modest_status.MODEST_STATUS_ERROR_AVL_TREE_INIT;
    bool modest_finder_selector_type_pseudo_class(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_default(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_disabled(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_drop(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    void modest_finder_specificity_inc(mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_type_pseudo_element_function(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_empty(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_enabled(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_first_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    modest_finder_t* modest_finder_by_stylesheet(mycss_stylesheet_t*, myhtml_collection_t**, myhtml_tree_node_t*) @nogc nothrow;
    bool modest_finder_selector_type_pseudo_element(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_first_of_type(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    mystatus_t modest_finder_by_selectors_list(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, myhtml_collection_t**) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_focus(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_future(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_hover(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_in_range(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_indeterminate(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_begin(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_invalid(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_last_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_last_of_type(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_undef(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_link(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_only_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_only_of_type(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_optional(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_descendant(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    alias modest_t = modest;
    struct modest;
    bool modest_finder_selector_sub_type_pseudo_class_out_of_range(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    alias modest_node_t = modest_node;
    struct modest_node;
    bool modest_finder_selector_sub_type_pseudo_class_past(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    struct modest_style_sheet;
    alias modest_style_sheet_t = modest_style_sheet;
    bool modest_finder_selector_sub_type_pseudo_class_placeholder_shown(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_read_only(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_read_write(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_child(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_required(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_root(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_scope(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_next_sibling(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_target(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_user_error(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_valid(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    bool modest_finder_selector_sub_type_pseudo_class_visited(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_following_sibling(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
    myhtml_tree_node_t* modest_finder_node_combinator_column(modest_finder_t*, myhtml_tree_node_t*, mycss_selectors_list_t*, mycss_selectors_entry_t*, mycss_selectors_specificity_t*, modest_finder_callback_f, void*) @nogc nothrow;
}

# =======================================================
# Thread support
# =======================================================
if (Need_THREAD)
    set(CMAKE_THREAD_PREFER_PTHREAD TRUE)
    set(THREADS_PREFER_PTHREAD_FLAG TRUE)
    find_package(Threads REQUIRED)
endif ()

if (Need_UNIXEM)
    find_package(Unixem)

    if (NOT UNIXEM_FOUND)
        message(FATAL_ERROR "unixem lib not found!")
    endif ()
endif ()

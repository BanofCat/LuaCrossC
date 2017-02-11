cmake_minimum_required(VERSION 2.6)
include_directories(
    /usr/include/lua5.1/lua.h 
    /usr/include/lua5.1/lauxlib.h
    /usr/include/lua5.1/lualib.h
    )

add_executable(ctest Ctest.c)
target_link_libraries(ctest /usr/lib/x86_64-linux-gnu/liblua5.1.so)

add_executable(readTest readDataTest.cpp)
target_link_libraries(readTest /usr/lib/x86_64-linux-gnu/liblua5.1.so)
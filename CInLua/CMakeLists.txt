cmake_minimum_required(VERSION 2.6)
include_directories(
    /usr/include/lua5.1/lua.h
    /usr/include/lua5.1/lauxlib.h
    /usr/include/lua5.1/lualib.h
)
add_executable(avg LuaFun.cpp)
target_link_libraries(avg /usr/lib/x86_64-linux-gnu/liblua5.1.so)
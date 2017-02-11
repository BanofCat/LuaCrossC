#include </usr/include/lua5.1/lua.h>
#include </usr/include/lua5.1/lauxlib.h>
#include </usr/include/lua5.1/lualib.h>
#include <string.h>
#include <stdio.h>

int main(){
    char buff[256];
    int error;

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    luaopen_base(L);
    luaopen_table(L);
    luaopen_io(L);
    luaopen_string(L);
    luaopen_math(L);

    while(fgets(buff, sizeof(buff), stdin) != NULL){
        error = luaL_loadbuffer(L, buff, strlen(buff), "line...") || lua_pcall(L, 0, 0, 0);

        if(error){
            fprintf(stderr, "%s\n", lua_tostring(L, -1));
            lua_pop(L, 1);
        }

    }

    lua_close(L);

    return 0;
}

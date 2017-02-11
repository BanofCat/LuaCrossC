extern "C"{
    #include </usr/include/lua5.1/lua.h>
    #include </usr/include/lua5.1/lauxlib.h>
    #include </usr/include/lua5.1/lualib.h>
    #include <string.h>
    #include <stdio.h>
}

void printLuaStack(lua_State *L){
    int nIndex;
    int nType;
    fprintf(stderr, "================栈顶================\n");
    fprintf(stderr, "   索引  类型          值\n");
    for( nIndex = lua_gettop(L); nIndex > 0; --nIndex){
        nType = lua_type(L, nIndex);
         fprintf(stderr,"   (%d)  %s         %s\n",nIndex, 
         lua_typename(L,nType), lua_tostring(L,nIndex));  
    }
    fprintf(stderr, "================栈底================\n");
}

static int average(lua_State* L){
    printLuaStack(L);
    int n = lua_gettop(L);
    double sum = 0;
    int i;

    for(i = 1; i <= n; i++){
        sum += lua_tonumber(L, i);
    }

    lua_pushnumber(L, sum/n);
    lua_pushnumber(L, sum);
    printLuaStack(L);
    return 2;//返回值个数
}


int main(int argc, const char* argv[]){

    lua_State *L = luaL_newstate();
    luaL_openlibs(L);
    lua_register(L, "average", average);
    luaL_dofile(L, "avg.lua");
    lua_close(L);


    printf( "Press enter to exit…" );  
    getchar();  
    return 0;

}
#include <iostream>
#include <string.h>
using namespace std;

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

int main(){

    lua_State *L = luaL_newstate();
    if(L == NULL) return 1;

    int loadResult = luaL_loadfile(L, "data.lua");
    if(loadResult){
        fprintf(stderr, "cannot load this file!\n");
        return 1;
    }

    loadResult = lua_pcall(L, 0, 0, 0);
    if(loadResult){
        fprintf(stderr, "excuating pcall happended error\n");
        return 1;
    }

    lua_getglobal(L, "str");
    string myStr = lua_tostring(L, -1);
    fprintf(stderr, "str=%s\n",myStr.c_str());

    lua_getglobal(L, "mytable");
    lua_getfield(L, -1, "name");
    myStr = lua_tostring(L, -1);
    fprintf(stderr, "name=%s\n",myStr.c_str());
    //printLuaStack(L);
   // lua_getglobal(L, "mytable");
    lua_getfield(L, -2, "age");
  //  printLuaStack(L);
    double myAge = lua_tointeger(L, -1);
    fprintf(stderr, "age=%lf\n",myAge);

    lua_getglobal(L, "add");
    lua_pushnumber(L, 16);
    lua_pushnumber(L, 17);
    int addResult = lua_pcall(L, 2, 1, 0);
    if(addResult){
        const char *pErrorMsg = lua_tostring(L, -1);  
        cout << pErrorMsg << endl;  
        lua_close(L);  
        return 1;  
    }

    if (lua_isnumber(L, -1))      {  
        double total = lua_tonumber(L, -1);
        fprintf(stderr, "addResult=%lf\n", total);  
    }  

    printLuaStack(L);
    lua_close(L);
    return 0;
}
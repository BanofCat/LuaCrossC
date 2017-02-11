extern "C"{
    #include </usr/include/lua5.1/lua.h>
    #include </usr/include/lua5.1/lauxlib.h>
    #include </usr/include/lua5.1/lualib.h>
}


static int printHello(lua_State* L){
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
    return 0;
}

static const struct luaL_Reg printlib[] =   
{  
    {"printHello", printHello},  
    {NULL, NULL}       //数组中最后一对必须是{NULL, NULL}，用来表示结束      
};  

extern "C" int luaopen_printLib(lua_State* L)
{
    luaL_register(L, "PH", printlib);
 
    return 1;
}
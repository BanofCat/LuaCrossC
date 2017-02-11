--require("printLib")
local loadlibfunc=package.loadlib("./libprintLib.so","luaopen_printLib")  
loadlibfunc() 
PH.printHello("qweqweqweqwe","bbbbbbbb","cccc")
#include "target_architecture.h"
#include <minwindef.h>
#define LUA_LIB
#define LUA_BUILD_AS_DLL
#include "lua.hpp"

#include <fstream>
//WinAPI
BOOL APIENTRY DllMain(
    HMODULE hModule,
    DWORD  ul_reason_for_call,
    LPVOID lpReserved
){
    switch (ul_reason_for_call){
        case DLL_PROCESS_ATTACH:
        case DLL_THREAD_ATTACH:
        case DLL_THREAD_DETACH:
        case DLL_PROCESS_DETACH:
            break;
    }
    return TRUE;
}
//module functions
static int createfile(lua_State* L) {
    std::ofstream outfile("test.txt");
    outfile << "my text here!" << std::endl;
    outfile.close();
    return 0;
}
//module table
static struct luaL_reg ls_lib[] = {
   {"createfile",   createfile  },
   {nullptr,        nullptr     }
};
/*lua 5.1:
* luaopen_<dll_name>(lua_State* L) {
*   luaL_openlib(L, "<dll_name>", ls_lib, 0);
*   ...
* }
*/
extern "C" int LUALIB_API luaopen_virus(lua_State* L) {
    //luaL_openlib(L, "virus", ls_lib, 0);
    luaL_register(L, "virus", ls_lib);
    return 0;
}

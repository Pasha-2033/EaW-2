#pragma once
#include <fstream>
#define LUA_LIB
#define LUA_BUILD_AS_DLL
#include "lua.hpp"
static int createfile(lua_State* L) {
    std::ofstream fout;
    fout.open("C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\readme.txt", std::ios::app);
    fout << "you shouldn`t have launched me :)";
    fout.close();
    return 1;
}
static struct luaL_reg ls_lib[] = {
    { "createfile",  createfile },
    { nullptr,       nullptr    }
};
/*lua 5.1:
* luaopen_<dll_name>
* luaL_openlib(L, "<dll_name>", ls_lib, 0);
*/
extern "C" LUALIB_API int luaopen_virus(lua_State * L) {
    luaL_openlib(L, "virus", ls_lib, 0);
    return 1;
}
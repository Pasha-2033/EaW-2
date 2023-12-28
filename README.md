# Equestria at War 2
# Attention! This is virus branch - do not use it, if u don`t understand what it does!
<h2>This is mod repository.</h2>
It also contains some modules that can be used in your mode.
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/mtth/math_operators.txt">Math module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/array_operators.txt">Array module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/data_storage_operators.txt">Data extention module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/events/recursive.txt">Thread module</a>
</br>
<a href="https://github.com/Pasha-2033/EaW-2/blob/master/common/scripted_effects/unit_generator_scripted_effects.txt">Unit generator</a>
</br>
If you use this code as template or copy - please make referense to this readme.md.  
This will extend your code documentation and promote these scripts being upgraded!

# Injection results
- lua 5.1.4 (patch 2)
- parser is broken so we cant use all functionality:

  ```Lua
  package.path = package.path..";mod_folder_path\\common\\defines\\?.lua"
  requre("temp.lua")
  ```
  ```Lua
  package.cpath = package.cpath..";mod_folder_path\\common\\defines\\?.dll"
  requre("virus.dll")
  ```
  ```Lua
  package.loadlib("path_to_dll", "luaopen_<module>")
  ```
  Even basic functionality is broken, so we can\`t escape `Lua virtual machine`:
  ```Lua
  local f = string.gsub("sometext", "%a+", "none", 1)
  ```
## Summary
Current dll injection is not possible
Failed tasks:
- getting `_G` table
- injectig special tokens for modding extension
## DLL compilation
.dll must be Win32 executable, so we cant use 86x & 64x
## Tests
There were many tests with lua 5.1.4 from official site
Please read project properties in solution!
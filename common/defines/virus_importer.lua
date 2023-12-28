--function virus_loader()
    --%USERPROFILE% -why not works?
    --package.path = package.path..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\?.lua"
    --package.cpath = package.cpath..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\?.dll"
    --require("virus")
    --virus.createfile()
    local f = string.gsub("sometext", "%a+", "none", 1)
    

    --path = "C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\virus.dll"
    --loadlib(path, "createfile")()
    --create_file()
--end
--virus_loader()
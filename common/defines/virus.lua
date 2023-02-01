function os_loader()
    --local os = 
    --io.open("V-FILE.txt", "w")
    local x = 4
    local y = 6
    local z = x + y
end
function module_loader()
    --%USERPROFILE% -why not works?
    package.path = package.path..";C:\\Users\\User\\Documents\\Paradox Interactive\\Hearts of Iron IV\\mod\\EaW 2\\common\\defines\\?.lua"
    local m = require("module")
    --try require("io") for getting table data, require("os") for more ditry things
    local x = 4
    x = m.add(x)
end
os_loader()
module_loader()
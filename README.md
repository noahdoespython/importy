# Importy

Making lives easier instead of require().

[Get Me here!](https://www.roblox.com/library/9039583551/Importy)

## Usage

You can use the following options:

Global Enviroment option:

```lua
wait() -- You will have to wait for _G to be found, as it takes a while. Shouldn't be longer than 1-2 seconds.

tenverse = _G.Import("tenverse")

local body = tenverse.search("622277900065832961")

print(body)
```

require() function:

```lua
local Importy = require(script.src.Importy)

local body = fetchu.get("http://api.open-notify.org/astros.json")

print(body)
```

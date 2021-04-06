# websocket client pure lua implement for love2d

Event-driven websocket client for love2d in pure lua.

Not all websocket features are implemented, but it works fine. Tested with aiohttp(python) and ws(nodejs) library.

## Quick start
```lua
local client = require("websocket").new("127.0.0.1", 5000)
client.onmessage = function(message)
    print(message)
end
client.onopen = function()
    client:send("hello from love2d")
    client:close()
end
client.onclose = function(code, reason)
    print("closecode: "..code..", reason: "..reason)
end

function love.update()
    client:update()
end
```

## API
* `websocket.new(host: string, port: int, path?: string) -> client`
* `client.onopen = function()`
* `client.onmessage = function(message: string)`
* `client.onerror = function(error: string)`
* `client.onclose = function(code: int, reason: string)`
* `client.status -> int`
* `client:send(message: string)`
* `client:close(code?: int, reason?: string)`
* `client:update()`

local client = require("websocket").new("127.0.0.1", 5000)
client.onmessage = function(s)
    print(s)
end
client.onopen = function()
    client:send("hello from love2d")
    client:close()
end
client.onclose = function()
    print("closed")
end

function love.update()
    client:update()
end
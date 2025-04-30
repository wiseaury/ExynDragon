
local http = http and http.request or http_request or syn and syn.request
assert(http, "your exploit does not support httprequests")


local response = http({
    Url = "https://raw.githubusercontent.com/wiseaury/ExynDragon/refs/heads/main/Loader/Scripts/BLR/Main.luau",
    Method = "GET"
})


assert(response and response.Body, "failed to fetch script")

-- run the fetched Lua code
local run = loadstring(response.Body)
assert(run, "failed to pass script")
run()

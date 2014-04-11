local skynet = require "skynet"

local max_client = 64

skynet.start(function()
	print("Server start")
	local service = skynet.newservice("service_mgr")
	skynet.monitor "simplemonitor"
	local debug_port = tonumber(skynet.getenv "debug_port")
	local console = skynet.newservice("debug_console", debug_port)

	skynet.exit()
end)

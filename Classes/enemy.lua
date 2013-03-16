-- enemy.lua
-- Create the Enemy's and there functionality

local enemys = {}
local enemys_mt = { __index = enemys }

local scene = scene  -- make scene a local variable for quick reference

local bomb = require("Classes.bomb")

function enemys:new() -- constructor, just creates the class, nothing else
	local group = {}
   return setmetatable( group, enemys_mt )
end

function enemys:init(xloc, yloc) --initializer, add any variables or images here
	
end

function enemys:start() ---  Create Listeneres, start things that need to be 'running'
	
end

return enemys
--[[
 Importy debug file
]]

local Importy = require "importy"

if not Importy then 
	error "debug error :: require importy in debug.lua"
end

-- testing Import

local io = importy.Import("io")
if not io then
	error "debug error :: using 'Import' to import io library"
end

local os = importy.Import("os")
if not os then
	error "debug error :: using 'Import' to import os library"
end

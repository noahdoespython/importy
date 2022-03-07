--[[
Importy wrapper @ noahdoespython
--]]

local Importy = {}


modules =  script.Parent.Parent.Packages



function _G.Import(module:string)
	if module:lower() == "tenverse" then
		return require(modules.tenverse)
	elseif module:lower() == "roact" then
		return require(modules.Roact)
	elseif module:lower() == "fetchu" then
		return require(modules.fetchu)
	elseif module:lower() == "landonu" then
		return require(modules.Landonu)
	elseif module:lower() == "roact-rodux" then
		return require(modules.RoactRodux)
	else
		require(module)
	end

end

function Importy.Import(module)
	if module:lower() == "tenverse" then
		return require(modules.tenverse)
	elseif module:lower() == "roact" then
		return require(modules.Roact)
	elseif module:lower() == "fetchu" then
		return require(modules.fetchu)
	elseif module:lower() == "landonu" then
		return require(modules.Landonu)
	elseif module:lower() == "roact-rodux" then
		return require(modules.RoactRodux)
	else
		require(module)
	end

end

return Importy



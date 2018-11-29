Globals = {

	--[[
	ModSettingsDict = {
		settingName (string) = value (varies)
	}
	
	StateDict = {
		stateName (string) = value (varies)
	}

	GuiPlayerElemDict = {
		player_index (int) = {
			"CloseOpenContents" = close function --- Reference to the function to close the current open GUI
			guiElemName (string) = guiElem (GuiElement) --- FOR EACH GUI ELEM
		}
	}

	]]

	CreateGlobals = function()
		if global.ModSettingsDict == nil then global.ModSettingsDict = {} end
		if global.StateDict == nil then global.StateDict = {} end
		if global.GuiPlayerElemDict == nil then global.GuiPlayerElemDict = {} end
		Globals.ReferenceGlobals()
		
		Globals.CreateGlobalStateDict()
		Globals.UpdateGameTick()		
		Streamer.CreateGlobals()
		BiterWave.CreateGlobals()
		SpawnLocations.CreateGlobals()
		Evolution.CreateGlobals()
	end,

	ReferenceGlobals = function()
		ModSettingsDict = global.ModSettingsDict
		StateDict = global.StateDict
		GuiPlayerElemDict = global.GuiPlayerElemDict
	end,
	
	CreateGlobalStateDict = function()
		StateDict.surface = game.surfaces[1]
	end,
	
	UpdateGameTick = function()
		StateDict.currentTick = game.tick 
	end

}
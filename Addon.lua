--[[-------------------------------------------------------------------------
	Where Am I?
	Basic location plugin for DataBroker displays.
	Copyright (c) 2009-2014 Phanx. All rights reserved.
	https://github.com/Phanx/WhereAmI
---------------------------------------------------------------------------]]

local _, ns = ...
local WhereAmI = CreateFrame("Frame")
local zoneData = ns.zoneData

local counter, status, zone, subzone = 0, "neutral", "", ""

local alias = {
	["Putricide's Laboratory of Alchemical Horrors and Fun"] = "Putricide's Laboratory",
}

local PVP_STATUS_COLORS = {
	arena = { 1, 0.1, 0.1 },
	combat = { 1, 0.1, 0.1 },
	contested = { 1, 0.7, 0 },
	friendly = { 0.1, 1, 0.1 },
	hostile = { 1, 0.1, 0.1 },
	neutral = { 1, 0.9294, 0.7607 }, -- used in case of nil result
	sanctuary = { 0.41, 0.8, 0.94 },
}

WhereAmI.obj = LibStub("LibDataBroker-1.1"):NewDataObject("Where Am I?", {
	type = "data source",
	label = "Where Am I?",
	icon = "Interface\\WorldMap\\UI-World-Icon",
	OnClick = function(self, button)
		if AtlasToggle and IsInInstance() then
			AtlasToggle()
		else
			ToggleFrame(WorldMapFrame)
		end
	end,
	OnTooltipShow = function(self, tooltip)
		tooltip = tooltip or GameTooltip

		tooltip:AddLine("Where Am I?")
		tooltip:AddLine(" ")

		local color = PVP_STATUS_COLORS[status]
		local r, g, b = color[1], color[2], color[3]
		tooltip:AddDoubleLine("Zone", zone, nil, nil, nil, r, g, b)
		tooltip:AddDoubleLine("Subzone", subzone, nil, nil, nil, r, g, b)
		tooltip:AddDoubleLine("Status", string.gsub(status, "(%a)", string.upper, 1), nil, nil, nil, r, g, b)

		local data = zoneData[GetCurrentMapAreaID()]
		if data then
			local minLevel, maxLevel = data.minLevel, data.maxLevel
			if minLevel then
				local level = UnitLevel("player")
				local color = level < minLevel and GetRelativeDifficultyColor(level, minLevel) or level > maxLevel and GetRelativeDifficultyColor(level, maxLevel - 2) or QuestDifficultyColors["difficult"]
				tooltip:AddDoubleLine(maxLevel > minLevel and "Levels" or "Level", maxLevel > minLevel and format("%d-%d", minLevel, maxLevel) or minLevel, nil, nil, nil, color.r, color.g, color.b)
			end

			local minPet, maxPet = data.minPetLevel, data.maxPetLevel
			if minPet then
				local _, _, _, _, locked = C_PetJournal.GetPetLoadOutInfo(1)
				if not locked then
					local color = HIGHLIGHT_FONT_COLOR
					local level = C_PetJournal.GetPetTeamAverageLevel()
					if level then
						color = level < minPet and GetRelativeDifficultyColor(level, minPet) or level > maxPet and GetRelativeDifficultyColor(level, maxPet - 2) or QuestDifficultyColors["difficult"]
					end
					tooltip:AddDoubleLine("Battle Pets", maxPet > minPet and format("%d-%d", minPet, maxPet) or minPet, nil, nil, nil, color.r, color.g, color.b)
				end
			end

			local fish = data.fishingLevel
			if fish then
				local _, _, _, i = GetProfessions()
				if i then
					local _, _, level = GetProfessionInfo(i)
					local color = GetRelativeDifficultyColor(level or 1, fish)
					tooltip:AddDoubleLine("Fishing", fish, nil, nil, nil, color.r, color.g, color.b)
				end
			end
		end

		tooltip:AddLine(" ")
		tooltip:AddLine("Click to open the world map.")
	end,
})

WhereAmI:SetScript("OnUpdate", function(self, elapsed)
	counter = counter + elapsed
	if counter > 0.25 then
		zone = GetRealZoneText()

		subzone = GetSubZoneText()
		if subzone == "" then
			subzone = GetZoneText()
		end

		status = GetZonePVPInfo() or "neutral"

		local color = PVP_STATUS_COLORS[status] or PVP_STATUS_COLORS.unknown
		self.obj.text = string.format("|cff%02x%02x%02x%s|r", color[1] * 255, color[2] * 255, color[3] * 255, alias[subzone] or subzone)

		self:Hide()

		counter = 0
	end
end)

function WhereAmI:MINIMAP_PING(unit)
	local color = CUSTOM_CLASS_COLORS and CUSTOM_CLASS_COLORS[select(2, UnitClass(unit))] or RAID_CLASS_COLORS[select(2, UnitClass(unit))]
	UIErrorsFrame:AddMessage(string.format("Minimap ping by |cff%02x%02x%02x%s|r", color.r * 255, color.g * 255, color.b * 255, UnitName(unit)))
end

WhereAmI:SetScript("OnEvent", function(self, event, ...) return self[event] and self[event](self, ...) or self:Show() end)
WhereAmI:RegisterEvent("MINIMAP_PING")
WhereAmI:RegisterEvent("PLAYER_ENTERING_WORLD")
WhereAmI:RegisterEvent("ZONE_CHANGED")
WhereAmI:RegisterEvent("ZONE_CHANGED_INDOORS")
WhereAmI:RegisterEvent("ZONE_CHANGED_NEW_AREA")
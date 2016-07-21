--[[-------------------------------------------------------------------------
	Where Am I?
	Basic location plugin for DataBroker displays.
	Copyright (c) 2009-2016 Phanx. All rights reserved.
	https://github.com/Phanx/WhereAmI
---------------------------------------------------------------------------]]

local _, ns = ...

ns.zoneData = {
	[614] = { -- Abyssal Depths
		minLevel = 80,
		maxLevel = 83,
		fishingLevel = 575,
	},
	[772] = { -- Ahn'Qiraj: The Fallen Kingdom
		minLevel = 60,
		maxLevel = 60,
		minPetLevel = 16,
		maxPetLevel = 17,
	},
	[894] = { -- Ammen Vale
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[16] = { -- Arathi Highlands
		minLevel = 25,
		maxLevel = 30,
		minPetLevel = 7,
		maxPetLevel = 8,
		fishingLevel = 150,
	},
	[43] = { -- Ashenvale
		minLevel = 20,
		maxLevel = 25,
		minPetLevel = 4,
		maxPetLevel = 6,
		fishingLevel = 150,
	},
	[181] = { -- Azshara
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[464] = { -- Azuremyst Isle
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[17] = { -- Badlands
		minLevel = 44,
		maxLevel = 48,
		minPetLevel = 13,
		maxPetLevel = 14,
		fishingLevel = 300,
	},
	[475] = { -- Blade's Edge Mountains
		zoneType = "Horde",
		minLevel = 65,
		maxLevel = 68,
		minPetLevel = 18,
		maxPetLevel = 20,
	},
	[19] = { -- Blasted Lands
		minLevel = 54,
		maxLevel = 60,
		minPetLevel = 16,
		maxPetLevel = 17,
	},
	[476] = { -- Bloodmyst Isle
		zoneType = "Alliance",
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[486] = { -- Borean Tundra
		minLevel = 68,
		maxLevel = 72,
		minPetLevel = 20,
		maxPetLevel = 22,
		fishingLevel = 475,
	},
	[29] = { -- Burning Steppes
		minLevel = 49,
		maxLevel = 52,
		minPetLevel = 15,
		maxPetLevel = 16,
	},
	[890] = { -- Camp Narache
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 5,
	},
	[866] = { -- Coldridge Valley
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[510] = { -- Crystalsong Forest
		minLevel = 77,
		maxLevel = 80,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 500,
	},
	[504] = { -- Dalaran
		zoneType = "sanctuary",
		fishingLevel = 525,
	},
	[823] = { -- Darkmoon Island -- ID NEEDS CHECK
		zoneType = "sanctuary",
		fishingLevel = 75,
	},
	[42] = { -- Darkshore
		zoneType = "Alliance",
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[381] = { -- Darnassus
		zoneType = "Alliance",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[32] = { -- Deadwind Pass
		minLevel = 55,
		maxLevel = 56,
		minPetLevel = 17,
		maxPetLevel = 18,
		fishingLevel = 425,
	},
	[892] = { -- Deathknell
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 5,
	},
	[640] = { -- Deepholm
		minLevel = 82,
		maxLevel = 83,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 550,
	},
	[101] = { -- Desolace
		minLevel = 30,
		maxLevel = 35,
		minPetLevel = 7,
		maxPetLevel = 9,
		fishingLevel = 225,
	},
	[488] = { -- Dragonblight
		minLevel = 71,
		maxLevel = 75,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 475,
	},
	[858] = { -- Dread Wastes
		minLevel = 89,
		maxLevel = 90,
		minPetLevel = 24,
		maxPetLevel = 25,
		fishingLevel = 625,
	},
	[27] = { -- Dun Morogh
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[4] = { -- Durotar
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[34] = { -- Duskwood
		minLevel = 20,
		maxLevel = 25,
		minPetLevel = 5,
		maxPetLevel = 7,
		fishingLevel = 150,
	},
	[141] = { -- Dustwallow Marsh
		minLevel = 35,
		maxLevel = 40,
		minPetLevel = 12,
		maxPetLevel = 13,
		fishingLevel = 225,
	},
	[23] = { -- Eastern Plaguelands
		minLevel = 40,
		maxLevel = 45,
		minPetLevel = 12,
		maxPetLevel = 13,
		fishingLevel = 300,
	},
	[891] = { -- Echo Isles
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 5,
	},
	[30] = { -- Elwynn Forest
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[462] = { -- Eversong Woods
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[182] = { -- Felwood
		minLevel = 45,
		maxLevel = 50,
		minPetLevel = 14,
		maxPetLevel = 15,
		fishingLevel = 300,
	},
	[121] = { -- Feralas
		minLevel = 35,
		maxLevel = 40,
		minPetLevel = 11,
		maxPetLevel = 12,
		fishingLevel = 225,
	},
	[463] = { -- Ghostlands
		zoneType = "Horde",
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[545] = { -- Gilneas
		minLevel = 1,
		maxLevel = 12,
		fishingLevel = 25,
	},
	[611] = { -- Gilneas City
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[490] = { -- Grizzly Hills
		minLevel = 73,
		maxLevel = 75,
		minPetLevel = 21,
		maxPetLevel = 22,
		fishingLevel = 475,
	},
	[465] = { -- Hellfire Peninsula
		minLevel = 58,
		maxLevel = 63,
		minPetLevel = 17,
		maxPetLevel = 18,
		fishingLevel = 375,
	},
	[24] = { -- Hillsbrad Foothills
		minLevel = 20,
		maxLevel = 25,
		minPetLevel = 6,
		maxPetLevel = 7,
		fishingLevel = 150,
	},
	[491] = { -- Howling Fjord
		minLevel = 68,
		maxLevel = 72,
		minPetLevel = 20,
		maxPetLevel = 22,
		fishingLevel = 475,
	},
	[541] = { -- Hrothgar's Landing
		minLevel = 77,
		maxLevel = 80,
		minPetLevel = -1,
		maxPetLevel = -1,
		fishingLevel = 550,
	},
	[492] = { -- Icecrown
		minLevel = 77,
		maxLevel = 80,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 550,
	},
	[341] = { -- Ironforge
		zoneType = "Alliance",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[499] = { -- Isle of Quel'Danas
		minLevel = 70,
		maxLevel = 70,
		fishingLevel = 450,
	},
	[610] = { -- Kelp'thar Forest
		minLevel = 80,
		maxLevel = 83,
		fishingLevel = 575,
	},
	[605] = { -- Kezan
		minLevel = 1,
		maxLevel = 5,
		minPetLevel = -1,
		maxPetLevel = -1,
	},
	[857] = { -- Krasarang Wilds
		minLevel = 86,
		maxLevel = 87,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 700,
	},
	[809] = { -- Kun-Lai Summit
		minLevel = 87,
		maxLevel = 88,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 700,
	},
	[35] = { -- Loch Modan
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[241] = { -- Moonglade
		minLevel = 55,
		maxLevel = 60,
		minPetLevel = 15,
		maxPetLevel = 16,
		fishingLevel = 300,
	},
	[606] = { -- Mount Hyjal
		minLevel = 80,
		maxLevel = 82,
		minPetLevel = 22,
		maxPetLevel = 24,
		fishingLevel = 575,
	},
	[9] = { -- Mulgore
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[477] = { -- Nagrand
		minLevel = 64,
		maxLevel = 67,
		minPetLevel = 18,
		maxPetLevel = 19,
		fishingLevel = 475,
	},
	[485] = { -- Netherstorm
		minLevel = 67,
		maxLevel = 70,
		minPetLevel = 20,
		maxPetLevel = 21,
		fishingLevel = 475,
	},
	[895] = { -- New Tinkertown
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[11] = { -- Northern Barrens
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 4,
		fishingLevel = 75,
	},
	[37] = { -- Northern Stranglethorn
		minLevel = 25,
		maxLevel = 30,
		minPetLevel = 7,
		maxPetLevel = 9,
		fishingLevel = 150,
	},
	[864] = { -- Northshire
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[321] = { -- Orgrimmar
		zoneType = "Horde",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[36] = { -- Redridge Mountain
		minLevel = 15,
		maxLevel = 20,
		minPetLevel = 4,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[684] = { -- Ruins of Gilneas
		minLevel = 14,
		maxLevel = 20,
	},
	[685] = { -- Ruins of Gilneas City
		minLevel = 14,
		maxLevel = 20,
	},
	[28] = { -- Searing Gorge
		minLevel = 47,
		maxLevel = 51,
		minPetLevel = 13,
		maxPetLevel = 14,
		fishingLevel = 425,
	},
	[888] = { -- Shadowglen
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 5,
	},
	[473] = { -- Shadowmoon Valley
		minLevel = 67,
		maxLevel = 70,
		minPetLevel = 20,
		maxPetLevel = 21,
		fishingLevel = 375,
	},
	[481] = { -- Shattrath City,
		zoneType = "sanctuary",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
	},
	[615] = { -- Shimmering Expanse
		minLevel = 80,
		maxLevel = 83,
		fishingLevel = 575,
	},
	[493] = { -- Sholazar
		minLevel = 76,
		maxLevel = 78,
		minPetLevel = 21,
		maxPetLevel = 22,
		fishingLevel = 525,
	},
	[905] = { -- Shrine of Seven Stars
		zoneType = "Alliance",
		minLevel = 87,
		maxLevel = 88,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 525,
	},
	[903] = { -- Shrine of Two Moons
		zoneType = "Horde",
		minLevel = 87,
		maxLevel = 88,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 525,
	},
	[261] = { -- Silithus
		minLevel = 55,
		maxLevel = 60,
		minPetLevel = 16,
		maxPetLevel = 17,
		fishingLevel = 425,
	},
	[480] = { -- Silvermoon City
		zoneType = "Horde",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
	},
	[21] = { -- Silverpine Forest
		minLevel = 10,
		maxLevel = 20,
		minPetLevel = 3,
		maxPetLevel = 6,
		fishingLevel = 75,
	},
	[607] = { -- Southern Barrens
		minLevel = 30,
		maxLevel = 35,
		minPetLevel = 9,
		maxPetLevel = 10,
		fishingLevel = 225,
	},
	[81] = { -- Stonetalon Mountains
		minLevel = 25,
		maxLevel = 30,
		minPetLevel = 5,
		maxPetLevel = 7,
		fishingLevel = 150,
	},
	[301] = { -- Stormwind City
		zoneType = "Alliance",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[689] = { -- Stranglethorn Vale
		minLevel = 25,
		maxLevel = 35,
		minPetLevel = 7,
		maxPetLevel = 10,
	},
	[893] = { -- Sunstrider Isle
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 5,
	},
	[38] = { -- Swamp of Sorrows
		minLevel = 52,
		maxLevel = 54,
		minPetLevel = 14,
		maxPetLevel = 15,
		fishingLevel = 425,
	},
	[161] = { -- Tanaris
		minLevel = 45,
		maxLevel = 50,
		minPetLevel = 13,
		maxPetLevel = 14,
		fishingLevel = 300,
	},
	[41] = { -- Teldrassil
		zoneType = "Alliance",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[478] = { -- Terokkar Forest
		minLevel = 62,
		maxLevel = 65,
		minPetLevel = 18,
		maxPetLevel = 19,
		fishingLevel = 450,
	},
	[673] = { -- The Cape of Stranglethorn
		minLevel = 30,
		maxLevel = 35,
		minPetLevel = 9,
		maxPetLevel = 10,
		fishingLevel = 225,
	},
	[471] = { -- The Exodar
		zoneType = "Alliance",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
	},
	[26] = { -- The Hinterlands
		minLevel = 30,
		maxLevel = 35,
		minPetLevel = 11,
		maxPetLevel = 12,
		fishingLevel = 225,
	},
	[806] = { -- The Jade Forest
		minLevel = 85,
		maxLevel = 86,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 650,
	},
	[544] = { -- The Lost Isles
		minLevel = 5,
		maxLevel = 12,
		minPetLevel = -1,
		maxPetLevel = -1,
		fishingLevel = 25,
	},
	[495] = { -- The Storm Peaks
		minLevel = 77,
		maxLevel = 80,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 550,
	},
	[873] = { -- The Veiled Stair
		fishingLevel = 700,
	},
	[61] = { -- Thousand Needles
		minLevel = 40,
		maxLevel = 45,
		minPetLevel = 13,
		maxPetLevel = 14,
		fishingLevel = 300,
	},
	[362] = { -- Thunder Bluff
		zoneType = "Horde",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[20] = { -- Tirisfal Glades
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 10,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 25,
	},
	[708] = { -- Tol Barad
		zoneType = "combat",
		minLevel = 85,
		maxLevel = 85,
		minPetLevel = 23,
		maxPetLevel = 24,
		fishingLevel = 675,
	},
	[709] = { -- Tol Barad Peninsula
		zoneType = "combat",
		minLevel = 85,
		maxLevel = 85,
		minPetLevel = 23,
		maxPetLevel = 24,
		fishingLevel = 675,
	},
	[810] = { -- Townlong Steppes
		minLevel = 88,
		maxLevel = 89,
		minPetLevel = 24,
		maxPetLevel = 25,
		fishingLevel = 700,
	},
	[700] = { -- Twilight Highlands
		minLevel = 84,
		maxLevel = 85,
		minPetLevel = 23,
		maxPetLevel = 24,
		fishingLevel = 650,
	},
	[720] = { -- Uldum
		minLevel = 83,
		maxLevel = 84,
		minPetLevel = 23,
		maxPetLevel = 24,
		fishingLevel = 650,
	},
	[201] = { -- Un'Goro Crater
		minLevel = 50,
		maxLevel = 55,
		minPetLevel = 15,
		maxPetLevel = 16,
		fishingLevel = 375,
	},
	[382] = { -- Undercity,
		zoneType = "Horde",
		capital = true,
		minPetLevel = 1,
		maxPetLevel = 2,
		fishingLevel = 75,
	},
	[811] = { -- Vale of Eternal Blossoms
		minLevel = 90,
		maxLevel = 90,
		minPetLevel = 24,
		maxPetLevel = 25,
		fishingLevel = 825,
	},
	[807] = { -- Valley of the Four Winds
		minLevel = 86,
		maxLevel = 87,
		minPetLevel = 23,
		maxPetLevel = 25,
		fishingLevel = 700,
	},
	[889] = { -- Valley of Trials
		zoneType = "Horde",
		minLevel = 1,
		maxLevel = 5,
	},
	[613] = { -- Vashj'ir
		minLevel = 80,
		maxLevel = 83,
		fishingLevel = 575,
	},
	[22] = { -- Western Plaguelands
		minLevel = 35,
		maxLevel = 40,
		minPetLevel = 10,
		maxPetLevel = 11,
		fishingLevel = 225,
	},
	[39] = { -- Westfall
		minLevel = 10,
		maxLevel = 15,
		minPetLevel = 3,
		maxPetLevel = 4,
		fishingLevel = 75,
	},
	[40] = { -- Wetlands
		minLevel = 20,
		maxLevel = 25,
		minPetLevel = 6,
		maxPetLevel = 7,
		fishingLevel = 150,
	},
	[501] = { -- Wintergrasp
		zoneType = "combat",
		minLevel = 77,
		maxLevel = 80,
		minPetLevel = -1,
		maxPetLevel = -1,
		fishingLevel = 525,
	},
	[281] = { -- Winterspring
		minLevel = 50,
		maxLevel = 55,
		minPetLevel = 17,
		maxPetLevel = 18,
		fishingLevel = 425,
	},
	[467] = { -- Zangarmarsh
		minLevel = 60,
		maxLevel = 64,
		minPetLevel = 18,
		maxPetLevel = 19,
		fishingLevel = 400,
	},
	[496] = { -- Zul'Drak
		minLevel = 74,
		maxLevel = 76,
		minPetLevel = 22,
		maxPetLevel = 23,
		fishingLevel = 475,
	},
}

function ns.GetLevelRange(zoneID)
	local t = ns.zoneData[zoneID]
	return t and t.minLevel or 1, t and t.maxLevel or 90
end

function ns.GetZoneType(zoneID)
	local t = ns.zoneData[zoneID]
	if t then
		return t.zoneType or "Contested"
	end
end

function ns.GetBattlePetLevel(zoneID)
	local t = ns.zoneData[zoneID]
	if t then
		return t.minPetLevel, t.maxPetLevel
	end
end

function ns.GetFishingLevel(zoneID)
	local t = ns.zoneData[zoneID]
	if t then
		return t.fishingLevel
	end
end

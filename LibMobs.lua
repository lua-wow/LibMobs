local MAJOR, MINOR = "LibMobs", 10100
assert(LibStub, MAJOR .. " requires LibStub")

local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

-- Blizzard
local UnitGUID = _G.UnitGUID

-- reference: https://warcraft.wiki.gg/wiki/WOW_PROJECT_ID
-- LE_EXPANSION_LEVEL_CURRENT
local LE_EXPANSION_CLASSIC = _G.LE_EXPANSION_CLASSIC or 0                               -- Vanilla / Classic Era
local LE_EXPANSION_BURNING_CRUSADE = _G.LE_EXPANSION_BURNING_CRUSADE or 1               -- The Burning Crusade
local LE_EXPANSION_WRATH_OF_THE_LICH_KING = _G.LE_EXPANSION_WRATH_OF_THE_LICH_KING or 2 -- Wrath of the Lich King
local LE_EXPANSION_CATACLYSM = _G.LE_EXPANSION_CATACLYSM or 3                           -- Cataclysm
local LE_EXPANSION_MISTS_OF_PANDARIA = _G.LE_EXPANSION_MISTS_OF_PANDARIA or 4           -- Mists of Pandaria
local LE_EXPANSION_WARLORDS_OF_DRAENOR = _G.LE_EXPANSION_WARLORDS_OF_DRAENOR or 5       -- Warlords of Draenor
local LE_EXPANSION_LEGION = _G.LE_EXPANSION_LEGION or 6                                 -- Legion
local LE_EXPANSION_BATTLE_FOR_AZEROTH = _G.LE_EXPANSION_BATTLE_FOR_AZEROTH or 7         -- Battle for Azeroth
local LE_EXPANSION_SHADOWLANDS = _G.LE_EXPANSION_SHADOWLANDS or 8                       -- Shadowlands
local LE_EXPANSION_DRAGONFLIGHT = _G.LE_EXPANSION_DRAGONFLIGHT or 9                     -- Dragonflight
local LE_EXPANSION_WAR_WITHIN = _G.LE_EXPANSION_WAR_WITHIN or 10                        -- The War WithIn

local isRetail = WOW_PROJECT_ID == WOW_PROJECT_MAINLINE
local isClassic = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC
local isTBC = WOW_PROJECT_ID == WOW_PROJECT_BURNING_CRUSADE_CLASSIC
local isWrath = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC
local isCata = WOW_PROJECT_ID == WOW_PROJECT_CATACLYSM_CLASSIC
local isMoP = WOW_PROJECT_ID == WOW_PROJECT_MISTS_CLASSIC

-- Mine
function lib:print(...)
    print("|cffffa1a1" .. MAJOR .. ":|r", ...)
end

local CreatureTypes = {
    CASTER = "caster",
    FRONTAL = "frontal",
    IMPORTANT = "important",
    NONE = "none"
}

lib.units = lib.units or {}

-- https://warcraft.wiki.gg/wiki/GUID#Creature
--[[ Method: lib:ParseGUID(guid)
## Parameters
* guid - unit GUID return from UnitGUID, e.g: "Creature-0-1465-0-2105-448-000043F59F"

## Returns
* info              - the components of GUID
    * unitType      - the type of the entity. (string)
    * serverID      - the ID of the server (realm) where the entity was created. (number)
    * instanceID    - the ID of the instance where the entity exists. (number)
    * zoneUID       - the ID of the zone or map where the entity is located. (number)
    * npcID         - the entry ID of the NPC in the game database. (number)
    * spawnUID      - a unique identifier for the specific instance or spawn of this NPC. Differentiates between multiple spawns of the same NPC type. (string)
]]
function lib:ParseCreatureGUID(guid)
    if not guid then
        return nil
    end

    local unitType, _, serverID, instanceID, zoneUID, npcID, spawnUID = string.split("-", guid)

    -- validate the number of parts
    if not unitType or not serverID or not instanceID or not zoneUID or not npcID or not spawnUID then
        return nil -- invalid GUID type
    end

    -- check for valid entity types
    if unitType ~= "Creature" and unitType ~= "Vehicle" and unitType ~= "Pet" then
        return nil -- unsupported type
    end

    -- return the parsed GUID components
    return {
        guid = guid,
        unitType = unitType,
        serverID = tonumber(serverID),
        instanceID = tonumber(instanceID),
        zoneUID = tonumber(zoneUID),
        npcID = tonumber(npcID),
        spawnUID = spawnUID
    }
end

--[[ Method: lib:GetNPCID(guid)
## Parameters
* unit - the unit for which you want to capture the npcID.

## Returns
* npcID - the entry ID of the NPC in the game database. (number)
]]
function lib:GetNPCID(unit)
    local guid = UnitGUID(unit)
    local info = self:ParseCreatureGUID(guid)
    if not info then
        return nil
    end
    return info.npcID
end

function lib:GetInstanceMobs(instanceID)
    return lib.units[instanceID or "none"]
end

function lib:GetCreature(instanceID, npcID)
    local data = self:GetInstanceMobs(instanceID)
    if data then
        return data[npcID or "none"]
    end
    return nil
end

function lib:UnitRole(unit)
    local guid = UnitGUID(unit)
    if guid then
        local guidInfo = self:ParseCreatureGUID(guid)
        if guidInfo then
            local mobInfo = self:GetCreature(guidInfo.instanceID, guidInfo.npcID)
            if mobInfo then
                return mobInfo.role
            end
        end
    end
    return nil
end

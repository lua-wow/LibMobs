# LibMobs

Worlf of Warcraft library of important emenies from instances.

## Usage

```lua
local LibMobs = LibStub("LibMobs")
assert(LibMobs, "Addon requires LibMobs")

local frame = CreateFrame("Frame")
frame:RegisterEvent("PLAYER_TARGET_CHANGED")
frame:SetScript("OnEvent", function (self, event, ...)
    if event == "PLAYER_TARGET_CHANGED" then
        local unit = "target"
        local guid = UnitGUID(guid)
        local guidInfo = LibMobs:ParseCreatureGUID(guid)
        if guidInfo then
            print(guidInfo.instanceId, guidInfo.zoneID)
        end
    end
end)
```

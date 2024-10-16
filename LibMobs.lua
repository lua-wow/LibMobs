local MAJOR, MINOR = "LibMobs", 1
assert(LibStub, MAJOR .. " requires LibStub")
local lib = LibStub:NewLibrary(MAJOR, MINOR)
if not lib then return end

-- Blizzard
local UnitGUID = _G.UnitGUID

-- reference: https://wowpedia.fandom.com/wiki/WOW_PROJECT_ID
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

local function CreatePriority(arg1, arg2, arg3)
    local priority, role, mark = 0, nil, false
    
    if type(arg1) == "number" then
        priority = arg1
    elseif type(arg1) == "boolean" then
        mark = arg1
    end

    if type(arg2) == "string" then
        role = arg2
    end

    if type(arg3) == "boolean" then
        mark = arg3
    end

    return { priority = priority, role = role, mark = mark }
end

lib.mobs = {
    --------------------------------------------------
    -- Cataclysm
    --------------------------------------------------
    -- Grim Batol
    [670] = {
        [40167]  = CreatePriority(8, "caster", true), -- Twilight Beguiler
        [224219] = CreatePriority(7, "caster", true), -- Twilight Earthcaller
        [224271] = CreatePriority(7, "caster", true), -- Twilight Warlock
        [224249] = CreatePriority(6, "frontal", true), -- Twilight Lavabender
        [224240] = CreatePriority(5, "frontal", true), -- Twilight Flamerender
        [39392]  = CreatePriority(5, "focus", true), -- Faceless Corruptor
        [224276] = CreatePriority(5, "focus", true), -- Twilight Enforcer
        [39388]  = CreatePriority(0), -- Mutated Hatchling (Boss)
        [39625]  = CreatePriority(0), -- General Umbriss (Boss)
        [40166]  = CreatePriority(0), -- Molten Giant
        [40177]  = CreatePriority(0), -- Forgemaster Throngus (Boss)
        [40319]  = CreatePriority(0), -- Drahga Shadowburner (Boss)
        [40320]  = CreatePriority(0), -- Valiona (Boss)
        [40357]  = CreatePriority(0), -- Invoked Shadowflame Spirit
        [40484]  = CreatePriority(0), -- Erudax (Boss)
        [224152] = CreatePriority(0), -- Twilight Brute
        [224221] = CreatePriority(0), -- Twilight Overseer
        [224609] = CreatePriority(0), -- Twilight Destroyer
        [224853] = CreatePriority(0), -- Mutated Hatchling
    },

    --------------------------------------------------
    -- Battle for Azeroth
    --------------------------------------------------
    -- Siege of Boralus
    [1822] = {
        [128969] = CreatePriority(5, "caster", true), -- Ashvane Commander
        [129367] = CreatePriority(5, "caster", true), -- Bilge Rat Tempest
        [129370] = CreatePriority(5, "caster", true), -- Irontide Waveshaper
        [135241] = CreatePriority(5, "caster", true), -- Bilge Rat Pillager
        [144071] = CreatePriority(5, "caster", true), -- Irontide Waveshaper
        [137516] = CreatePriority(4, "focus", true), -- Ashvane Invader (Poison)
        [129374] = CreatePriority(3, "frontal", true), -- Scrimshaw Enforcer
        [129879] = CreatePriority(3, "frontal", true), -- Irontide Cleaver
        [129996] = CreatePriority(3, "frontal", true), -- Irontide Cleaver
        [136549] = CreatePriority(3, "frontal", true), -- Ashvane Cannoneer (Boss)
        [138465] = CreatePriority(3, "frontal", true), -- Ashvane Cannoneer
        [128650] = CreatePriority(0), -- Chopper Redhook (Boss)
        [128651] = CreatePriority(0), -- Hadal Darkfathom (Boss)
        [128652] = CreatePriority(0), -- Viqgoth (Boss)
        [128967] = CreatePriority(0), -- Ashvane Sniper
        [129208] = CreatePriority(0), -- Dread Captain Lockwood (Boss)
        [129366] = CreatePriority(0), -- Bilge Rat Buccaneer
        [129369] = CreatePriority(0), -- Irontide Raider
        [129371] = CreatePriority(0), -- Riptide Shredder
        [129372] = CreatePriority(0), -- Blacktar Bomber
        [129640] = CreatePriority(0), -- Snarling Dockhound
        [129928] = CreatePriority(0), -- Irontide Powdershot
        [135245] = CreatePriority(0), -- Bilge Rat Demolisher
        [133990] = CreatePriority(0), -- Scrimshaw Gutter
        [135258] = CreatePriority(0), -- Irontide Curseblade
        [135263] = CreatePriority(0), -- Ashvane Spotter
        [136483] = CreatePriority(0), -- Ashvane Deckhand (Boss)
        [137405] = CreatePriority(0), -- Gripping Terror (Boss)
        [137511] = CreatePriority(0), -- Bilge Rat Cutthroat
        [137517] = CreatePriority(0), -- Ashvane Destroyer
        [137521] = CreatePriority(0), -- Irontide Powdershot
        [137614] = CreatePriority(0), -- Demolishing Terror (Boss)
        [138247] = CreatePriority(0), -- Irontide Curseblade
        [138254] = CreatePriority(0), -- Irontide Powdershot
        [138255] = CreatePriority(0), -- Ashvane Spotter
        [138464] = CreatePriority(0), -- Ashvane Deckhand
    },

    --------------------------------------------------
    -- Shadowlands
    --------------------------------------------------
    -- The Necrotic Wake
    [2286] = {
        [163618] = CreatePriority(9, "caster", true), -- Zolramus Necromancer
        [165222] = CreatePriority(9, "caster", true), -- Zolramus Bonemender (Final Bargain - Heal)
        [165824] = CreatePriority(9, "caster", true), -- Nar'zudah
        [163128] = CreatePriority(8, "caster", true), -- Zolramus Sorcerer (Shadow Well)
        [165872] = CreatePriority(8, "caster", true), -- Flesh Crafter
        [166302] = CreatePriority(8, "caster", true), -- Corpse Harvester
        [173016] = CreatePriority(8, "caster", true), -- Corpse Collector
        [163126] = CreatePriority(0, "caster", true), -- Brittlebone Mage
        [165919] = CreatePriority(7, "focus", true), -- Skeletal Marauder (Fear)
        [165137] = CreatePriority(7, "focus", true), -- Zolramus Gatekeeper
        [163621] = CreatePriority(6, "frontal", true), -- Goregrind
        [163157] = CreatePriority(1, nil, true), -- Amarth (Boss)
        [173044] = CreatePriority(1, nil, true), -- Stitching Assistant
        [162693] = CreatePriority(1, nil, true), -- Nalthor the Rimebinder (Boss)
        [162689] = CreatePriority(0), -- Surgeon Stitchflesh (Boss)
        [162729] = CreatePriority(0), -- Patchwerk Soldier
        [165138] = CreatePriority(0), -- Blight Bag
        [163121] = CreatePriority(0), -- Stitched Vanguard
        [162691] = CreatePriority(0), -- Blightbone (Boss)
        [163619] = CreatePriority(0), -- Zolramus Bonecarver
        [163122] = CreatePriority(0), -- Brittlebone Warrior
        [165197] = CreatePriority(0), -- Skeletal Monstrosity
        [166079] = CreatePriority(0), -- Brittlebone Crossbowman
        [171500] = CreatePriority(0), -- Shuffling Corpse
        [172981] = CreatePriority(0), -- Kyrian Stitchwerk
        [166264] = CreatePriority(0), -- Spare Parts
        [165911] = CreatePriority(0), -- Loyal Creation
        [167731] = CreatePriority(0), -- Separation Assistant
        [163622] = CreatePriority(0), -- Goregrind Bits
        [163623] = CreatePriority(0), -- Rotspew Leftovers
        [163620] = CreatePriority(0), -- Rotspew
        [164578] = CreatePriority(0), -- Stitchflesh's Creation
    },
    -- Mists of Tirna Scithe
    [2290] = {
        [166275] = CreatePriority(9, "caster", true), -- Mistveil Shaper (Bramblethorn Coat - Shield)
        [164501] = CreatePriority(8, "caster", true), -- Mistcaller (Boss)
        [164567] = CreatePriority(8, "caster", true), -- Ingra Maloch (Boss)
        [164920] = CreatePriority(8, "caster", true), -- Drust Soulcleaver
        [164921] = CreatePriority(8, "caster", true), -- Drust Harvester
        [166299] = CreatePriority(8, "caster", true), -- Mistveil Tender (Norish the Forest - Heal)
        [167111] = CreatePriority(8, "caster", true), -- Spinemaw Staghorn
        [164929] = CreatePriority(7, "frontal", true), -- Tirnenn Villager
        [163058] = CreatePriority(0), -- Mistveil Defender
        [164517] = CreatePriority(0), -- Tred'ova (Boss)
        [164804] = CreatePriority(0), -- Droman Oulfarran (Boss)
        [164926] = CreatePriority(0), -- Drust Boughbreaker
        [165111] = CreatePriority(0), -- Drust Spiteclaw
        [166276] = CreatePriority(0), -- Mistveil Guardian
        [166301] = CreatePriority(0), -- Mistveil Stalker
        [166304] = CreatePriority(0), -- Mistveil Stinger
        [166304] = CreatePriority(0), -- Mistveil Stinger
        [167113] = CreatePriority(0), -- Spinemaw Acidgullet
        [167116] = CreatePriority(0), -- Spinemaw Reaver
        [167117] = CreatePriority(0), -- Spinemaw Larva
        [172312] = CreatePriority(0), -- Spinemaw Gorger
        [173655] = CreatePriority(0), -- Mistveil Matriarch
        [173714] = CreatePriority(0), -- Mistveil Nightblossom
        [173720] = CreatePriority(0), -- Mistveil Gorgegullet
    },

    --------------------------------------------------
    -- Dragonflight
    --------------------------------------------------
    -- The Azure Vault
    [2515] = {},
    -- The Nokhud Offensive
    [2516] = {},
    -- Neltharus
    [2519] = {},
    -- Brackenhide Hollow
    [2520] = {},
    -- Ruby Life Pools
    [2521] = {},
    -- Algeth'ar Academy
    [2526] = {
        [196044] = CreatePriority(8, "caster", true), -- Unruly Textbook
        [196045] = CreatePriority(8, "caster", true), -- Corrupted Manafiend
        [196202] = CreatePriority(8, "caster", true), -- Spectral Invoker
        [196576] = CreatePriority(7, "focus", true), -- Spellbound Scepter
        [192333] = CreatePriority(0, "frontal", true), -- Alpha Eagle
        [196671] = CreatePriority(0, "frontal", true), -- Arcane Ravager
    },
    -- Halls of Infusion
    [2527] = {},
    -- Uldaman: Legacy of Tyr
    [2451] = {},

    --------------------------------------------------
    -- The War Within
    --------------------------------------------------
    -- The Rookery
    [2648] = {
        [207198] = CreatePriority(8, "caster", true), -- Cursed Thunderer
        [207199] = CreatePriority(8, "caster", true), -- Cursed Rooktender
        [207202] = CreatePriority(8, "caster", true), -- Void Fragment
        [212793] = CreatePriority(8, "caster", true), -- Void Ascendant
        [214421] = CreatePriority(8, "caster", true), -- Coalescing Void Diffuser
        [212786] = CreatePriority(0, "focus", true), -- Voidrider
        [214439] = CreatePriority(0, "focus", true), -- Corrupted Oracle
        [209801] = CreatePriority(7, "frontal"), -- Quartermaster Koratite
        [207186] = CreatePriority(7, "frontal"), -- Unruly Stormrook
        [214419] = CreatePriority(7, "frontal"), -- Void Cursed Crusher
    },
    -- Priory of the Sacred Frame
    [2649] = {
        [206697] = CreatePriority(9, "caster", true), -- Devout Priest
        [206698] = CreatePriority(8, "caster", true), -- Fanatical Conjurer
        [211289] = CreatePriority(8, "caster", true), -- Taener Duelmal
        [212827] = CreatePriority(8, "caster", true), -- High Priest Aemya
        [221760] = CreatePriority(8, "caster", true), -- Risen Mage
        [206704] = CreatePriority(7, "focus", true), -- Ardente Paladin
        [206710] = CreatePriority(7, "focus", true), -- Lightspawn
        [211290] = CreatePriority(7, "focus", true), -- Elaena Emberlanz
        [211291] = CreatePriority(7, "focus", true), -- Sergeant Shaynemail
        [212826] = CreatePriority(7, "focus", true), -- Guard Captain Suleyman
        [212831] = CreatePriority(7, "focus", true), -- Forge Master Damian
        [217658] = CreatePriority(7, "focus", true), -- Sir Braunpyke
        [207949] = CreatePriority(0), -- Zaelous Templar
        [212835] = CreatePriority(0), -- Risen Footman
        [206705] = CreatePriority(0), -- Arathi Footman (Shield)
        [206696] = CreatePriority(0), -- Arathi Knight
        [206694] = CreatePriority(0), -- Fervent Sharpshooter

        -- testing

        [206705] = CreatePriority(0, nil, true), -- Arathi Footman (Shield)
    },
    -- Darkflame Cleft
    [2651] = {
        [210812] = CreatePriority(8, "caster", true), -- Royal Wicklighter
        [210818] = CreatePriority(8, "caster", true), -- Lowly Moleherd
        [220815] = CreatePriority(8, "caster", true), -- Blazing Fiend
        [208450] = CreatePriority(7, "focus", true), -- Wandering Candle
        [208456] = CreatePriority(7, "focus", true), -- Shuffling Horror
        [212411] = CreatePriority(7, "focus", true), -- Torchsnarl
        [212412] = CreatePriority(0, "frontal"), -- Sootsnout
        -- [211121] = CreatePriority(0, "frontal"), -- Rank Overseer
        -- [213913] = CreatePriority(0, "caster"), -- Kobold Flametender
    },
    -- The Stonevault
    [2652] = {
        [212453] = CreatePriority(9, "focus", true), -- Ghastly Voidsoul (Howling Fear)
        [214287] = CreatePriority(9, "focus", true), -- Earth Burst Totem
        [212389] = CreatePriority(8, "caster", true), -- Cursedheart Invader
        [212403] = CreatePriority(8, "caster", true), -- Cursedheart Invader
        [214066] = CreatePriority(7, "caster", true), -- Cursedforge Stoneshaper
        [213338] = CreatePriority(6, "caster", true), -- Forgebound Mender
        [214350] = CreatePriority(6, "caster", true), -- Turned Speaker (Silence)
        [221979] = CreatePriority(6, "caster", true), -- Void Bound Howler
        [224962] = CreatePriority(6, "caster", true), -- Cursedforge Mender
        [213217] = CreatePriority(6, "caster", true), -- Speaker Brokk (Boss)
        [210109] = CreatePriority(0, "frontal"), -- Earth Infused Golem
        [213343] = CreatePriority(0, "frontal"), -- Forge Loader
        [214264] = CreatePriority(0, "frontal"), -- Cursedforge Honor Guard
        [222923] = CreatePriority(0), -- Repurposed Loaderbot
        [212765] = CreatePriority(0), -- Void Bound Despoiler
        [212764] = CreatePriority(0), -- Engine Speaker
        [212400] = CreatePriority(0), -- Void Touched Elemental
        [212405] = CreatePriority(0), -- Aspiring Forgehand
        [213954] = CreatePriority(0), -- Rock Smasher
        [210108] = CreatePriority(0), -- E.D.N.A (Boss)
        [210156] = CreatePriority(0), -- Skarmorak (Boss)
        [213216] = CreatePriority(0), -- Speaker Dorlita (Boss)
        [213119] = CreatePriority(0), -- Void Speaker Eirich (Boss)
        [214049] = CreatePriority(0), -- Vent Stalker (Boss)
        [213694] = CreatePriority(0), -- Scrap Block (Boss)
        [214443] = CreatePriority(0), -- Crystal Shard (Boss)
    },
    -- Ara-Kara, City of Echoes
    [2660] = {
        [217531] = CreatePriority(9, "caster", true), -- Ixin (Horrifying Shrill - Fear)
        [216293] = CreatePriority(8, "caster", true), -- Trilling Attendant
        [216364] = CreatePriority(8, "caster", true), -- Blood Overseer
        [217533] = CreatePriority(8, "caster", true), -- Atik
        [218324] = CreatePriority(8, "caster", true), -- Nakt
        [223253] = CreatePriority(8, "caster", true), -- Bloodstained Webmage
        [216338] = CreatePriority(7, "frontal", true), -- Hulking Bloodguard
        [217039] = CreatePriority(7, "frontal", true), -- Nerubian Hauler
        [216340] = CreatePriority(9, "focus", true), -- Sentry Stagshell
        [215968] = CreatePriority(0, "caster"), -- Black Blood
        [215405] = CreatePriority(0), -- Anubzekt (Boss)
        [216336] = CreatePriority(0), -- Starved Crawler
        [216341] = CreatePriority(0), -- Jabbing Flyer
        [214840] = CreatePriority(0), -- Engorged Crawler
        [216337] = CreatePriority(0), -- Bloodworker
        [216333] = CreatePriority(0), -- Bloodstained Assistant
        [216365] = CreatePriority(0), -- Winged Carrier
        [216363] = CreatePriority(0), -- Reinforced Drone
        [213179] = CreatePriority(0), -- Avanoxx (Boss)
        [220599] = CreatePriority(0), -- Bloodstained Webmage (Boss)
        [215407] = CreatePriority(0), -- Kikatal The Harvester (Boss)
    },
    -- Cinderbrew Meadery
    [2661] = {
        [218671] = CreatePriority(0, "caster"), -- Venture Co. Pyromaniac
        [214673] = CreatePriority(0, "caster"), -- Flavor Scientist
        [222964] = CreatePriority(0, "caster"), -- Flavor Scientist
        [220141] = CreatePriority(0, "caster"), -- Royal Jelly Purveyor
        [223423] = CreatePriority(0, "frontal"), -- Careless Hopgoblin
        [210264] = CreatePriority(0, "frontal"), -- Bee Wrangler
        [220946] = CreatePriority(0, "frontal"), -- Venture Co. Honey Harvester
        [210269] = CreatePriority(0, "frontal"), -- Hired Muscle
        [214697] = CreatePriority(0, "focus"), -- Chef Chewie
        [220368] = CreatePriority(0, "focus"), -- Failed Batch
    },
    -- The Dawnbreaker
    [2662] = {
        [214761] = CreatePriority(8, "caster", true), -- Nightfall Ritualist
        [213892] = CreatePriority(7, "caster", true), -- Nightfall Shadowmage
        [214762] = CreatePriority(7, "caster", true), -- Nightfall Commander
        [210966] = CreatePriority(7, "caster", true), -- Sureki Webmage
        [213893] = CreatePriority(7, "caster", true), -- Nightfall Darkcaster
        [225605] = CreatePriority(7, "caster", true), -- Nightfall Darkcaster
        [213905] = CreatePriority(7, "caster", true), -- Animated Darkness
        [213932] = CreatePriority(7, "caster", true), -- Sureki Militant
        [213934] = CreatePriority(9, "frontal", true), -- Nightfall Tactician
        [213885] = CreatePriority(0, "focus", true), -- Nightfall Dark Architect
        [211087] = CreatePriority(0), -- Speaker Shadowcrown (Boss)
        [211089] = CreatePriority(0), -- Anubikkaj (Boss)
        [213937] = CreatePriority(0), -- Rashanan (Boss)
        [213894] = CreatePriority(0), -- Nightfall Curseblade
        [213895] = CreatePriority(0), -- Nightfall Shadowalker
        [211341] = CreatePriority(0), -- Manifested Shadow
        [211261] = CreatePriority(0), -- Ascendant Viscoxria
        [211263] = CreatePriority(0), -- Deathscreamer Ikentak
        [211262] = CreatePriority(0), -- Ixkreten The Unbreakable
    },
    -- City of Threads
    [2669] = {
        [220195] = CreatePriority(8, "caster", true), -- Sureki Silkbinder
        [220196] = CreatePriority(8, "caster", true), -- Herald Of Ansurek
        [219984] = CreatePriority(8, "caster", true), -- Xephitik
        [223844] = CreatePriority(8, "caster", true), -- Covert Webmancer
        [216339] = CreatePriority(8, "caster", true), -- Sureki Unnaturaler
        [221102] = CreatePriority(8, "caster", true), -- Elder Shadeweaver
        [224732] = CreatePriority(8, "caster", true), -- Covert Webmancer
        [216326] = CreatePriority(8, "caster", true), -- Ascended Neophyte
        [220197] = CreatePriority(0, "frontal"), -- Royal Swarmguard
        [220730] = CreatePriority(0, "frontal"), -- Royal Venomshell
        [221103] = CreatePriority(0, "frontal"), -- Hulking Warshell
        [219983] = CreatePriority(5, "focus", true), -- Eye of the Queen
        [220193] = CreatePriority(0), -- Sureki Venomblade
        [220003] = CreatePriority(0), -- Eye Of The Queen
        [223182] = CreatePriority(0), -- Web Marauder
        [223181] = CreatePriority(0), -- Agile Pursuer
        [216329] = CreatePriority(0), -- Congealed Droplet
        [220199] = CreatePriority(0), -- Battle Scarab
        [223357] = CreatePriority(0), -- Sureki Conscript
        [216342] = CreatePriority(0), -- Assistant Unnaturaler
        [216328] = CreatePriority(0), -- Unstable Test Subject
        [216619] = CreatePriority(0), -- Orator Krixvizk (Boss)
        [216648] = CreatePriority(0), -- Nx (Boss)
        [216649] = CreatePriority(0), -- Vx (Boss)
        [216658] = CreatePriority(0), -- Izo The Grand Splicer (Boss)
        [216320] = CreatePriority(0), -- The Coaglamation (Boss)
        [219198] = CreatePriority(0), -- Ravenous Scarab
        [224731] = CreatePriority(0), -- Web Marauder
        [228361] = CreatePriority(0), -- Agile Pursuer
        [220423] = CreatePriority(0), -- Retired Lord Vul'azak
    }
}

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
    return lib.mobs[instanceID or "none"]
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

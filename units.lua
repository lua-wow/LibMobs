local lib = LibStub("LibMobs")
if not lib or lib._unitsLoaded then return end
lib._unitsLoaded = true

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

lib.units = {
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
    -- Mists of Pandaria
    --------------------------------------------------
    -- Temple of the Jade Serpent
    [960 ] = {},
    -- Stormstout Brewery
    [961 ] = {},
    -- Gate of the Setting Sun
    [962 ] = {},
    -- Shado-Pan Monastery
    [959 ] = {},
    -- Siege of Niuzao Temple
    [1011] = {
        [61929] = CreatePriority(0, "caster"), -- Sikthik Amber Weaver
        [67093] = CreatePriority(0, "caster"), -- Sikthik Battle Mender
    },
    -- Mogu'shan Palace
    [994 ] = {},
    -- Scholomance
    [1007] = {},
    -- Scarlet Halls
    [1001] = {},
    -- Scarlet Monastery
    [1004] = {},

    --------------------------------------------------
    -- Battle for Azeroth
    --------------------------------------------------
    -- The MOTHERLODE!!
    [1594] = {
        [130485] = CreatePriority(0, "focus"), -- Mechanized Peacekeeper
        [130488] = CreatePriority(0, "focus"), -- Mech Jockey
        [133430] = CreatePriority(0, "focus"), -- Venture Co. Mastermind
        [134232] = CreatePriority(0, "focus"), -- Hired Assassin
        [136643] = CreatePriority(0, "focus"), -- Azerite Extractor
        [130635] = CreatePriority(0, "caster"), -- Stonefury
        [130661] = CreatePriority(0, "caster"), -- Venture Co. Earthshaper
        [133432] = CreatePriority(0, "caster"), -- Venture Co. Alchemist
        [136470] = CreatePriority(0, "caster"), -- Refreshment Vendor
        [133482] = CreatePriority(0, "frontal"), -- Crawler Mine
        [134012] = CreatePriority(0, "frontal"), -- Taskmaster Askari
        [129802] = CreatePriority(0), -- Earthrager
        [130435] = CreatePriority(0), -- Addled Thu
        [130436] = CreatePriority(0), -- Off-Duty Laborer
        [130437] = CreatePriority(0), -- Mine Rat
        [130653] = CreatePriority(0), -- Wanton Sapper
        [132056] = CreatePriority(0), -- Venture Co. Skyscorcher
        [133463] = CreatePriority(0), -- Venture Co. War Machine
        [133963] = CreatePriority(0), -- Test Subject
        [134005] = CreatePriority(0), -- Shalebiter
        [136934] = CreatePriority(0), -- Weapons Tester
        [137029] = CreatePriority(0), -- Ordnance Specialist
        [129214] = CreatePriority(0, "boss"), -- Coin-Operated Crowd Pummeler
        [129227] = CreatePriority(0, "boss"), -- Azerokk
        [129231] = CreatePriority(0, "boss"), -- Rixxa Fluxflame
        [129232] = CreatePriority(0, "boss"), -- Mogul Razdunk
    },
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
    -- Operation: Mechagon
    [2097] = {
        [144293] = CreatePriority(0, "focus"), -- Waste Processing Unit
        [236033] = CreatePriority(0, "focus"), -- Metal Gunk
        [151649] = CreatePriority(0, "focus"), -- Defense Bot Mk I
        [144298] = CreatePriority(0, "focus"), -- Defense Bot Mk III
        [144299] = CreatePriority(0, "focus"), -- Workshop Defender
        [151657] = CreatePriority(0, "caster"), -- Bomb Tonk
        [144295] = CreatePriority(0, "caster"), -- Mechagon Mechanic
        [151773] = CreatePriority(0), -- Junkyard D.O.G.
        [144303] = CreatePriority(0), -- G.U.A.R.D.
        [144294] = CreatePriority(0), -- Mechagon Tinkerer
        [144296] = CreatePriority(0), -- Spider
        [144246] = CreatePriority(0, "boss"), -- K.U.-J.0
        [144248] = CreatePriority(0, "boss"), -- Head Machinist Sparkflux
        [150396] = CreatePriority(0, "boss"), -- Aerial Unit R-21/X
        [144249] = CreatePriority(0, "boss"), -- Omega Buster
        [145185] = CreatePriority(0, "boss"), -- Gnomercy 4.U.
        [151476] = CreatePriority(0, "boss"), -- Blastatron X-80
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
    -- Theater of Pain
    [2293] = {
        [174197] = CreatePriority(0, "caster"), -- Battlefield Ritualist
        [164506] = CreatePriority(0, "caster"), -- Ancient Captain
        [160495] = CreatePriority(0, "caster"), -- Maniacal Soulbinder
        [170882] = CreatePriority(0, "caster"), -- Bone Magus
        [174210] = CreatePriority(0, "caster"), -- Blighted Sludge-Spewer
        [170690] = CreatePriority(0, "caster"), -- Diseased Horror
        [169893] = CreatePriority(0, "frontal"), -- Nefarious Darkspeaker
        [163086] = CreatePriority(0, "frontal"), -- Rancid Gasbag
        [164463] = CreatePriority(0, "boss"), -- Paceran the Virulent
        [162329] = CreatePriority(0, "boss"), -- Xav the Unfallen
        [162309] = CreatePriority(0, "boss"), -- Kul'Tharok
        [165946] = CreatePriority(0, "boss"), -- Mordretha, the Endless Empress
    },
    -- Halls of Atonement
    [2294] = {
        [164562] = CreatePriority(0, "focus"), -- Depraved Houndmaster
        [164557] = CreatePriority(0, "focus"), -- Shard of Halkias
        [165529] = CreatePriority(0, "caster"), -- Depraved Collector
        [165414] = CreatePriority(0, "caster"), -- Depraved Obliterator
        [164363] = CreatePriority(0, "caster"), -- Undying Stonefiend
        [167876] = CreatePriority(0, "caster"), -- Inquisitor Sigar
        [167607] = CreatePriority(0, "frontal"), -- Stoneborn Slasher
        [165515] = CreatePriority(), -- Depraved Darkblade
        [164563] = CreatePriority(), -- Vicious Gargon
        [165415] = CreatePriority(), -- Toiling Groundskeeper
        [167612] = CreatePriority(), -- Stoneborn Reaver
        [167611] = CreatePriority(), -- Stoneborn Eviscerator
        [167610] = CreatePriority(), -- Stonefiend Anklebiter
        [164558] = CreatePriority(0, "boss"), -- Halkias, the Sin-Stained Goliath (Boss)
        [164185] = CreatePriority(0, "boss"), -- Echelon (Boss)
        [164560] = CreatePriority(0, "boss"), -- High Adjudicator Aleez (Boss)
        [164218] = CreatePriority(0, "boss"), -- Lord Chamberlain (Boss)
    },
    -- Tazavesh: Streets of Wonder
    [2441] = {
        -- Streets of Wonder
        [176394] = CreatePriority(), -- P.O.S.T. Worker
        [176395] = CreatePriority(0, "caster"), -- Overloaded Mailemental
        [176396] = CreatePriority(), -- Defective Sorter
        [176565] = CreatePriority(0, "caster"), -- Disruptive Patron
        [177807] = CreatePriority(), -- Customs Security
        [177808] = CreatePriority(), -- Armored Overseer
        [177816] = CreatePriority(), -- Interrogation Specialist
        [177817] = CreatePriority(0, "caster"), -- Support Office
        [178392] = CreatePriority(0, "focus"), -- Gatewarden Zo'mazz
        [178394] = CreatePriority(), -- Cartel Lackey
        [179269] = CreatePriority(0, "caster"), -- Oasis Security
        [179334] = CreatePriority(0, "caster"), -- Portalmancer Zo'honn
        [179821] = CreatePriority(0, "focus"), -- Commander Zo'far
        [179837] = CreatePriority(0, "focus"), -- Tracker Zo'korss
        [179840] = CreatePriority(), -- Market Peacekeeper
        [179841] = CreatePriority(0, "caster"), -- Veteran Sparkcaster
        [179893] = CreatePriority(), -- Cartel Skulker
        [180091] = CreatePriority(0, "frontal"), -- Ancient Core Hound
        [180335] = CreatePriority(), -- Cartel Smuggler
        [180336] = CreatePriority(0, "caster"), -- Cartel Wiseguy
        [180348] = CreatePriority(), -- Cartel Muscle
        [180567] = CreatePriority(), -- Frenzied Nightclaw
        [246285] = CreatePriority(0, "focus"), -- Bazaar Overseer
    
        [175616] = CreatePriority(0, "boss"), -- Zo'phex the Sentinel (Boss)
        [176556] = CreatePriority(0, "boss"), -- Alcruux (Boss)
        [176705] = CreatePriority(0, "boss"), -- Venza Goldfuse (Boss)
        [176555] = CreatePriority(0, "boss"), -- Achillite (Boss)
        [176563] = CreatePriority(0, "boss"), -- Zo'gron (Boss)
        [175646] = CreatePriority(0, "boss"), -- P.O.S.T Master (Boss)
        [175806] = CreatePriority(0, "boss"), -- So'azmi (Boss)

        -- So'leash's Gambit
        [176551] = CreatePriority(0, "caster"), -- Vault Purifier
        [177500] = CreatePriority(), -- Corsair Brute
        [178139] = CreatePriority(), -- Murkbrine Shellcrusher
        [178141] = CreatePriority(), -- Murkbrine Scalebinder
        [178142] = CreatePriority(0, "caster"), -- Murkbrine Fishmancer
        [178165] = CreatePriority(), -- Coastwalker Goliath
        [178171] = CreatePriority(), -- Stormforged Guardian
        [179386] = CreatePriority(), -- Corsair Officer
        [179388] = CreatePriority(0, "caster"), -- Hourglass Tidesage
        [179399] = CreatePriority(), -- Drunk Pirate
        [180015] = CreatePriority(), -- Burly Deckhand
        [180429] = CreatePriority(0, "frontal"), -- Adorned Starseer
        [180431] = CreatePriority(0, "caster"), -- Devoted Ritualist
        [180432] = CreatePriority(), -- Devoted Accomplice
        
        [175663] = CreatePriority(0, "boss"), -- Hylbrande
        [175546] = CreatePriority(0, "boss"), -- Timecap'n Hooktail
        [177269] = CreatePriority(0, "boss"), -- So'leah
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

        [209230] = CreatePriority(0, "boss"), -- Kyrioss
    },
    -- Priory of the Sacred Frame
    [2649] = {
        [206704] = CreatePriority(7, "focus", true), -- Ardente Paladin
        [206710] = CreatePriority(7, "focus", true), -- Lightspawn
        [211290] = CreatePriority(7, "focus", true), -- Elaena Emberlanz
        [211291] = CreatePriority(7, "focus", true), -- Sergeant Shaynemail
        [212826] = CreatePriority(7, "focus", true), -- Guard Captain Suleyman
        [212831] = CreatePriority(7, "focus", true), -- Forge Master Damian
        [217658] = CreatePriority(7, "focus", true), -- Sir Beqwraunpyke
        [206697] = CreatePriority(9, "caster", true), -- Devout Priest
        [206698] = CreatePriority(8, "caster", true), -- Fanatical Conjurer
        [211289] = CreatePriority(8, "caster", true), -- Taener Duelmal
        [212827] = CreatePriority(8, "caster", true), -- High Priest Aemya
        [221760] = CreatePriority(8, "caster", true), -- Risen Mage
        [206694] = CreatePriority(0), -- Fervent Sharpshooter
        [206696] = CreatePriority(0), -- Arathi Knight
        [206705] = CreatePriority(0), -- Arathi Footman (Shield)
        [207949] = CreatePriority(0), -- Zaelous Templar
        [212835] = CreatePriority(0), -- Risen Footman
        [207946] = CreatePriority(0, "boss"), -- Captain Dailcry
        [207939] = CreatePriority(0, "boss"), -- Baron Braunpyke
        [207940] = CreatePriority(0, "boss"), -- Prioress Murrpray
    },
    -- Darkflame Cleft
    [2651] = {
        [208450] = CreatePriority(7, "focus", true), -- Wandering Candle
        [210539] = CreatePriority(7, "focus", true), -- Corridor Creeper
        [212411] = CreatePriority(7, "focus", true), -- Torchsnarl
        [213751] = CreatePriority(8, "focus", true), -- Dynamite Mine Cart
        [220616] = CreatePriority(7, "focus", true), -- Corridor Sleeper
        [208456] = CreatePriority(7, "caster", true), -- Shuffling Horror
        [210812] = CreatePriority(8, "caster", true), -- Royal Wicklighter
        [210818] = CreatePriority(8, "caster", true), -- Lowly Moleherd
        [213008] = CreatePriority(7, "caster", true), -- Wriggling Darkspawn
        [220815] = CreatePriority(8, "caster", true), -- Blazing Fiend
        [211121] = CreatePriority(0, "frontal"), -- Rank Overseer
        [212412] = CreatePriority(0, "frontal"), -- Sootsnout
        [208457] = CreatePriority(0), -- Skittering Darkness
        [210810] = CreatePriority(0), -- Menial Laborer
        [211977] = CreatePriority(0), -- Pack Mole
        [212383] = CreatePriority(0), -- Kobold Taskworker
        [213913] = CreatePriority(0), -- Kobold Flametender (caster)
        [210153] = CreatePriority(0, "boss"), -- Ol'Waxbeard
        [208743] = CreatePriority(0, "boss"), -- Blazikon
        [208745] = CreatePriority(0, "boss"), -- The Candle King
        [208747] = CreatePriority(0, "boss"), -- The Darkness
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
        [214697] = CreatePriority(0, "focus"), -- Chef Chewie
        [214920] = CreatePriority(0, "focus"), -- Tasting Room Attendant
        [220368] = CreatePriority(0, "focus"), -- Failed Batch
        [214673] = CreatePriority(0, "caster"), -- Flavor Scientist
        [218671] = CreatePriority(0, "caster"), -- Venture Co. Pyromaniac
        [220141] = CreatePriority(0, "caster"), -- Royal Jelly Purveyor
        [222964] = CreatePriority(0, "caster"), -- Flavor Scientist
        [210264] = CreatePriority(0, "frontal"), -- Bee Wrangler
        [210269] = CreatePriority(0, "frontal"), -- Hired Muscle
        [220946] = CreatePriority(0, "frontal"), -- Venture Co. Honey Harvester
        [223423] = CreatePriority(0, "frontal"), -- Careless Hopgoblin
        [210265] = CreatePriority(0), -- Worker Bee
        [210270] = CreatePriority(0), -- Brew Drop
        [214668] = CreatePriority(0), -- Venture Co. Patron
        [218865] = CreatePriority(0), -- Bee-let
        [219588] = CreatePriority(0), -- Yes Man
        [220060] = CreatePriority(0), -- Taste Tester
        [210271] = CreatePriority(0, "boss"), -- Brewmaster Aldryr
        [210267] = CreatePriority(0, "boss"), -- I'pa
        [218002] = CreatePriority(0, "boss"), -- Benk Buzzbee
        [214661] = CreatePriority(0, "boss"), -- Goldie Baronbottom
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
    },
    -- Operation: Floodgate
    [2773] = {
        [228144] = CreatePriority(0, "focus"), -- Darkfuse Soldier
        [231325] = CreatePriority(0, "focus"), -- Darkfuse Jumpstarter
        [229069] = CreatePriority(0, "caster"), -- Mechadrone Sniper
        [230748] = CreatePriority(0, "caster"), -- Darkfuse Bloodwarper
        [231223] = CreatePriority(0, "caster"), -- Disturbed Kelp
        [231312] = CreatePriority(0, "caster"), -- Venture Co. Electrician
        [231380] = CreatePriority(0, "caster"), -- Undercrawler
        [231496] = CreatePriority(0, "caster"), -- Venture Co. Diver
        [228424] = CreatePriority(0, "frontal"), -- Darkfuse Mechadrone
        [229686] = CreatePriority(0, "frontal"), -- Venture Co. Surveyor
        [230740] = CreatePriority(0, "frontal"), -- Shreddinator 3000
        [231197] = CreatePriority(0, "frontal"), -- Bubbles
        [231385] = CreatePriority(0, "frontal"), -- Darkfuse Inspector
        [227145] = CreatePriority(0), -- Waterworks Crocolisk
        [229251] = CreatePriority(0), -- Venture Co. Architect
        [229252] = CreatePriority(0), -- Darkfuse Hyena
        [231014] = CreatePriority(0), -- Loaderbot
        [231497] = CreatePriority(0), -- Bombshell Crab
        [226398] = CreatePriority(0, "boss"), -- Big M.O.M.M.A.
        [226396] = CreatePriority(0, "boss"), -- Swampface
        [226402] = CreatePriority(0, "boss"), -- Bront
        [226403] = CreatePriority(0, "boss"), -- Kezza Quickfuse
        [226404] = CreatePriority(0, "boss"), -- Geezle Gigazap
    },
    -- Eco'Dome Al'dani
    [2830] = {
        [236995] = CreatePriority(0, "focus"), -- Ravenous Destroyer
        [242631] = CreatePriority(0, "focus"), -- Overcharged Sentinel
        [242209] = CreatePriority(0, "caster"), -- Overgorge Mite
        [234962] = CreatePriority(0, "caster"), -- Wastelander Farstalker
        [234957] = CreatePriority(0, "caster"), -- Wastelander Ritualist
        [234955] = CreatePriority(0, "caster"), -- Wastelander Pactspeaker
        [235151] = CreatePriority(0, "caster"), -- K'aresh Elemental
        [234883] = CreatePriority(0, "frontal"), -- Voracious Gorger
        [234960] = CreatePriority(0, "frontal"), -- Tamed Ruinstalker
        [234872] = CreatePriority(0), -- Wastelander Phaseblade
        [234912] = CreatePriority(0), -- Ravaging Scavenger (Enrage)
        [234918] = CreatePriority(0), -- Wastes Creeper
        [245092] = CreatePriority(0), -- Burrowing Creeper
        [234893] = CreatePriority(0, "boss"), -- Azhiccar (Boss)
        [234933] = CreatePriority(0, "boss"), -- Taah'bat (Boss)
        [237514] = CreatePriority(0, "boss"), -- A'wazj (Boss)
        [234935] = CreatePriority(0, "boss"), -- Soul-Scribe (Boss)
    }
}

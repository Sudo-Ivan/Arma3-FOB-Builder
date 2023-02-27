/* Objects the Player can buy */

/* Radius prevents hostiles walking through objects */

/*  Price - Display Name - Class Name - Rotation When Bought - Object Radius (meters) - explosive - invincible -  Has AI true/false (for objects with AI like autonomous turrests)	*/

globalWestBankBalance = 50004;
globalEastBankBalance = 50007;

BUILDER_ITEMS = [
    [25,    "Long Plank (8m)",        "Land_Plank_01_8m_F",                0,        4,        0,        0,        false],
    [50,    "Junk Barricade",         "Land_Barricade_01_4m_F",            0,      1.5,        0,        0,        false],
    [75,    "Small Ramp (1m)",        "Land_Obstacle_Ramp_F",            180,      1.5,        0,        0,        false],
    [85,    "Flat Triangle (1m)",     "Land_DomeDebris_01_hex_green_F",  180,      1.5,        0,        0,        false],
    [100,   "Short Sandbag Wall",     "Land_SandbagBarricade_01_half_F",   0,      1.5,        0,        0,        false],
    [150,   "Sandbag Tall (hole)",    "Land_SandbagBarricade_01_hole_F",   0,      1.5,        0,        0,        false],
    [150,   "Sandbag Tall",           "Land_SandbagBarricade_01_F",        0,      1.5,        0,        0,        false],
    [180,   "Concrete Shelter",       "Land_CncShelter_F",                 0,        1,        0,        0,        false],
    [180,   "Timber Pile",            "Land_TimberPile_04_F",              0,      3.5,        0,        0,        false],
    [200,   "Timber Pile (sloped)",   "Land_TimberPile_02_F",              0,      3.5,        0,        0,        false],
    [200,   "Concrete Walkway",       "Land_GH_Platform_F",                0,      3.5,        0,        0,        false],
    [250,   "Tall Concrete Wall",     "Land_Mil_WallBig_4m_F",             0,        2,        0,        0,        false],
    [250,   "Guard Box",              "Land_GuardBox_01_brown_F",          0,        2,        0,        0,        false],
    [260,   "Portable Light",         "Land_PortableLight_double_F",     180,        1,        0,        0,        false],
    [300,   "Long Concrete Wall",     "Land_CncBarrierMedium4_F",          0,        3,        0,        0,        false],
    [300,   "Obstacle Bridge",        "Land_Obstacle_Bridge_F",            0,        3,        0,        1,        false],
    [400,   "Large Ramp",             "Land_VR_Slope_01_F",                0,        4,        0,        0,        false],
    [500,   "Bunker Block",           "Land_Bunker_01_blocks_3_F",         0,        2,        0,        0,        false],
    [500,   "Guard Tower (small)",    "Land_GuardTower_02_F",              0,        2,        0,        0,        false],
    [500,   "H Barrier",              "Land_HBarrier_3_F",                 0,        2,        0,        0,        false],
    [500,   "Explosive Barrel",       "Land_MetalBarrel_F",                0,        1,        1,        0,        false],
    [750,   "Ladder",                 "Land_PierLadder_F",                 0,        1,        0,        0,        false],
    [800,   "Storage box small",      "Box_NATO_Support_F",                0,        1,        0,        0,        false],
    [950,   "Stairs",                 "Land_GH_Stairs_F",                180,        4,        0,        0,        false],
    [1000,  "Hallogen Lamp",          "Land_LampHalogen_F",               90,        1,        0,        0,        false],
    [1000,  "Double H Barrier",       "Land_HBarrierWall4_F",              0,        4,        0,        0,        false],
    [1000,  "Concrete Platform",      "BlockConcrete_F",                   0,      3.5,        0,        0,        false],
    [1200,  "Storage box large",      "Box_NATO_AmmoVeh_F",                0,        1,        0,        1,        false],
    [2500,  "Static HMG",             "B_HMG_01_high_F",                   0,        1,        0,        1,        false],
    [3000,  "Small Bunker",           "Land_BagBunker_Small_F",          180,        3,        0,        0,        false],
    [4500,  "Pillbox",                "Land_PillboxBunker_01_hex_F",      90,      2.5,        0,        0,        false],
    [4500,  "Static HMG Autonomous",  "B_HMG_01_high_F",                   0,        1,        0,        0,         true],
    [5000,  "Metal Guard Tower",      "Land_GuardTower_01_F",             90,      2.5,        0,        0,        false],
    [6000,  "Guard Tower",            "Land_Cargo_Patrol_V3_F",            0,      3.5,        0,        0,        false],
    [7000,  "Static GMG",             "B_GMG_01_high_F",                   0,      3.5,        0,        1,        false],
    [9500,  "Static GMG Autonomous",  "B_GMG_01_high_F",                   0,      3.5,        0,        0,         true],
    [9500,  "Modular Bunker",         "Land_Bunker_01_Small_F",          180,        4,        0,        1,        false],
    [25000, "Mortar",                 "B_Mortar_01_F",                   180,      3.5,        0,        1,        false]
];

// Generated by ArrayGen v1.0.4
_hConfig   = [] execVM "editMe.sqf";
waitUntil { scriptDone _hConfig };

_basepoint = [] execVM "builder\createBase.sqf";
waitUntil { scriptDone _basepoint };

// set the global variables

publicVariable "buildBox";
publicVariable "BUILDER_ITEMS";

publicVariable "globalWestBankBalance";
publicVariable "globalEastBankBalance";

missionNamespace setVariable ["globalWestBankBalance", 8000, true];
missionNamespace setVariable ["globalEastBankBalance", 9000, true];
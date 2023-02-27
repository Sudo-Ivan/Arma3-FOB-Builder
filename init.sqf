_hConfig   = [] execVM "editMe.sqf";
waitUntil { scriptDone _hConfig };

_basepoint = [] execVM "builder\createBase.sqf";
waitUntil { scriptDone _basepoint };

publicVariable "buildBox";
publicVariable "BUILDER_ITEMS";

missionNamespace setVariable ["globalWestBankBalance", 8000, true];
missionNamespace setVariable ["globalEastBankBalance", 9000, true];

publicVariable "globalEastBankBalance";
publicVariable "globalWestBankBalance";
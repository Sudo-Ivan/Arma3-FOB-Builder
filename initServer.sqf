// BUILDER v1.0.0
_hConfig   = [] execVM "editMe.sqf";
waitUntil { scriptDone _hConfig };

publicVariable "BUILDER_ITEMS";
[] execVM "score\functions\fn_initBank.sqf";
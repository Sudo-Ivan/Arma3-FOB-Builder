params ["_player", "_object", "_pos", "_dir"];

//If the pos variable is not nil, then it means the object is being picked up from the ground and not from a container
if (isNil "_pos") then {
    //If it is not from the ground, then the object is being picked up from a container, so call the pickup function on the server
    [_player, _object] remoteExecCall ["build_fnc_doPickupLocal", 0];
} else {
    //If it is from the ground, then the object is being picked up from the ground, so call the pickup function on the server
    [_player, _object, _pos, _dir] remoteExecCall ["build_fnc_doPickupLocal", 0];
};



_player setVariable ["buildItemHeld", true, true];
_object setVariable ["buildItemHeld", true, true];

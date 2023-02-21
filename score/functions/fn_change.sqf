

// This function sets the build points of all players to the specified value
// _buildPoints: The build points to set
// This function is only available on the server
// Returns: Nothing
// Used by: The admin menu

params ["_player", "_buildPoints"];

if (isServer) then {
    format ["%1 Changing buildpoints to %2", _player, _buildPoints] call shared_fnc_log;
    private _allPlayers = call BIS_fnc_listPlayers;
    {
        _x setVariable ["buildPoints", _buildPoints, true];
        [] remoteExec ["buildPoints_fnc_updateHud", _x];
    } forEach _allPlayers;
} else {
    ["Called buildPoints_fnc_change on a non-server", "ERR"] call shared_fnc_log;
};

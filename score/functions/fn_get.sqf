params ["_player"];

if (isServer || (_player == player)) then {
    private _buildPoints = 0;
    _buildPoints = _player getVariable "buildPoints";
    if(isNil "_buildPoints") then {
        _buildPoints = 500000;
    };

    //format ["Getting KPs: %1 %2", _player, _buildPoints] call shared_fnc_log;

    _buildPoints;
} else {
    // Cannot get another player's points from this player
    [_player] remoteExecCall ["buildPoints_fnc_get", 2];
};

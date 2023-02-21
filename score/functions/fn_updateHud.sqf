/**
*  fn_updateHud
*
*  Hud values have changed, update Hud
*
*  Domain: Client
**/

if (hasInterface) then {
    disableSerialization;
    _player = player;

    _buildPoints = [_player] call buildPoints_fnc_get;

	_respawnTickets = [west] call BIS_fnc_respawnTickets;
	if(isNil "_respawnTickets" || _respawnTickets < 0) then {
        _respawnTickets = 0;
    };

    _hudText = format ["<t size='1.2' color='#ffffff'>%1</t><br/><t size='1.5' color='#dddddd'>%2</t><br/><t size='0.9' color='#cee5d0'>Wave: %3</t><br/><t size='0.9' color='#cee5d0'>Tickets: %4</t>",(name _player), _buildPoints, _respawnTickets];

    1000 cutRsc ["BuildPointsHud","PLAIN"];
    _ui = uiNameSpace getVariable "BuildPointsHud";
    _BuildPointsHud = _ui displayCtrl 99999;
    _BuildPointsHud ctrlSetStructuredText parseText _hudText;
    _BuildPointsHud ctrlCommit 0;
};

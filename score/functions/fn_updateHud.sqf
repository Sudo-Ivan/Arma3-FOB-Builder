/**
*  buildPoints_fnc_updateHud
*
*  Update the Build Points HUD
*
*  Domain: Client
**/
/**
*  buildPoints_fnc_updateHud
*
*  Update the Build Points HUD
*
*  Domain: Client
**/

if (hasInterface) then {
	disableSerialization;
	switch (side player) do {
		case west: {
			_hudText = format ["<t size='1.2' color='#ffffff'>%2</t><br/><t size='1.6' color='#dddddd'>points: %1</t>", _this select 0 params ["_bankBalance"]];
			1000 cutRsc ["BuildPointsHud","PLAIN"];
			_ui = uiNameSpace getVariable "BuildPointsHud";	
			_BuildPointsHud = _ui displayCtrl 99999;
			_BuildPointsHud ctrlSetStructuredText parseText _hudText;
			_BuildPointsHud ctrlCommit 0;
		};
		case east: {
			_hudText = format ["<t size='1.2' color='#ffffff'>%2</t><br/><t size='1.6' color='#dddddd'>points: %1</t>",  _this select 0 params ["_bankBalance"]];
			1000 cutRsc ["BuildPointsHud","PLAIN"];
			_ui = uiNameSpace getVariable "BuildPointsHud";	
			_BuildPointsHud = _ui displayCtrl 99999;
			_BuildPointsHud ctrlSetStructuredText parseText _hudText;
			_BuildPointsHud ctrlCommit 0;
		};
	};
    sleep 0.1;
};

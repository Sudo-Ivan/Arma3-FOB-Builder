/**
*  buildPoints_fnc_updateHud
*
*  Update the Build Points HUD
*
*  Domain: Client
**/

params ["_factionID", "_bankBalance"];

if (hasInterface) then {
	// Disable the serialization of the code, so that it is not stored
	// in the mission RPT file.
	disableSerialization;
	// Get the player object
	_player = player;

	_factionID = 0;
	_bankBalance = 6969;

	// Create the HUD text for the player's faction
	switch (_factionID) do {
		case 0: { 
			_hudText = format ["<t size='1.2' color='#ffffff'>%1</t><br/><t size='1.5' color='#dddddd'>points: %2</t>", _bankBalance];
			1000 cutRsc ["BuildPointsHud","PLAIN"];
			_ui = uiNameSpace getVariable "BuildPointsHud";
			_BuildPointsHud = _ui displayCtrl 99999;
			_BuildPointsHud ctrlSetStructuredText parseText _hudText;
			_BuildPointsHud ctrlCommit 0;
		};
		case 1: {
			_hudText = format ["<t size='1.2' color='#ffffff'>%1</t><br/><t size='1.5' color='#dddddd'>points: %2</t>", _bankBalance];
			1000 cutRsc ["BuildPointsHud","PLAIN"];
			_ui = uiNameSpace getVariable "BuildPointsHud";
			_BuildPointsHud = _ui displayCtrl 99999;
			_BuildPointsHud ctrlSetStructuredText parseText _hudText;
			_BuildPointsHud ctrlCommit 0;
		};
	};

	hint "Build Points HUD Updated";
};

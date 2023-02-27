	/**
	*  buildPoints_fnc_updateHud
	*
	*  Update the Build Points HUD
	*
	*  Domain: Client
	**/

	//checkPlayerSide = params ["_checkPlayerSide"];

        if (hasInterface) then {
                disableSerialization;
				_checkPlayerSide = _this select 0;
                switch (_checkPlayerSide) do {
                        case west: {
                                private _pointsHUD = missionNamespace getVariable ["globalWestBankBalance", 0];
                                _hudText = format ["<t size='1.2' color='#ffffff'>%2</t><br/><t size='1.6' color='#dddddd'>points: %1</t>", _pointsHUD];
                                1000 cutRsc ["BuildPointsHud","PLAIN"];
                                _ui = uiNameSpace getVariable "BuildPointsHud";    
                                _BuildPointsHud = _ui displayCtrl 99999;
                                _BuildPointsHud ctrlSetStructuredText parseText _hudText;
                                _BuildPointsHud ctrlCommit 0;
                        };
                        case east: {
                                private _pointsHUD = missionNamespace getVariable ["globalEastBankBalance", 0];
                                _hudText = format ["<t size='1.2' color='#ffffff'>%2</t><br/><t size='1.6' color='#dddddd'>points: %1</t>", _pointsHUD];
                                1000 cutRsc ["BuildPointsHud","PLAIN"];
                                _ui = uiNameSpace getVariable "BuildPointsHud";    
                                _BuildPointsHud = _ui displayCtrl 99999;
                                _BuildPointsHud ctrlSetStructuredText parseText _hudText;
                                _BuildPointsHud ctrlCommit 0;
                        };
                };
                sleep 0.1;
        };

buildBoxes = [portablebuildBox1, portablebuildBox2];

PLAYER_OBJECT_LIST =[];

{
    _buildBox = _x;
    [_buildBox, ["<t color='#00ffff'>" + "Pickup", { _this call builder_fnc_moveBox; },"",1,false,false,"true","true",2.5]] remoteExec ["addAction", 0, true];
    [_buildBox, ["<t color='#00ff00'>" + "Shop", "[] spawn builder_fnc_purchaseGui; ShopCaller = _this select 1","",1.5,false,false,"true","true",2.5]] remoteExec ["addAction", 0, true];
    [_buildBox, ["<t color='#ff0000'>" + "Heal Yourself: 500p", "
        _player = _this select 1;
        _points = _player getVariable 'buildPoints';
        if (_points >= 500) then {
            [_player, 0] remoteExec ['setDamage', 0, true];
            [_player, 500] remoteExec ['buildPoints_fnc_spend', 2];
            [true] remoteExec ['disableUserInput', _player];
            [_player, 'AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon'] remoteExec ['switchMove', 0];
            sleep 1;
            [false] remoteExec ['disableUserInput', _player];
        };
    ","",1,false,false,"true","true",2.5]] remoteExec ["addAction", 0, true];

    //Add Builder Box to Zeus
    mainZeus addCuratorEditableObjects [[_buildBox], true];
} forEach buildBoxes;

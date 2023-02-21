/**
*  builder/purchase
*
*  Actor for the "Purchase building" dialog button
*
*  Domain: Client
**/

_index = lbCurSel 1500;
private _shopVehic = objNull;
private _buildItem = (BUILDER_ITEMS select _index);

_shopPrice = (BUILDER_ITEMS select _index) select 0;
_shopName  = (BUILDER_ITEMS select _index) select 1;
_shopClass = (BUILDER_ITEMS select _index) select 2;

// Script was passed an invalid number
if(_shopClass == "") exitWith {};

private _buildPoints = [player] call buildPoints_fnc_get;
if(_buildPoints >= _shopPrice && !(player call build_fnc_isHoldingObject)) then {
    [player, _shopPrice] remoteExec ["buildPoints_fnc_spend", 2];
    [player, _buildItem] remoteExec ["build_fnc_doCreate", 2];
    objPurchase = true;
} else {
    if(_buildPoints < _shopPrice) then {
        [format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
        objPurchase = false;
    }else{
        [format ["<t size='0.6' color='#ff3300'>You're already carrying an object!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
        objPurchase = false;
    };
};

sleep 0.1;

if (objPurchase) then {
    closeDialog 0;
};

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

_balance = switch (side player) do {
	case west: {
		_this = missionNamespace getVariable "globalWestBankBalance";
		if (_this >= _shopPrice && !(player call build_fnc_isHoldingObject)) then {
			[_shopPrice] remoteExec ["buildPoints_fnc_banker", 2];
			[player, _buildItem] remoteExec ["build_fnc_doCreate", 2];
			objPurchase = true;
		} else {
			if (_this < _shopPrice) then {
				[format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
				objPurchase = false;
			} else {
				[format ["<t size='0.6' color='#ff3300'>You're already carrying an object!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
				objPurchase = false;
			};
		};
		_this;
	};
	case east: {
		_this = missionNamespace getVariable "globalEastBankBalance";
		if (_this >= _shopPrice && !(player call build_fnc_isHoldingObject)) then {
			[_shopPrice] remoteExec ["buildPoints_fnc_banker", 2];
			[player, _buildItem] remoteExec ["build_fnc_doCreate", 2];
			objPurchase = true;
		} else {
			if (_this < _shopPrice) then {
				[format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
				objPurchase = false;
			} else {
				[format ["<t size='0.6' color='#ff3300'>You're already carrying an object!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
				objPurchase = false;
			};
		};
		_this;
	};
    default [format ["<t size='0.6' color='#ff3300'>You are not on a side!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText;
};
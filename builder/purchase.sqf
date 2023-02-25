/** 
*  builder/purchase 
* 
*  Actor for the "Purchase building" dialog button 
* 
*  Domain: Client 
**/ 
 
// Define factionID to 0 for West and 1 for East 
if (playerSide isEqualTo west) then { 
    factionID = 0; 
} else { 
    factionID = 1; 
}; 
 
_index = lbCurSel 1500; 
private _shopVehic = objNull; 
private _buildItem = (BUILDER_ITEMS select _index); 
 
_shopPrice = (BUILDER_ITEMS select _index) select 0; 
_shopName  = (BUILDER_ITEMS select _index) select 1; 
_shopClass = (BUILDER_ITEMS select _index) select 2; 
 
// Script was passed an invalid number 
if (_shopClass == "") exitWith {}; 
 
// Get balance from the bank
_balance = [factionID] remoteExec ["buildPoints_fnc_bank", 2];
 
if (_balance >= _shopPrice && !(player call build_fnc_isHoldingObject)) then { 
    // Call the buildPoints_fnc_pointsystem function to subtract points and update balance 
    [_shopClass, _shopPrice, factionID] remoteExec ["buildPoints_fnc_pointsystem", 2]; 
    [player, _buildItem] remoteExec ["build_fnc_doCreate", 2]; 
    objPurchase = true; 
} else { 
    if (_balance < _shopPrice) then { 
        [format ["<t size='0.6' color='#ff3300'>Not enough points for %1!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText; 
        objPurchase = false; 
    } else { 
        [format ["<t size='0.6' color='#ff3300'>You're already carrying an object!</t>", _shopName], -0, -0.02, 2, 0.1] call BIS_fnc_dynamicText; 
        objPurchase = false; 
    } 
}; 
 
if (objPurchase) then { 
    closeDialog 0; 
} 

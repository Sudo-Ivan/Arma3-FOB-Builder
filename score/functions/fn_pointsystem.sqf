
params ["_shopPrice", "_factionID"];

_factionID = _this select 0;
_shopPrice = _this select 1;

// Subtract points from the bank balance
_bankBalance = [_factionID, _shopPrice] remoteExecCall ["fn_bank.sqf", 2];
if (_shopPrice) then {
    switch (_factionID) do {
        case 0: { BLUFOR_BANK = _bankBalance; };
        case 1: { OPFOR_BANK = _bankBalance; };
    };
    // Update the HUD with the new balance for each side
    [BLUFOR_BANK, OPFOR_BANK] remoteExec ["buildPoints_fnc_updateHud", 0];
} else {
    hint "Error: Invalid faction ID!";
};

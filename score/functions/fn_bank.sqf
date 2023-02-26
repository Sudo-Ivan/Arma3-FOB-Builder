// Subtracts the price of the purchased item from the side's bank balance
// and returns the new bank balance
// _factionID: ID of the side whose bank balance is being updated
// _shopPrice: Price of the purchased item
// returns: New bank balance

params ["_factionID", "_shopPrice"];

// Get the bank balance for the specified faction
_BLUFOR_BANK= 50000;
_OPFOR_BANK= 50000;

_factionID = _this select 0;
_shopPrice = _this select 1;

_bankBalance = _factionID call {
	switch (_factionID) do {
		case 0: { _BLUFOR_BANK };
		case 1: { _OPFOR_BANK };
	};
};

// Subtract points from the bank balance

if (_bankBalance >= _shopPrice) then {
    _bankBalance = _bankBalance - _shopPrice;
    switch (_factionID) do {
        case 0: { _BLUFOR_BANK = _bankBalance; };
        case 1: { _OPFOR_BANK = _bankBalance; };
    };

    // TODO: Add code to give the purchased item to the player
} else {
    hint "Insufficient funds";
};

// Return new bank balance
_bankBalance;

[_factionID, _bankBalance] remoteExec ["buildPoints_fnc_updateHud", 0];
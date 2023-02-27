// Subtracts the price of the purchased item from the side's bank balance
// and returns the new bank balance
// _factionID: ID of the side whose bank balance is being updated
// _shopPrice: Price of the purchased item
// returns: New bank balance


fn_banker = switch (side player) do {
    case west: {
        params ["_shopPrice"];
        _bankBalance = missionNamespace getVariable ["globalWestBankBalance"];
        if (_bankBalance >= _shopPrice) then {
            _bankBalanceChange = _bankBalance - _shopPrice;
        } else {
            hint "Insufficient funds";
        };
        west = missionNamespace setVariable ["globalWestBankBalance", "_bankBalance"];
        sleep 0.1;
        [_bankBalance] remoteExec ["buildPoints_fnc_updateHud"];
    };
    case east: {
        params ["_shopPrice"];
        _bankBalance = missionNamespace getVariable ["globalEastBankBalance"];
        if (_bankBalance >= _shopPrice) then {
            _bankBalanceChange = _bankBalance - _shopPrice;
        } else {
            hint "Insufficient funds";
        };
        east = missionNamespace setVariable ["globalEastBankBalance", "_bankBalance"];
        sleep 0.1;
        [_bankBalance] remoteExec ["buildPoints_fnc_updateHud"];
    };
};
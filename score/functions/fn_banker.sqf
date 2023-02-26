// Subtracts the price of the purchased item from the side's bank balance
// and returns the new bank balance
// _factionID: ID of the side whose bank balance is being updated
// _shopPrice: Price of the purchased item
// returns: New bank balance

fn_banker = {
    params ["_shopPrice", side player];
    _bankBalance = switch (side player) do {
        case west: { 50000 };
        case east: { 50000 };
    };
    if (_bankBalance >= _shopPrice) then {
        _bankBalanceChange = _bankBalance - _shopPrice;
        switch (side player) do {
            case west: { _bankBalanceChange set _bankBalance; };
            case east: { _bankBalanceChange set _bankBalance; };
        };
    } else {
        hint "Insufficient funds";
    };
    sleep 0.1;
    [_bankBalance] remoteExec ["buildPoints_fnc_updateHud", 0];
};
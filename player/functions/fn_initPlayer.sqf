// This function is called once when the game starts (after the lobby)
"Player waiting for game start" call shared_fnc_log;

waitUntil {!isNil "gameStarted"};

player setVariable ["buildItemHeld", false];



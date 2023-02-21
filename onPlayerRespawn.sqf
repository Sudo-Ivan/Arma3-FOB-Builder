waitUntil {sleep 0.2; !(isNil "buildBox")};
player setVariable ["buildItemHeld", false];

[] remoteExec ["killPoints_fnc_updateHud", 0];
params ["_player", "_object", "_pos", "_dir"]; 

_object attachTo [_player, _pos, "Pelvis"];
_object setDir _dir;

{
    _object disableCollisionWith _x;
}
forEach playableUnits;

removeAllActions _object;

_player addAction [
	"<t color='#00ffff'>Drop Object (Snap To Ground)</t>",
	'[_this select 3, _this select 1, true] call build_fnc_place;',
	_object
];

_player addAction [
	"<t color='#00ffff'>Place Object (Floating)</t>",
	'[_this select 3, _this select 1, false] call build_fnc_place;',
	_object
];

[_player, "build_fnc_place", [_object, _player, true]] call build_fnc_registerHeldObject;



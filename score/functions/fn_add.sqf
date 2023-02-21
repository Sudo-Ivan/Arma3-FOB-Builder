/**
*  fn_add
*
* Adds points from the specified player. Server authoritative
* to allow for shared points.
*
*  Domain: Any
**/
#include "..\..\shared\builder.hpp"

params ["_player", "_points"];

if (isServer) then {
	format ["%1 Adding %2 points", _player, _points] call shared_fnc_log;
	private _buildPoints = [_player] call buildPoints_fnc_get;
	private _buildPoints = round (_buildPoints + _points);

	// Perform the actual change on the server
	[_player, _buildPoints] call buildPoints_fnc_change;
} else {
	format ["Sending remote: Add %1 Adding %2 points", _player, _points] call shared_fnc_log;
	[_player, _points] remoteExecCall ["buildPoints_fnc_add", 2];
};
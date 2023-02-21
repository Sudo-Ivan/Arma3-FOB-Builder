/**
*  fn_add
*
* Subtracts points from the specified player. Server authoritative
* to allow for shared points.
*
*  Domain: Any
**/
#include "..\..\shared\builder.hpp"

params ["_player", "_points"];

if (isServer) then {
	private _buildPoints = [_player] call buildPoints_fnc_get;
	if(_buildPoints - _points >= 0) then {
		_buildPoints = _buildPoints - _points;
	};

	// Perform the actual change on the server
	[_player, _buildPoints] call buildPoints_fnc_change;
} else {
	[_player, _points] call buildPoints_fnc_spend;
}
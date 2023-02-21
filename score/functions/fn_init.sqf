/**
*  fn_init
*
*  Initialize the score system
*
*  Domain: Server
**/

#include "..\..\shared\builder.hpp"

private _justPlayers = call BIS_fnc_listPlayers;

if (BUILDPOINTS_MODE == BUILDPOINTS_MODE_SHARED) then {
  // Add initial buildpoints for everyone by virtue of adding it to the first player
  format ["Adding initial points to player %1 SHARED", _justPlayers select 0] call shared_fnc_log;
  [_justPlayers select 0, 50000] call buildPoints_fnc_add;
} else {
  {
    // Current result is saved in variable _x
    format ["Adding initial points to player %1 PRIVATE", _justPlayers select 0] call shared_fnc_log;
    [_x, 50000] call buildPoints_fnc_add;
  } forEach _justPlayers;
};
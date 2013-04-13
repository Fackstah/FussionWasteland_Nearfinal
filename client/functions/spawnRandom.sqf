//	@file Version: 1.1
//	@file Name: spawnRandom.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy, [GoT] JoSchaap
//	@file Created: 28/11/2012 05:19
//	@file Args:

waituntil {!isnil "bis_fnc_init"};

private ["_townName","_randomLoc","_pos"];

_randomLoc = cityList select (random (count cityList - 1));

_pos = getMarkerPos (_randomLoc select 0);
_pos = [_pos,1,(_randomLoc select 1),1,0,0,0] call BIS_fnc_findSafePos;
_pos = [_pos select 0, _pos select 1, (_pos select 2) + 10];
player setPos _pos;

respawnDialogActive = false;
closeDialog 0;

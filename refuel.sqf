private["_tank","_vcls","_vcl","_remFuel"];

_tank = _this select 0;
_vcls = nearestObjects [getPos player, ["LandVehicle","Air","Ship","Tank"], 5];
if (count _vcls < 1) exitWith {};
_vcl = _vcls select 0;
if (fuel _vcl > 0.95) exitWith {};
if (_tank getVariable "Fuel" <= 0) exitWith {hint "Tank out of fuel!"};
_remFuel = 1 - fuel _vcl;
_tank setVariable ["Fuel",(_tank getVariable "Fuel") - _remFuel,true];
_vcl setFuel 0;
hint "Refueling...";
sleep 5;
hint "Vehicle Refueled!";
_vcl setFuel 1;
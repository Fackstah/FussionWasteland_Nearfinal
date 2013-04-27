#include "dialog\player_sys.sqf"; 
if(isnil {player getVariable "cmoney"}) then {player setVariable["cmoney",0,true];};
if(dialog) exitwith{};

disableSerialization;

private["_Dialog","_foodtext","_watertext","_moneytext","_mvalue","_rogue"];

_playerDialog = createDialog "playerSettings";

_Dialog = findDisplay playersys_DIALOG;
_foodtext = _Dialog displayCtrl food_text;
_watertext = _Dialog displayCtrl water_text;
_moneytext = _Dialog displayCtrl money_text;
_mvalue = _Dialog displayCtrl money_value;
_rogue = _Dialog displayCtrl rogue_text;
_uptime = _Dialog displayCtrl uptime_text;
_groupButton = _Dialog displayCtrl groupButton;
_foodtext ctrlSettext format["%1 / 100", round(hungerLevel)];
_watertext ctrlSetText format["%1 / 100", round(thirstLevel)];
_moneytext ctrlSetText format["%1", player getVariable "cmoney"];

_mIndex = _mvalue lbadd "$50"; _mvalue lbSetData [(lbSize _mvalue)-1, "50"];
_mIndex = _mvalue lbadd "$150"; _mvalue lbSetData [(lbSize _mvalue)-1, "150"];
_mIndex = _mvalue lbadd "$200"; _mvalue lbSetData [(lbSize _mvalue)-1, "200"];
_mIndex = _mvalue lbadd "$500"; _mvalue lbSetData [(lbSize _mvalue)-1, "500"];
_mIndex = _mvalue lbadd "$750"; _mvalue lbSetData [(lbSize _mvalue)-1, "750"];
_mIndex = _mvalue lbadd "$1000"; _mvalue lbSetData [(lbSize _mvalue)-1, "1000"];
_mIndex = _mvalue lbadd "$2000"; _mvalue lbSetData [(lbSize _mvalue)-1, "2000"];
_mIndex = _mvalue lbadd "$3000"; _mvalue lbSetData [(lbSize _mvalue)-1, "3000"];
_mIndex = _mvalue lbadd "$4000"; _mvalue lbSetData [(lbSize _mvalue)-1, "4000"];
_mIndex = _mvalue lbadd "$5000"; _mvalue lbSetData [(lbSize _mvalue)-1, "5000"];
_mIndex = _mvalue lbadd "$10000"; _mvalue lbSetData [(lbSize _mvalue)-1, "10000"];
_mIndex = _mvalue lbadd "$20000"; _mvalue lbSetData [(lbSize _mvalue)-1, "20000"];
_mIndex = _mvalue lbadd "$30000"; _mvalue lbSetData [(lbSize _mvalue)-1, "30000"];
_mIndex = _mvalue lbadd "$40000"; _mvalue lbSetData [(lbSize _mvalue)-1, "40000"];
_mIndex = _mvalue lbadd "$50000"; _mvalue lbSetData [(lbSize _mvalue)-1, "50000"];

if(str(playerSide) == "west" || str(playerSide) == "east") then
{
	_groupButton ctrlShow false;    
};
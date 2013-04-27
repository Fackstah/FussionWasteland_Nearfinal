//////////////////////////////////////////////////////////////////
// Function file for Armed Assault
// Created by: TODO: Author Name
//////////////////////////////////////////////////////////////////
 
//--- Wind & Dust
[] spawn {
       
        //setwind [0.201112,0.204166,false];
        while {true} do {
               _ran = ceil random 5;
               // playsound format ["wind_%1",_ran];
               _obj = vehicle player;
               _pos = position _obj;
 
               //--- Dust
                       //setwind [0.201112*2,0.204166*2,false];
               _color = [1.0, 0.9, 0.8];
               _alpha = 0.02 + random 0.02;
               _ps = "#particlesource" createVehicleLocal _pos;  
               _ps setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 8], "", "Billboard", 1, 3, [0, 0, -6], _velocity, 1, 1.275, 1, 0, [9], [_color + [0], _color + [_alpha], _color + [0]], [1000], 1, 0, "", "", _obj];
               _ps setParticleRandom [3, [30, 30, 0], [0, 0, 0], 1, 0, [0, 0, 0, 0.01], 0, 0];
               _ps setParticleCircle [0.1, [0, 0, 0]];
               _ps setDropInterval 0.01;
 
               sleep (random 1);
               deletevehicle _ps;
               _delay = 10 + random 20;
               sleep _delay;
 
        };
};
 
// _hndl = ppEffectCreate ["colorCorrections", 1501];
// _hndl ppEffectEnable true;
// _hndl ppEffectAdjust [1, 0.818182, 0.00001,[0.393939, 0.108225, 0.1, 0.030303],[1, 0.386579, 0.1, 0.597403],[1, 0.688311, 1, 1]];
// _hndl ppEffectCommit 0;
 
_pos = getposATL player;
_ps = "#particlesource" createVehicleLocal _pos;  
_ps setParticleParams [["\a3\Data_f\ParticleEffects\Universal\Universal.p3d", 16, 12, 13, 0], "", "Billboard", 1, 10, [0, 0, -6], [0, 0, 0], 1, 1.275, 1, 0, [4], [[1, 1, 1, 0], [1, 1, 1, 0.04], [1, 1, 1, 0]], [1000], 1, 0, "", "", player];
_ps setParticleRandom [3, [40, 40, 0], [0, 0, 0], 2, 0.5, [0, 0, 0, 0.1], 0, 0];
_ps setParticleCircle [0.1, [0, 0, 0]];
_ps setDropInterval 0.004;
 
while {true} do {
        waituntil {vehicle player == player};
        _ps setposATL getposATL player;
        sleep 1;
};
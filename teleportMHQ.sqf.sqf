_dest = (_this select 3) select 0;
_dir = random 359;
player SetPos [(getMarkerPos _dest select 0)-15*sin(_dir),(getMarkerPos _dest select 1)-15*cos(_dir),+0];
rd_dir1 = 0;
rd_dir2 = 0;
rd_alarm = alarm_get(1);
if rd_alarm > 0 {alarm[1] -= 1}
global.die = alarm_get(0);

if global.die > 0 {
alarm[0] -= 1;

}
if global.die = 0{
instance_destroy();
}

if rd_alarm = 0 {
rd_move = irandom_range(0,2);
alarm[1] = 30
}


if rd_move = 1 {rd_dir1 = 1}
if rd_move = 2 {rd_dir2 = 1}


d = rd_dir1 - rd_dir2
if d != 0 and place_free(x+d*movespeed,y) then {x += d*movespeed}


if place_free(x,y+1) then
{ if place_free(x,y+3) gravity = gravitySpeed; gravity_direction = 270;
}
else
{ gravity = 0;
}

if d = 1{sprite_index=eevee_move_right eevee_dir = 0}
if d = -1{sprite_index=eevee_move_left eevee_dir = 1}
if d = 0 {if eevee_dir = 1 {sprite_index=eevee_fixe_left} if eevee_dir = 0 {sprite_index=eevee_fixe_right}}






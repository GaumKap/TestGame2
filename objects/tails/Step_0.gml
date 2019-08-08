
//sound system
sound_cap = 0;

//movements
pl= keyboard_check(vk_left) || gamepad_button_check(0,gp_padl);
pr= keyboard_check(vk_right) || gamepad_button_check(0,gp_padr);
pjump= keyboard_check(vk_control) || gamepad_button_check(0,gp_face2);
pu= keyboard_check(vk_up) || gamepad_button_check(0,gp_padu);
pd= keyboard_check(vk_down) || gamepad_button_check(0,gp_padd);
pnone= pl+pr+pu+pd=0 ;

//command system
preload = gamepad_button_check(0,gp_select) || keyboard_check(vk_f10);
d = 0;
//moves <--->
if tails_etat=0{
d = pr - pl ;
if d != 0 and place_free(x+d*movespeed,y) then {x += d*movespeed}
}


//gravity and jumping
if place_free(x,y+1) then
{ if place_free(x,y+3) gravity = gravitySpeed; gravity_direction = 270;
}
else
{ gravity = 0; if pjump and place_free(x,y-4) then { vspeed = -jumpSpeed; }
}



//animations
if pl {if de_wal = 1 {sprite_index = tails_move_left; } tails_position_draw = 1}
if pr {if de_wal = 1 {sprite_index = tails_move_right; } tails_position_draw = 0}

if pd {
	tails_etat = 1;
	if de_wal = 1 { 
		
		if tails_position_draw = 0 {
			sprite_index=tails_pls_right;
			}
			
	if tails_position_draw = 1 {
		sprite_index=tails_pls_left;
		} 
		
	}
}else{tails_etat=0;}
	
if pu {
	tails_etat = 1;
	if de_wal = 1 { 
		
		if tails_position_draw = 0 {
			sprite_index=tails_look_up_right;
			}
			
	if tails_position_draw = 1 {
		sprite_index=tails_look_up_left;
		} 
		
	}
}else{ if pd!=1 {tails_etat=0;}}

if pjump {sprite_index = tails_jump; de_wal=0;}
if pnone{
	
	if de_wal = 1{
		
		if tails_position_draw = 1 {
			sprite_index = tails_fixe_left;
		}
		
		if tails_position_draw = 0 {
			sprite_index = tails_fixe_right;
		}
	}
	
}

//system input

if preload = 1 {game_restart()}

//skx system

sfx_jump = (keyboard_check_pressed(vk_control) || gamepad_button_check(0,gp_face2));
if sfx_jump = 1{audio_play_sound(sfx_jumping,1,false)}
draw_set_color(c_black)

draw_text(1,1,"// controls");
draw_text(1,15,"pu = " + string(pu) + ".");
draw_text(1,30,"pjump = " + string(pjump) + ".");
draw_text(1,45,"pd = " + string(pd) + ".");
draw_text(1,60,"pl = " + string(pl) + ".");
draw_text(1,75,"pr = " + string(pr) + ".");
draw_text(1,90,"pnone = " + string(pnone) + ".");
draw_text(1,105,"// animations, movements");
draw_text(1,120,"tails_statu = " + string(tails_etat) + ".");
draw_text(1,135,"tails_position = " + string(tails_position_draw) + ".");
draw_text(1,150,"wall_contact = " + string(de_wal) + ".");
draw_text(1,165,"d = " + string(d) + ".");
draw_text(1,180,"vspeed = " + string(vspeed) + ".");

draw_text_color(1,225,"F10 : reload game",c_green,c_green,c_green,c_green,1)
draw_text_color(1,240,"Ctrl : Jump",c_green,c_green,c_green,c_green,1)
draw_text_color(1,255,"You can use a Gamepad ;)",c_green,c_green,c_green,c_green,1)
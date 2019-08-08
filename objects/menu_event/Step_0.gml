updmenu = keyboard_check_released(vk_up);
dpdmenu = keyboard_check_released(vk_down);

checkmenu_up = dpdmenu = 1 && positionpdmenu >= 1;
checkmenu_down = updmenu = 1 && positionpdmenu <= 5;
if  checkmenu_up {
	
	if positionpdmenu < 5 { positionpdmenu += 1;}
}

if checkmenu_down {
	
	if positionpdmenu > 1 { positionpdmenu -= 1;}
}


if keyboard_check(vk_enter) {

	if positionpdmenu = 1{show_message("1")}
	if positionpdmenu = 2{show_message("2")}
	if positionpdmenu = 3{show_message("3")}
	if positionpdmenu = 4{show_message("4")}
	if positionpdmenu = 5{game_end()}
}
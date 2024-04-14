up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

// number of options
op_length = array_length(option[menu_level]);

// move through menu
pos += down_key - up_key;
if pos >= op_length {
	pos = 0;
}
if pos < 0 {
	pos = op_length - 1;
}

if accept_key {
	var _sml = menu_level;
	switch(menu_level) {
		case 0: //pause menu
			switch(pos) {
				case 0: // start game
					room_goto_next();
					break;
				case 1: // settings
					menu_level = 1;
					break;
				case 2:// exit
					game_end();
					break;
			}
			break;
		case 1: //settings
			switch(pos) {
				case 0: //graphics
					break;
				case 1: //brightness
					break;
				case 2: //controls
					break;
				case 3: //back
					menu_level = 0;
					break;
			}
	}
	if _sml != menu_level {pos = 0};
	op_length = array_length(option[menu_level]);
}
// selecting options

esc_key = keyboard_check_pressed(vk_escape);

if esc_key {
	if global.pause == 0 {
		global.pause = 1;
	} else {
		global.pause = 0;
	}
}
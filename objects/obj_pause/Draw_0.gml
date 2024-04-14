if(global.pause) {
	var _s = "Үзіліс";
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fontMain);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(room_width / 2 - string_width(_s) / 2, room_height / 2 - string_height(_s) / 2, _s);
	draw_set_color(c_black);
}
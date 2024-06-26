function scr_set_defaults_for_text() {
	line_break_pos[0, page_number] = 999;
	line_break_num[page_number] = 0;
	line_break_offset[page_number] = 0;
	
	txtb_spr[page_number] = spriteTextbox;
	speaker_sprite[page_number] = noone;
	speaker_side[page_number] = 1;
	
	snd[page_number] = snd_player
}

// @param text
// @param [character]
// @param [side]
function scr_text(_text) {
	scr_set_defaults_for_text();
	text[page_number] = _text;
	
	// get character info
	if argument_count > 1 {
		switch(argument[1]) {
			case "player":
				speaker_sprite[page_number] = spr_player_speak;
				txtb_spr[page_number] = spriteTextbox;
				snd[page_number] = snd_player;
				break;
		}
	}
	if argument_count > 2 {
		speaker_side[page_number] = argument[2];
	}
	
	page_number++;
}

// @param option
// @param link_id
function scr_option(_option, _link_id) {
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number++;
}

// @param text_id
function create_textbox(_text_id) {
	with( instance_create_depth(0, 0, -9999, objectTextbox) ) {
		scr_game_text(_text_id);
	}
}
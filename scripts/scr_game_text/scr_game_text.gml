// @param text_id
function scr_game_text(_text_id){
	switch(_text_id) {
		case "intro 1":
			scr_text("Көзіңді аш, оян қазақ, көтер басты,");
			scr_text("Өткізбей қараңғыда бекер жасты.");
			scr_text("Жер кетті, дін нашарлап, хал арам боп,");
			scr_text("Қарағым, енді жату жарамас-ты.");
				scr_option("Ояну", "intro 1 - continue");
				scr_option("Шығу", "intro 1 - exit");
			break;
			case "intro 1 - continue":
				scr_text("Өте жақсы.");
				break;
			case "intro 1 - exit":
				scr_text("Мен сені осында күтемін.");
				break;
		case "player":
			scr_text("Мен кешігіп келемін!!!", "player");
			scr_text("аьвылдаывльлу");
			scr_text("Мен кешігіп келемін!!!", "player");
			break;
		case "no device":
			scr_text("Мен кешігіп келемін!!!", "player");
			scr_text("Бүгін сол құрылғының презентациясы,", "player");
			scr_text("Мен бұл құрылғысыз кете алмаймын!!!,", "player");
			scr_text("* Құрылғыны үстелден алыңыз.");
			break;
	}
}
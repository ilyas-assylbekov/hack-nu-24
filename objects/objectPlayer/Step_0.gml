if global.pause == 1 {exit};

right_key = keyboard_check(ord("D"));
left_key = keyboard_check(ord("A"));
up_key = keyboard_check(ord("W"));
down_key = keyboard_check(ord("S"));

xspd = (right_key - left_key) * move_spd;
yspd = (down_key - up_key) * move_spd;

if place_meeting(x + xspd, y, obj_wall) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, obj_wall) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, objectBed) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, objectBed) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, objectWall2) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, objectWall2) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, objectBookshelf) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, objectBookshelf) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, objectDesk) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, objectDesk) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, objectWardrobe) == true {
	xspd = 0;
}

if place_meeting(x, y + yspd, objectWardrobe) == true {
	yspd = 0;  
}

if place_meeting(x + xspd, y, obj_speakblock) == true {
	xspd = 0;
	create_textbox(obj_speakblock.text_id)
}

if place_meeting(x, y + yspd, obj_speakblock) == true {
	yspd = 0;
	create_textbox(obj_speakblock.text_id)
}

x += xspd;
y += yspd;

if yspd == 0 and xspd == 0 {face = IDLE};

if yspd > 0 {face = DOWN}
if yspd < 0 {face = UP};

if xspd > 0 {face = RIGHT}
if xspd < 0 {face = LEFT};

sprite_index = sprite[face];

depth = -bbox_bottom
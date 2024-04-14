if place_meeting(x, y, objectPlayer) && !instance_exists(obj_animation)
{
	var inst = instance_create_depth(0, 0, -999, obj_animation);
	inst.target_x = target_x;
	inst.target_y = target_y;
	inst.target_room = target_room;
}
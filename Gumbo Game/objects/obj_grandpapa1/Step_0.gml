event_inherited();
if (global.puzzleOneSolved) {
	current_text_number = 3;
	text[3] = "[wave]Thank you kind child![/wave]";
	text[4] = "This must have been a gift from the world of the [rainbow]spirits.[/rainbow]";
	if (!wall_destroyed) {
		var closest_wall = instance_nearest(x, y, obj_wall);


		if (closest_wall != noone) {
		    instance_destroy(closest_wall);
			wall_destroyed = true;
		}
	
	}
}

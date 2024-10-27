event_inherited();
if (obj_player.HasCoins = true) {
	text[2] = "very well. you may pass."
	if (!wall_destroyed) {
		var closest_wall = instance_nearest(x, y, obj_wall);


		if (closest_wall != noone) {
		    instance_destroy(closest_wall);
			wall_destroyed = true;
		}
	
	}
}
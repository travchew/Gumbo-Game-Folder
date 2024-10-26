

if(glow){
	
	var glowRadius = 15
	gpu_set_blendmode(bm_add)
	for (var c = 0; c < 360; c += 20){
		draw_sprite_ext(sprite_index,image_index,x + lengthdir_x(glowRadius,c),y + lengthdir_y(glowRadius,c),image_xscale,image_yscale,image_angle,image_blend,sineWave*0.1)
	}
	gpu_set_blendmode(bm_normal)

	
	
}

draw_self();
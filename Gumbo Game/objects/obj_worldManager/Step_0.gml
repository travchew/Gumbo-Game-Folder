






if global.currentWorld == "spirit"{
	
	layer_set_visible(FXlayer,true)
	
	layer_set_visible("real_mountains", false);
    layer_set_visible("real_valleys", false);
    layer_set_visible("real_clouds", false);
    layer_set_visible("real_sky", false);
    layer_set_visible("real_grass", false);
	layer_set_visible("real_ground", false);
	
	layer_set_visible("spirit_mountains", true);
    layer_set_visible("spirit_valleys", true);
    layer_set_visible("spirit_fog", true);
    layer_set_visible("spirit_clouds", true);
    layer_set_visible("spirit_sky", true);
    layer_set_visible("spirit_stars", true);
    layer_set_visible("spirit_grass", true);
	layer_set_visible("spirit_ground", true);
	
	//  game objects 
	
	instance_deactivate_layer("collisions_real");
	instance_deactivate_layer("Interactables_real");
	layer_set_visible("real_assets", false);
	
	
	instance_activate_layer("collisions_spirit");
	instance_activate_layer("Interactables_spirit");
	layer_set_visible("spirit_assets", true);
	
	
	
} else { // REAL WORLD
	
	
	layer_set_visible(FXlayer,false)
	
	layer_set_visible("real_mountains", true);
    layer_set_visible("real_valleys", true);
    layer_set_visible("real_clouds", true);
    layer_set_visible("real_sky", true);
    layer_set_visible("real_grass", true);
	layer_set_visible("real_mountains", true);
	layer_set_visible("real_ground", true);
	
	layer_set_visible("spirit_mountains", false);
    layer_set_visible("spirit_valleys", false);
    layer_set_visible("spirit_fog", false);
    layer_set_visible("spirit_clouds", false);
    layer_set_visible("spirit_sky", false);
    layer_set_visible("spirit_stars", false);
    layer_set_visible("spirit_grass", false);
	layer_set_visible("spirit_ground", false);
	
	
	//  game objects 
	
	instance_deactivate_layer("collisions_spirit");
	instance_deactivate_layer("Interactables_spirit");
	layer_set_visible("spirit_assets", false);
	
	instance_activate_layer("collisions_real");
	instance_activate_layer("Interactables_real");
	layer_set_visible("real_assets", true);
}



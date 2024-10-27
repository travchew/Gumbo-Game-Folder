
//grabs cameras x pos
var _cam_x = camera_get_view_x(view_camera[0]);



//assign a layer a specifc x position
//layer_x("parallax_background_1", _cam_x * movementRate); // floor 
if (global.currentWorld = "real") {
	// toggle
	
	
	// movement
	layer_x("real_mountains", _cam_x * (movementRate * 0.2)); // rock pillars
	layer_x("real_valleys", _cam_x * (movementRate * 0.25)) // valleys
	layer_x("real_clouds", _cam_x * -(movementRate * 0.1)) //clouds move opposite directon(?) // 
	layer_x("real_sky", _cam_x * (movementRate * 0.1) ) // sky
	layer_x("real_grass", _cam_x * (movementRate * 0.2) ) // grass
}
else if (global.currentWorld = "spirit") {
	
	//toggle
	
	layer_x("spirit_mountains", _cam_x * (movementRate * 0.2)); // rock pillars
	layer_x("spirit_valleys", _cam_x * (movementRate * 0.25)) // valleys
	layer_x("spirit_fog", _cam_x * (movementRate * 0.25)) // fog
	layer_x("spirit_clouds", _cam_x * -(movementRate * 0.1)) //clouds move opposite directon(?) // 
	layer_x("spirit_sky", _cam_x * (movementRate * 0.1) ) // sky
	layer_x("spirit_stars", _cam_x * (movementRate * 0.1) ) // stars
	layer_x("spirit_grass", _cam_x * (movementRate * 0.2) ) // grass
	
	//movement
	
	


}


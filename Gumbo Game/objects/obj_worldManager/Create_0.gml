global.currentWorld = "real";

player = obj_player;

FXlayer = layer_get_id("Effect_1")

function crossBridge(bridge){
	with(player){
		changePlayerMovement();
		fadeOUT = true;
		/*
		while (ImgScale > .1){
			bridgeCrossAnimation();
		}
		
		while(image_alpha>0){
		image_alpha = lerp(image_alpha, 0, 0.1);
			if image_alpha == 0 {
			  //instance_destroy();
			}
		}
		*/
	}
	player.x = bridge.x + bridge.sprite_width/2
	
	if (global.currentWorld == "real"){
		global.currentWorld = "spirit"
	} else global.currentWorld = "real"
	
	bridge.crossing = false
	bridge.colliding = false;
	//player.changePlayerMovement() PLAYER MOVEMENT IS GIVEN BACK AFTER FADED IN(in obj_fadeable)
}

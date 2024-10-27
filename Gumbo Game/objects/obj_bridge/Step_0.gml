


if(!crossing and player.grounded and (distance_to_object(obj_player) < 110)){
		colliding = true;
		
} else colliding = false


if (colliding and player.grounded and keyboard_check_pressed(vk_space)){
			
			obj_worldManager.crossBridge(self)
	}
	
	
	
// switch bridge sprites
if (global.currentWorld = "spirit") image_index = 0;
else image_index = 1;
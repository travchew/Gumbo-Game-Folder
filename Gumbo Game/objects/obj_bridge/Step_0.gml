


if(!crossing and player.grounded and collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_player,false,false)){
		colliding = true;
		
} else colliding = false


if (colliding and player.grounded and keyboard_check_pressed(vk_space)){
			crossing = true;
			obj_worldManager.crossBridge(self)
	}
	
	
	
// switch bridge sprites
if (global.currentWorld = "spirit") image_index = 0;
else image_index = 1;
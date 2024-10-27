/// @description Insert description here
// You can write your code in this editor



if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_player,false,false)) {
	colliding = true;
	if(keyboard_check_pressed(vk_space)){
		obj_player.HasCoins = true;
		instance_destroy();
	}
} else colliding = false;
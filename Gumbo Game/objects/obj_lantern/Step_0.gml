/// @description Insert description here
// You can write your code in this editor


draw_self()


if(collision_rectangle(x,y,x+sprite_width,y+sprite_height,obj_player,false,false)){
	
	colliding = true;
	if(keyboard_check_pressed(vk_space)){
		interactLantern();
	}
} else colliding = false;


event_inherited()

lantern_sprite_pick("round")

if(global.currentWorld == "real"){
	x = realX
	y = realY
} else {
	x = spiritX
	y = spiritY
}
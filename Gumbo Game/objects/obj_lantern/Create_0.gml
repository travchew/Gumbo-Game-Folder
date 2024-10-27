

/*

if realworldon and world=real then turn on
if realworldoff and world=real then turn off
vice versa for sprit world!!!
*/

scale = 0.5;
image_xscale *= scale;
image_yscale *= scale;

realWorldOn = false;
spiritWorldOn = true;

lanternShape = "round";

//this could be done with an array butttttttttttt no
realX = x;
realY = y;
spiritX = x;
spiritY = y;
//can also be changed for certain ones in Instance Creation code


colliding = false

event_inherited()

function interactLantern(){

	realWorldOn = !realWorldOn
	spiritWorldOn = !spiritWorldOn
		
}
show_debug_message("i exist");

function lantern_sprite_pick(type){
	if(type == "round"){
		if(global.currentWorld == "real" and realWorldOn) sprite_index = Lanternround_red;
		else if(global.currentWorld == "spirit" and spiritWorldOn) sprite_index = Lanternround_blue;
		else sprite_index = Lanternround_unlit;
	}
	if(type == "rect"){
		if(global.currentWorld == "real" and realWorldOn) sprite_index = Lanternsquare_red;
		else if(global.currentWorld == "spirit" and spiritWorldOn) sprite_index = Lanternsquare_blue;
		else sprite_index = Lanternsquare_unlit;
	}
}
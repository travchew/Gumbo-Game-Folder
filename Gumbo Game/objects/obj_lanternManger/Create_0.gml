/// @description Insert description here
// You can write your code in this editor


lanternList = []
space = 0
for(var i = 0; i < 4 ; i ++){
	var lantern = instance_create_layer(1120 + space,640,"Interactables",obj_lantern)
	array_insert(lanternList,i,lantern)
	
	space += 300;
}

show_debug_message(lanternList)


/// @description Insert description here
// You can write your code in this editor

if(instance_exists(obj_Statue)) myDogStatue = obj_Statue;

lanternList = []
space = 0

var lantern = instance_create_layer(5000 + space,640,"Interactables_linked",obj_lantern)
lantern.lanternShape = "rect";
array_insert(lanternList,0,lantern);

/*
for(var i = 0; i < 4 ; i ++){
	var lantern = instance_create_layer(3340 + space,640,"Interactables_linked",obj_lantern)
	array_insert(lanternList,i,lantern)
	
	space += 300;
}
*/

//show_debug_message(lanternList);


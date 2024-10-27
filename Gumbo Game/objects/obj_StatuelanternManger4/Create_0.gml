/// @description Insert description here
// You can write your code in this editor



lanternList = []
space = 0

/*
for(var i = 0; i < 2 ; i ++){
	var lantern = instance_create_layer(3800 + space,20,"Interactables_linked",obj_lantern)
	lantern.lanternShape = "round";
	array_insert(lanternList,i,lantern)
	
	space += 300;
}
*/


//gets locatiion of statues
	var lantern = instance_create_layer(6150,20,"Interactables_linked",obj_lantern)
	lantern.lanternShape = "round";
	array_insert(lanternList,0,lantern)
	
	var lantern2 = instance_create_layer(6600-(2*(550)),20,"Interactables_linked",obj_lantern)
	lantern2.lanternShape = "round"; //MAKE THIS A STAR!
	array_insert(lanternList,1,lantern2)


//show_debug_message(lanternList);


global.puzzleOneSolved = false;
lanternList = []
space = 305;
for(var i = 0; i < 4 ; i ++){
	var lantern = instance_create_layer(3800 + i*space,570,"Interactables_linked",obj_lantern)
	array_insert(lanternList,i,lantern)
	
	

}
lanternList[0].spiritWorldOn = true;
lanternList[1].spiritWorldOn = true;
lanternList[2].spiritWorldOn = true;
lanternList[3].interactLantern();

lanternList[0].lanternShape = "rect";
lanternList[1].lanternShape = "rect";
lanternList[2].lanternShape = "rect";
lanternList[3].lanternShape = "rect";
//show_debug_message(lanternList);


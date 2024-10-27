/// @description Insert description here
// You can write your code in this editor


if(instance_exists(myDogStatue)){
 
	if(lanternList[0].spiritWorldOn){
		myDogStatue.moving = "down";
		myDogStatue.statueHeight = 820;
	} else {
		myDogStatue.moving = "up";
		myDogStatue.statueHeight = 600;
	}
}

//820 in ground
//600 out of ground
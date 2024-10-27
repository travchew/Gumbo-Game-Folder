/// @description Insert description here
// You can write your code in this editor


if (global.currentWorld == "real" and 
	lanternList[0].spiritWorldOn == 0 and	
	lanternList[1].spiritWorldOn == 0 and
	lanternList[2].spiritWorldOn == 0 and
	lanternList[3].spiritWorldOn == 0) {
	
	show_debug_message("PUZZLE ONE SOLVED!!!!!!!!!")
	show_debug_message(lanternList[0].spiritWorldOn);
	global.puzzleOneSolved = true;
	
}
else show_debug_message("puzzle incomplete");

show_debug_message(lanternList[0].spiritWorldOn);
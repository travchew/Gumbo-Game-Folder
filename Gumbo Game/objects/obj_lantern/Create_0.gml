

/*

if realworldon and world=real then turn on
if realworldoff and world=real then turn off
vice versa for sprit world!!!
*/

realWorldOn = true;
spiritWorldOn = false;
//can also be changed for certain ones in Instance Creation code


colliding = false

event_inherited()

function interactLantern(){

	realWorldOn = !realWorldOn
	spiritWorldOn = !spiritWorldOn
		
}

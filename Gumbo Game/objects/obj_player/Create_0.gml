x = x;
y = y;
vspd = 0;
hspd = 0;



takeInput = true;
ImgScale = 1;
HasCoins = false;

sprUpJump = 0;
sprDownJump = 0; // assign sprites here

function sprite_pick() { // changes sprite based on "it" status
	// put back facing if statement here and change this one to an else if!
	if (obj_worldManager.crossing) sprite_index = spr_mcback;
	else if (vspd > 0) sprite_index = spr_downjump;
	else if (vspd < 0) sprite_index = spr_upjump;
	else if (hspd = 0) sprite_index = spr_idle;
	else sprite_index = spr_walk;
	
	if (hspd > 0) image_xscale = -abs(image_xscale);
	if (hspd < 0) image_xscale = abs(image_xscale);
	
}

event_inherited()

function changePlayerMovement() {
	takeInput = !takeInput;
	hspd = 0
	vspd = 0
}

function bridgeCrossAnimation() {
		/*
		ImgScale -= 0.1;
		image_xscale = ImgScale
		image_yscale = ImgScale
		show_debug_message(ImgScale)
		*/
}



// X AXIS
hacc = 0; // horizontal acceleration
eq_hacc = .3; // frictional force to stop horizontal 
skid_value = 3; // acc * skid_value while switching directions
hforce = .5; // what hacc is set to upon input
initial_hspeed = 2;
max_hspeed = 12;

//TAG LOL
tag_iframes = 30; 
tag_iframe_count = 0;

// Y AXIS
vacc = 0; // vertical acceleration
grav = .1; // gravitational acceleration
terminal_vspeed = 15; // max gravity speed
vacc_max = .3; // max grav acc

// JUMP
jump_v = 10; // init acceleration of jump
jump_status = false; // can the player jump?
grounded = false;
frames_since_grounded = 0;
coyote_frames = 6; 

v_wrap_gap = sprite_height/2;
h_wrap_gap = sprite_width/2;

function wrap() { // character wraps around the screen
	if (x > room_width + h_wrap_gap) x = -h_wrap_gap + 1; // THIS IS A SHITTY FIX LOL
    else if (x < -h_wrap_gap) x = room_width + h_wrap_gap;
	if (y > room_height + v_wrap_gap) y = -v_wrap_gap + 1;
	else if (y < -v_wrap_gap) y = room_height + v_wrap_gap;
}

function arrow_inputs_p1() { // set variables to arrow inputs 
	right_key = keyboard_check(vk_right);
	left_key = keyboard_check(vk_left);
	up_key = keyboard_check(vk_up);
	down_key = keyboard_check(vk_down);
}

function arrow_inputs_p2() {
	right_key = keyboard_check(ord("D"));
	left_key = keyboard_check(ord("A"));
	up_key = keyboard_check(ord("W"));
	down_key = keyboard_check(ord("S"));
}
arrow_inputs_p1();
arrow_inputs_p2();

function x_movement() {
	if (right_key && !left_key) { 
		if (hspd >= max_hspeed) hspd = max_hspeed; // cap hspd
		else if (hspd < 0) hacc = hforce * skid_value;
		else hacc = hforce; // set h acc to value
	
	}
	else if (hspd > 0) {  
		hacc = 0;
		if (hspd - eq_hacc > 0) hspd = (hspd - eq_hacc);
		else hspd = 0;
	}
	else hacc = 0;
	
	hspd += hacc;
	
	if (left_key && !right_key) {
		if (hspd <= -max_hspeed) hspd = -max_hspeed;
		else if (hspd > 0) hacc = -hforce * skid_value;
		else hacc = -hforce;
	}
	else if (hspd < 0) {
		hacc = 0;
		if (hspd + eq_hacc < 0) hspd = (hspd + eq_hacc);
		else hspd = 0;
	}
	else hacc = 0;
	
	hspd += hacc;
}

function gravity_force() {
	if (vspd + vacc >= terminal_vspeed) vspd = terminal_vspeed;
	else vspd += vacc;
	
	if (vacc + grav >= vacc_max) vacc = vacc_max;
	else vacc += grav; 
}

function is_positive(_parameter) {
	if (_parameter > 0) return 1; // If hspeed is positive, move positive
	else return -1;
}


//LEGACY CODE
function hspd_legacy() { // makes it so hspd and vspd work, taking into account collisions
	if (!place_meeting(x+hspd, y, obj_wall)) x += hspd; // THIS CHECKS FOR BOTH WAYS
	else {
		x += distance_to_object(obj_wall) * is_positive(hspd);
		hspd = 0;
	} 
}

function vspd_legacy() { 
	if (!place_meeting(x, y+vspd, obj_wall)) y += vspd;
	else {
		y += distance_to_object(obj_wall) * is_positive(vspd);
		vspd = 0;
	}
}



function hspd_move() {
	for (var _i = 0; _i < abs(hspd); _i++) {
	    if (place_meeting(x + is_positive(hspd), y, obj_wall)) {
			hspd = 0;
			break;
		}
		x += is_positive(hspd);
	}
}

function vspd_move() {
	for (var _i = 0; _i < abs(vspd); _i++) {
	    if (place_meeting(x, y + is_positive(vspd), obj_wall)) {
			vspd = 0;
			break;
		}
		y += is_positive(vspd);
	}
}

function jump() {
	vspd = -jump_v;
}


function is_grounded() {
	if (place_meeting(x, y - is_positive(vspd), obj_wall)) grounded = 1;
	else grounded = 0;
}

function tag_switch() {
	tag_iframe_count = 0;
	if (it = 0) it = 1;
	else it = 0;
}

function sprite_it() { // changes sprite based on "it" status
	if (it = 1) {
		image_index = 1;
		y -= 2;
	}
	
	else image_index = 0;
	
	if (hspd > 0) image_xscale = -abs(image_xscale);
	if (hspd < 0) image_xscale = abs(image_xscale);
	
}

function check_death() {
	if (it = 1) && ((obj_tag_timer.death_seconds-(obj_player.tag_iframe_count)/60) = 0) {
		instance_create_layer(x, y, "Instances", obj_explodeBIG);
		instance_destroy();
	}
}

if (player = 0) arrow_inputs_p1();
else if (player = 1) arrow_inputs_p2();

//wrap(); // has to do with x side of wrap //max: commented for testing also cuz ion think we need to wrap around the room if its like a mario level

x_movement();

gravity_force();

hspd_move();
vspd_move();

is_grounded();

if (up_key) && (grounded) jump();

tag_iframe_count += 1;

//check_death();

sprite_it();
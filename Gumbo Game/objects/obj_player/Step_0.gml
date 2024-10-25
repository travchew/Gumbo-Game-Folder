if (player = 0) arrow_inputs_p1();
else if (player = 1) arrow_inputs_p2();

wrap(); // has to do with x side of wrap

x_movement();

gravity_force();

hspd_move();
vspd_move();

is_grounded();

if (up_key) && (grounded) jump();

tag_iframe_count += 1;

//check_death();

sprite_it();
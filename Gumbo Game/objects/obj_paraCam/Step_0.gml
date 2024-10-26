
/*
camera_set_view_pos(camera, x, y);

x = lerp(x, x + 30, 0.08);
*/


//^^^^og paraCam code

// x camera
if (follow.x-(global.cam_width/2) > 0 && follow.x+(global.cam_width/2) < room_width) {
	x += (follow.x - x)/cam_speed;
}
else if (follow.x < room_width/2) x += (0+(global.cam_width/2) - x)/cam_speed;
else x += (room_width-(global.cam_width/2) - x)/cam_speed;


// y camera
if (follow.y-(global.cam_height/2) > 0 && follow.y < room_height-(global.cam_height/2)) {
	y += (follow.y - y)/cam_speed; 
}
else if (follow.y < room_height/2) y += (0+(global.cam_height/2) - y)/cam_speed;
else y += (room_height-(global.cam_height/2) - y)/cam_speed;


//show_debug_message();

camera_set_view_pos(camera,x-(global.cam_width*.5),y-(global.cam_height*.5));


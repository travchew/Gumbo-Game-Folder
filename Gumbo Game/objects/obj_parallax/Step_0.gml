
//grabs cameras x pos
var _cam_x = camera_get_view_x(view_camera[0]);

//assign a layer a specifc x position
layer_x("parallax_background_1", _cam_x * movementRate);
layer_x("parallax_background_2", _cam_x * (movementRate + 0.1));
layer_x("parallax_background_3", _cam_x * 1.1); //clouds move opposite directon(?)
layer_x("parallax_background_4", _cam_x * (movementRate + 0.2));



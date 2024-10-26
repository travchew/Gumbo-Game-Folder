/// @description Insert description here
// You can write your code in this editor


if fadeOUT && image_alpha >= 0{
    image_alpha -= fadeStep
	//show_debug_message("fading out")
    if image_alpha < fadeStep{
        //Destroy()
        //instance_destroy()
		fadeOUT = false;
		fadeIN = true
    }
} 

if fadeIN{
    image_alpha += fadeStep
	//show_debug_message("fading in")
    if image_alpha >= 1{
        //Destroy()
        //instance_destroy()
		fadeIN = false;
		changePlayerMovement()
    }
}

draw_self()
/// @description Insert description here
// You can write your code in this editor


if(fadingOut){
	alpha += 0.05

	if alpha >= 1{
		//room_goto(next)
		global.currentWorld = next
		
		fadingOut = false;
		//show_debug_message("I am dead")
	}

	draw_set_color(c_black)
	draw_set_alpha(alpha)
	draw_rectangle(0,0,room_width,room_height,0)

	draw_set_alpha(1)
} else {

	alpha -= 0.05

	if alpha <= 0{
		obj_worldManager.crossing = false;
		instance_destroy()
	}

	draw_set_color(c_black)
	draw_set_alpha(alpha)
	draw_rectangle(0,0,room_width,room_height,0)

	draw_set_alpha(1)

	
	
}


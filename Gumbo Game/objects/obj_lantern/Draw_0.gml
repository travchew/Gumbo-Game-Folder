/// @description Insert description here
// You can write your code in this editor
//draw_self()

image_speed = 0

if(global.currentWorld == "real"){
	if(realWorldOn){
		image_index = 0;	
	} else image_index = 1;
}

else if(global.currentWorld == "spirit"){
	if(spiritWorldOn){
		image_index = 0;	
	} else image_index = 1;
}

if(image_index == 0){
	glow = true;	
} else glow = false;

//draw_rectangle(x,y,x+sprite_width,y+sprite_height,true)
//draw_text_transformed_color(x,y + 80,"Real World: " + string(realWorldOn) + "& Spirit World: " + string(spiritWorldOn),1,1,0,c_red,c_red,c_red,c_red,1)
if(colliding){
	draw_text_transformed_color(x,y + 30,"PRESS SPACE TO Change",2,2,0,c_red,c_red,c_red,c_red,1)	
}


event_inherited()
/// @description Insert description here
// You can write your code in this editor
draw_self()

//draw_rectangle(x,y,x+sprite_width,y+sprite_height,true)
//draw_text_transformed_color(x,y + 80,"Real World: " + string(realWorldOn) + "& Spirit World: " + string(spiritWorldOn),1,1,0,c_red,c_red,c_red,c_red,1)
if(colliding){
	draw_text_transformed_color(x,y + 30,"PRESS SPACE TO Pickup",2,2,0,c_red,c_red,c_red,c_red,1)	
}
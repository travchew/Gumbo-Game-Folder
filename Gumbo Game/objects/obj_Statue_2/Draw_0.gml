/// @description Insert description here
// You can write your code in this editor



//y = statueHeight;
if(point_distance(x,y,x,statueHeight) > 2){
	if(y != statueHeight) move_towards_point(x,statueHeight,2);
} else y = statueHeight;



show_debug_message(point_distance(x,y,x,statueHeight))
/*
if(moving == "up"){
	if(distance_to_point(x,statueHeight) < 2) move_towards_point(x,statueHeight,2)
} else if(moving == "down"){
	move_towards_point(x,statueHeight,2)
}
*/





draw_self()


draw_sprite(Dogstatue_debris,0,x,800);


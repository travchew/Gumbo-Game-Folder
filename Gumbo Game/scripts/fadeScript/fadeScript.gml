// Script assets have changed for v2.3.0 see


function FadeOut(){
	if !instance_exists(obj_FadeTransition){
		var wall = instance_create_depth(x,y,-10000,obj_FadeTransition)
		if (wall.next == "real"){
		wall.next = "spirit"
		} else wall.next = "real"
	
	}
}
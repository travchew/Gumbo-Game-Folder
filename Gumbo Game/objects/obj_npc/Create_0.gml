near_player = false;
range = 100;
dialogue_in_play = false;
current_text_number = 0;
text_height = 185;
t = 0;
custom_alpha = 0;

base_alpha = 0.9
draw_set_font(Font2);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

text[0] = "..."
text[1] = "[c_white][shake]Hello![/shake] I am a [/c_white][rainbow]tomato.[/rainbow]"
text[2] = "The festival! The festival! It must be starting soon!"

//



function near_player_check() {
	if (distance_to_object(obj_player) < range) {
		near_player = true
	}
	else near_player = false;
}


function dialogue_next() {
	if keyboard_check_pressed(vk_space) {
		
		if (t/3 > string_length(text[current_text_number])) {
			t = 0;
			current_text_number = clamp(current_text_number+1, 0, array_length(text)-1); 
		}
		else {
			show_debug_message(t);
			t = 99999;
		}
	}

}

function play_dialogue(_text_number) {
	//draw_text(x,y, text[_text_number]);
	
	var tdpx = x;
	var tdpy = y - text_height;
	if (t < 50) {
		custom_alpha = t/10;
	}
	else if (distance_to_object(obj_player) > range - 200) {
		custom_alpha = map_value(range - distance_to_object(obj_player), 0, 40, 0, 1);
		//custom_alpha = 0.4;
	}
	else custom_alpha = 1;
	draw_set_alpha(custom_alpha)
	//draw_set_colour(c_black);
	draw_sprite_ext(spr_SpeechBubbleTip, 0, tdpx,tdpy-40, 1.5, 2, 0, c_white, custom_alpha);
	draw_sprite_ext(spr_TextBox, random_range(0,1), tdpx,tdpy, 3, 1, 0, c_white, custom_alpha);
	//draw_roundrect_ext(tdpx - 120, tdpy - 50, tdpx + 120, tdpy + 50, 10, 10, 0);
	draw_set_colour(c_white);

	
	draw_text_scribble_ext(tdpx,tdpy, text[_text_number], 350, t/4);
	t++;
	
	
	
}
near_player_check();
draw_set_alpha(1);
draw_self();

if (near_player) {
	image_alpha = 1;
	play_dialogue(current_text_number)
	dialogue_next();
}
else {
	image_alpha = 0.3;
	t = 0;
}


/*


if global.currentWorld=="real" && switchMusic{
	audio_stop_sound(currSpiritMusic)
	//currNormalMusic = normal[random_range(0,array_length(normal))]
	//show_debug_message(audio_sound_get_track_position(currNormalMusic))
	//show_debug_message(audio_sound_length(currNormalMusic))
	
	//catch is audio is paused
	if(audio_is_paused(currNormalMusic)){
		show_debug_message("Soug is Resumed")
		audio_sound_gain(currNormalMusic,0,0)
		audio_sound_gain(currNormalMusic,1,3000)
		audio_resume_sound(currNormalMusic)
	}
	if (audio_sound_get_track_position(currNormalMusic) >= audio_sound_length(currNormalMusic)) or !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is over")
		currNormalMusic = realWorld[0]
	}
	if !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is starting")
		audio_play_sound(currNormalMusic,1,false)
		switchMusic = false
	}

	
	
}

if global.currentWorld=="spirit" && switchMusic{
	audio_pause_sound(currNormalMusic)
	show_debug_message("normal music paused")
	currSpiritMusic = spiritWorld[random_range(0,array_length(spiritWorld))]
	if !audio_is_playing(currSpiritMusic){
		
		
		show_debug_message("playing zombie sound")
		audio_play_sound(currSpiritMusic,1,true)
		audio_sound_gain(currSpiritMusic,0,0)
		audio_sound_gain(currSpiritMusic,1,3000)
		switchMusic = false
	}
}

*/

if global.currentWorld=="real" && switchMusic{
	
	if(audio_is_playing(currSpiritMusic)){
		audio_pause_sound(currSpiritMusic)
	}
	//currNormalMusic = normal[random_range(0,array_length(normal))]
	//show_debug_message(audio_sound_get_track_position(currNormalMusic))
	//show_debug_message(audio_sound_length(currNormalMusic))
	
	//catch is audio is paused
	if(audio_is_paused(currNormalMusic)){
		show_debug_message("Soug is Resumed")
		audio_sound_gain(currNormalMusic,0,0)
		audio_sound_gain(currNormalMusic,1,3000)
		audio_resume_sound(currNormalMusic)
	}
	if (audio_sound_get_track_position(currNormalMusic) >= audio_sound_length(currNormalMusic)) or !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is over")
		currNormalMusic = realWorld[0]
	}
	if !audio_is_playing(currNormalMusic){
		show_debug_message("Soug is starting")
		audio_play_sound(currNormalMusic,1,false)
		switchMusic = false
	}

	
	
}

if global.currentWorld=="spirit" && switchMusic{
	if(audio_is_playing(currNormalMusic)){
		audio_pause_sound(currNormalMusic)
	}
	//currNormalMusic = normal[random_range(0,array_length(normal))]
	//show_debug_message(audio_sound_get_track_position(currNormalMusic))
	//show_debug_message(audio_sound_length(currNormalMusic))
	
	//catch is audio is paused
	if(audio_is_paused(currSpiritMusic)){
		show_debug_message("Soug is Resumed")
		audio_sound_gain(currSpiritMusic,0,0)
		audio_sound_gain(currSpiritMusic,1,3000)
		audio_resume_sound(currSpiritMusic)
	}
	if (audio_sound_get_track_position(currSpiritMusic) >= audio_sound_length(currSpiritMusic)) or !audio_is_playing(currSpiritMusic){
		show_debug_message("Soug is over")
		currSpiritMusic = spiritWorld[0]
	}
	if !audio_is_playing(currSpiritMusic){
		show_debug_message("Soug is starting")
		audio_play_sound(currSpiritMusic,1,false)
		switchMusic = false
	}
	
}












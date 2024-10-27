// Script assets have changed for v2.3.0 see

function FadeOut(){
    audio_play_sound(snd_bridgeCross,1,false)
    if !instance_exists(obj_FadeTransition){
        var wall = instance_create_depth(x,y,-10000,obj_FadeTransition)
        if (wall.next == "real"){
        wall.next = "spirit"
        } else wall.next = "real"

    }

    obj_Music.switchMusic = true;
}
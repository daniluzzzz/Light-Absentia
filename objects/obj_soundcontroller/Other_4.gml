if (room==rm_Candle&&!audio_is_playing(obj_player.som_defaultmusic)) { 
	obj_player.som_defaultmusic = audio_play_sound(snd_defaultbackgroundmusic, 10, true);} 
if(room==rm_Corridor){ 
	if(audio_is_playing(obj_player.som_defaultmusic)){
		if (audio_is_playing(obj_player.som_defaultmusic)) { 
			if (audio_is_playing(obj_player.som_defaultmusic)) { audio_stop_sound(obj_player.som_defaultmusic); }
				}} 
				if(!audio_is_playing(obj_player.som_corridormusic)){
					obj_player.som_corridormusic = audio_play_sound(snd_corridormusic, 10, true);} }
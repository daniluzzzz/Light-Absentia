if (estado == "entrando") { 
	image_alpha += fade_speed; if (image_alpha >= 1) { 
		image_alpha = 1; estado = "esperando"; // Cria a tela de game over assim que o preto estiver completo 
		if (!instance_exists(obj_gameoverscreen)) { instance_create_layer(0, 0, "Instances", obj_gameoverscreen); } } }
		if(audio_is_playing(snd_defaultbackgroundmusic)){
			audio_sound_gain(snd_defaultbackgroundmusic, 0, 500);
			alarm[0] = room_speed / 2;} 
			if(audio_is_playing(snd_corridormusic))
			{audio_sound_gain(snd_corridormusic, 0, 500); alarm[1] = room_speed / 2;} 
			if(!audio_is_playing(snd_gameoverscreen)){audio_play_sound(snd_gameoverscreen, 10, true);}
			if (instance_exists(obj_gameoverscreen) && obj_gameoverscreen.sumir) { instance_destroy(); }
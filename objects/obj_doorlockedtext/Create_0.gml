image_alpha = 0;
estado = "entrando";
fade_speed = 0.05;
tempo_visivel = room_speed * 2; // 2 segundos
timer = 0;
depth=-20000;
if(room!=rm_Candle){audio_play_sound(snd_lockeddoor, 10, false);}
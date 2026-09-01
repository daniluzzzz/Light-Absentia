if (!sumir)
{
    image_alpha += fade_speed;
    if (image_alpha > 1)
        image_alpha = 1;
}
else
{
    image_alpha -= fade_speed;

    if (image_alpha <= 0)
{
    image_alpha = 0;

    obj_player.vida = 3;
    obj_player.game_over_ativado = false;
    obj_player.fade_audio_gameover = false;
	switch(room){
		case rm_Hallway: obj_player.segurando_vela=true; 
							obj_player.segurando_key=false;
						//obj_key.x=obj_key.xinicial; obj_key.y=obj_key.yinicial;
						break;
		case rm_TempCandle: obj_player.segurando_velatemp=true; 
		obj_player.segurando_key=false;
						//obj_key.x=obj_key.xinicial; obj_key.y=obj_key.yinicial;
						break;
		case rm_MonstersRoom: obj_player.segurando_velatemp=true; 
						break;
		case rm_Maze: obj_player.segurando_velatemp=true; 
		obj_player.segurando_key=false;
						break;
		case rm_Corridor: obj_player.segurando_velatemp=false; 
						break;
		case rm_Corridor2: obj_player.segurando_velatemp=false; 
						if(instance_exists(obj_candletemp)){
						obj_candletemp.x = 3719;
						obj_candletemp.y = 376
						obj_candletemp.lit = true
						}
						break;
		case rm_Corridor3: obj_player.segurando_velatemp=true; 
						break;
	}
    room_restart();
}
}
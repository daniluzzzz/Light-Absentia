// === INÍCIO DAS OTIMIZAÇÕES HTML5 ===
gml_pragma("optimise", "js_array_check", "push, off");
gml_pragma("optimise", "js_error_check", "push, off");
gml_pragma("optimise", "js_check_index", "push, off");
gml_pragma("optimise", "js_use_infix_ops", "push, on");
// ===================================

var move_x = 0;
var move_y = 0;
depth=-y;



if(keyboard_check(ord("W"))) { move_y -= yspeed; up=true; sprite_index=spr_playerwalkingup;}
if(keyboard_check(ord("S"))) { up=false; move_y += yspeed;
	if(right){sprite_index=spr_playerwalkingright;} else{sprite_index=spr_playerwalkingleft;}
	}
if(keyboard_check(ord("A"))) { move_x -= xspeed; right=false; if(up==false){sprite_index=spr_playerwalkingleft;}else{sprite_index=spr_playerwalkingup;}}
if(keyboard_check(ord("D"))) { move_x += xspeed; right=true; if(up==false){sprite_index=spr_playerwalkingright;}else{sprite_index=spr_playerwalkingup;}}
if (keyboard_check(ord("A")) || keyboard_check(ord("W")) || keyboard_check(ord("S")) || keyboard_check(ord("D"))) {moving=true;} else{moving=false;}
if(moving==false && up==false){
	if(right){sprite_index=spr_playerstandingright;}else{sprite_index=spr_playerstandingleft;}}
if(moving==false && up==true){sprite_index=spr_playerstandingbackwards;}

scr_collision_move(move_x, move_y, obj_monsters);

// --- Verifica se a vela existe ---
if (!vela_ja_derreteu && room != rm_TempCandle && !instance_exists(obj_candle)) {
    with (obj_candlecollisionblock) {
        instance_destroy();
    }
    exit;
}
if (keyboard_check_pressed(ord("E")) && pode_apertar_E) {
    pode_apertar_E = false;
    
// --- PEGAR a chave ---
if (!segurando_key && instance_exists(obj_key) && distance_to_object(obj_key) < 50) {

    // Solta a vela normal
    if (segurando_vela) {
        segurando_vela = false;

        if (instance_exists(obj_candle)) {
            if (right) {
                obj_candle.x = x + 150;
                obj_candle.y = y + 50;
            } else {
                obj_candle.x = x - 150;
                obj_candle.y = y + 50;
            }

            instance_create_layer(obj_candle.x, obj_candle.y, "Instances", obj_candlecollisionblock);
        }

        with (obj_playerlight) {
            instance_destroy();
        }
    }

    // Solta a vela temporária
    if (segurando_velatemp) {
        segurando_velatemp = false;

        if (instance_exists(obj_candletemp)) {
            if (right) {
                obj_candletemp.x = x + 150;
                obj_candletemp.y = y + 50;
            } else {
                obj_candletemp.x = x - 150;
                obj_candletemp.y = y + 50;
            }

            instance_create_layer(obj_candletemp.x, obj_candletemp.y, "Instances", obj_candletempcollisionblock);
        }

        with (obj_playerlighttemp) {
            instance_destroy();
        }
    }

    segurando_key = true;
}
    // --- PEGAR a vela ---
    else if (!segurando_vela && instance_exists(obj_candle) && distance_to_object(obj_candle) < 50) {
        
        if (segurando_key) {
            segurando_key = false;
        }
        
        segurando_vela = true;
        with (obj_candlecollisionblock) {
            instance_destroy();
        }
    }
    // --- SOLTAR a vela ---
    else if (segurando_vela) {
        segurando_vela = false;
        
        if (instance_exists(obj_candle)) {
            if (right) {
                obj_candle.x = x + 150;
                obj_candle.y = y + 50;
            } else {
                obj_candle.x = x - 150;
                obj_candle.y = y + 50;
            }
            instance_create_layer(obj_candle.x, obj_candle.y, "Instances", obj_candlecollisionblock);
        }
        
        with (obj_playerlight) {
            instance_destroy();
        }
    }
    // --- PEGAR a candletemp ---
    else if (!segurando_velatemp && instance_exists(obj_candletemp) && distance_to_object(obj_candletemp) < 60) {
        
        if (segurando_key) {
    segurando_key = false;

    if (right) {
        obj_key.x = x + 150;
        obj_key.y = y + 50;
    } else {
        obj_key.x = x - 150;
        obj_key.y = y + 50;
    }
}
    


if (segurando_vela) {
    segurando_vela = false;

    if (instance_exists(obj_candle)) {
        if (right) {
            obj_candle.x = x + 150;
            obj_candle.y = y + 50;
        } else {
            obj_candle.x = x - 150;
            obj_candle.y = y + 50;
        }

        instance_create_layer(
            obj_candle.x,
            obj_candle.y,
            "Instances",
            obj_candlecollisionblock
        );
    }

    with (obj_playerlight) {
        instance_destroy();
    }
}
        
        segurando_velatemp = true;
        with (obj_candletempcollisionblock) {
            instance_destroy();
        }
    }
	// --- SOLTAR a chave ---
else if (segurando_key) {
    segurando_key = false;

    if (right) {
        obj_key.x = x + 150;
        obj_key.y = y + 50;
    } else {
        obj_key.x = x - 150;
        obj_key.y = y + 50;
    }
}
    // --- SOLTAR a candletemp ---
    else if (segurando_velatemp) {
        segurando_velatemp = false;
        
        if (instance_exists(obj_candletemp)) {
            if (right) {
                obj_candletemp.x = x + 150;
                obj_candletemp.y = y + 50;
            } else {
                obj_candletemp.x = x - 150;
                obj_candletemp.y = y + 50;
            }
            instance_create_layer(obj_candletemp.x, obj_candletemp.y, "Instances", obj_candletempcollisionblock);
        }
        
        with (obj_playerlighttemp) {
            instance_destroy();
        }
    }
}

// --- Libera a tecla E para a próxima interação ---
if (keyboard_check_released(ord("E"))) {
    pode_apertar_E = true;
}

// --- SEGURAR a vela (atualizar posição) ---
if (segurando_vela && instance_exists(obj_candle)) {
	
    if (up) {
        
        obj_candle.x = x + 60;
        obj_candle.y = y;
        
        with (obj_playerlight) {
            instance_destroy();
        }
    } else {
        
        
        if (!instance_exists(obj_playerlight)) {
            instance_create_layer(x, y, "Instances", obj_playerlight);
        }
        obj_playerlight.x = x;
        obj_playerlight.y = y;
        
        if (right) {
            obj_candle.x = x - 40;
            obj_candle.y = y + 40;
        } else {
            obj_candle.x = x - 60;
            obj_candle.y = y + 40;
        }
    }
}

// --- SEGURAR a candletemp (atualizar posição) ---
if (segurando_velatemp && instance_exists(obj_candletemp)) {
	
	
    if (up) {
        
        obj_candletemp.x = x + 60;
        obj_candletemp.y = y;
        
        with (obj_playerlighttemp) {
            instance_destroy();
        }
    } else {
        
        if (!instance_exists(obj_playerlighttemp)&&obj_candletemp.lit) {
            instance_create_layer(x, y, "Instances", obj_playerlighttemp);
        }
		if(!obj_candletemp.lit&&instance_exists(obj_playerlighttemp)){
			with(obj_playerlighttemp){instance_destroy();}}
		if(instance_exists(obj_playerlighttemp)){
        obj_playerlighttemp.x = x;
        obj_playerlighttemp.y = y;}
        
        if (right) {
            obj_candletemp.x = x - 40;
            obj_candletemp.y = y + 40;
        } else {
            obj_candletemp.x = x - 60;
            obj_candletemp.y = y + 40;
        }
		}
}

// --- SEGURAR a chave (atualizar posição, seguindo o player) ---
if (segurando_key && instance_exists(obj_key)) {
    if (right) {
        obj_key.x = x + 20;
        obj_key.y = y + 20;
    } else {
        obj_key.x = x - 60;
        obj_key.y = y + 20;
    }
    
}

if (moving && !audio_is_playing(som_passos)) {
    som_passos = audio_play_sound(snd_playerfootsteps, 10, true);
}
// Se NÃO estiver movendo E o som ESTÁ tocando, para o som
else if (!moving && audio_is_playing(som_passos)) {
    audio_stop_sound(som_passos);
}


// --- MOSTRAR AVISO se tentar passar pela porta sem a vela (rm_Candle) ---
if (room == rm_Candle && !segurando_vela) {
    if (place_meeting(x, y, obj_door)) {
        
        var porta_candle = instance_nearest(x, y, obj_door);
        
        if (porta_candle != noone && !instance_exists(obj_doorneedscandletext)) {
            instance_create_layer(porta_candle.x+280, porta_candle.y - 20, "Instances", obj_doorneedscandletext);
        }
    }
}

// --- MOSTRAR AVISO se tentar passar pela obj_door3 sem a vela (rm_TempCandle) ---
if (room == rm_Hallway && !segurando_vela) {
    if (place_meeting(x, y, obj_door3)) {
        
        var porta_door3 = instance_nearest(x, y, obj_door3);
        
        if (porta_door3 != noone && !instance_exists(obj_doorneedscandletext)) {
            instance_create_layer(porta_door3.x, porta_door3.y - 50, "Instances", obj_doorneedscandletext);
        }
    }
}

// --- MOSTRAR AVISO se tentar passar pela obj_door4 sem a candletemp (rm_MonstersRoom) ---
if (room == rm_TempCandle && !segurando_velatemp) {
    if (place_meeting(x, y, obj_door4)) {
        
        var porta_door4 = instance_nearest(x, y, obj_door4);
        
        if (porta_door4 != noone && !instance_exists(obj_doorneedscandletext)) {
            instance_create_layer(porta_door4.x, porta_door4.y - 50, "Instances", obj_doorneedscandletext);
        }
    }
}
// --- MOSTRAR AVISO se tentar passar pela obj_door5 sem [item necessário] (rm_MonstersRoom) ---
if (room == rm_MonstersRoom && !segurando_velatemp) {
    if (place_meeting(x, y, obj_door5)) {
        
        var porta_door5 = instance_nearest(x, y, obj_door5);
        
        if (porta_door5 != noone && !instance_exists(obj_doorneedscandletext)) {
            instance_create_layer(porta_door5.x, porta_door5.y - 50, "Instances", obj_doorneedscandletext);
        }
    }
}
// --- MOSTRAR AVISO se tentar passar pela obj_door6 sem [item necessário] (room correspondente) ---
if (room == rm_Maze && !segurando_velatemp) {
    if (place_meeting(x, y, obj_door6)) {
        
        var porta_door6 = instance_nearest(x, y, obj_door6);
        
        if (porta_door6 != noone && !instance_exists(obj_doorneedscandletext)) {
            instance_create_layer(porta_door6.x, porta_door6.y + 20, "Instances", obj_doorneedscandletext);
        }
    }
}
// --- VERIFICAR COLISÃO COM A PORTA ---
// Só pode trocar de room se:
// 1 - Estiver segurando a vela
// 2 - Os textos já sumiram
// 3 - Estiver colidindo com a porta
// 4 - Estiver na room rm_Candle

if (room == rm_Candle && segurando_vela && instance_exists(obj_textcontroller) && obj_textcontroller.textos_finalizados) {
    if (place_meeting(x, y, obj_door)) {
        // Troca de room
        room_goto(rm_Hallway); // Substitua pelo nome da sua room ---------------------------------------
    }
}
// --- MOSTRAR AVISO "Door is locked." se tentar abrir sem chave ---
if (keyboard_check_pressed(ord("F")) && !segurando_key) {
    if (instance_exists(obj_lockeddoor) && distance_to_object(obj_lockeddoor) < 60) {
        
        var porta_bloqueada = instance_nearest(x, y, obj_lockeddoor);
        
        if (porta_bloqueada != noone && !instance_exists(obj_doorlockedtext)) {
            instance_create_layer(porta_bloqueada.x, porta_bloqueada.y + 35, "Instances", obj_doorlockedtext);
        }
    }
}
// --- ABRIR PORTA TRANCADA (tecla F) ---
if (keyboard_check_pressed(ord("F")) && segurando_key) {
    if (instance_exists(obj_lockeddoor) && distance_to_object(obj_lockeddoor) < 60) {
		if(room==rm_Hallway){
        
        var porta = instance_place(x, y, obj_lockeddoor);
        if (porta == noone) {
            porta = instance_nearest(x, y, obj_lockeddoor);
        }
        
        if (porta != noone) {
            var porta_x = porta.x;
            var porta_y = porta.y;
            
            var dooropen_offset_x = 147;
            var dooropen_offset_y = 152;
            
            var door_offset_x = 0;
            var door_offset_y = 20;
            
            instance_create_layer(porta_x + dooropen_offset_x, porta_y + dooropen_offset_y, "Instances", obj_dooropen);
            
            var nova_door = instance_create_layer(porta_x + door_offset_x, porta_y + door_offset_y, "Instances", obj_door3);
            nova_door.image_xscale = 5;
            nova_door.image_yscale = 5;
            
            instance_destroy(porta);
            
            if (instance_exists(obj_key)) {
                instance_destroy(obj_key);
            }
            segurando_key = false;
        }
		}
		if(room==rm_TempCandle){
        
        var porta = instance_place(x, y, obj_lockeddoor);
        if (porta == noone) {
            porta = instance_nearest(x, y, obj_lockeddoor);
        }
        
        if (porta != noone) {
            var porta_x = porta.x;
            var porta_y = porta.y;
            
            var dooropen_offset_x = 147;
            var dooropen_offset_y = 152;
            
            var door_offset_x = 20;
            var door_offset_y = 20;
            
            instance_create_layer(porta_x + dooropen_offset_x, porta_y + dooropen_offset_y, "Instances", obj_dooropen);
            
            var nova_door = instance_create_layer(porta_x + door_offset_x, porta_y + door_offset_y, "Instances", obj_door4);
            nova_door.image_xscale = 5;
            nova_door.image_yscale = 5;
            
            instance_destroy(porta);
            
            if (instance_exists(obj_key)) {
                instance_destroy(obj_key);
            }
            segurando_key = false;
        }
		}
		if(room==rm_Maze){
        
        var porta = instance_place(x, y, obj_lockeddoor);
        if (porta == noone) {
            porta = instance_nearest(x, y, obj_lockeddoor);
        }
        
        if (porta != noone) {
            var porta_x = porta.x;
            var porta_y = porta.y;
            
            var dooropen_offset_x = 147;
            var dooropen_offset_y = 152;
            
            var door_offset_x = 20;
            var door_offset_y = 20;
            
            instance_create_layer(porta_x + dooropen_offset_x, porta_y + dooropen_offset_y, "Instances", obj_dooropen);
            
            var nova_door = instance_create_layer(porta_x + door_offset_x, porta_y + door_offset_y, "Instances", obj_door6);
            nova_door.image_xscale = 5;
            nova_door.image_yscale = 5;
            
            instance_destroy(porta);
            
            if (instance_exists(obj_key)) {
                instance_destroy(obj_key);
            }
            segurando_key = false;
        }
		}
		}
}

// F pra acender a temp candle
if (keyboard_check_pressed(ord("F")) && segurando_velatemp){
	if(instance_exists(obj_campfire)&&distance_to_object(obj_campfire)<60){
		if(!obj_candletemp.lit){
	obj_candletemp.lit=true;}else{obj_candletempbar.image_index=0;}
	}
	
	}
	
// acender as campfire
if(instance_exists(obj_candletemp)){if(segurando_velatemp&&obj_candletemp.lit){
		if (keyboard_check_pressed(ord("F")) && distance_to_object(obj_campfire2)<60){
			instance_create_layer(obj_campfire2.x, obj_campfire2.y, "Instances", obj_campfire);
			instance_create_layer(obj_campfire2.x, obj_campfire2.y, "Instances", obj_campfirelight);
			with(obj_campfire2){instance_destroy();}}
		if (keyboard_check_pressed(ord("F")) && distance_to_object(obj_campfire3)<60){
			instance_create_layer(obj_campfire3.x, obj_campfire3.y, "Instances", obj_campfire);
			instance_create_layer(obj_campfire3.x, obj_campfire3.y, "Instances", obj_campfirelight);
			with(obj_campfire3){instance_destroy();}}
		if (keyboard_check_pressed(ord("F")) && distance_to_object(obj_campfire4)<60){
			instance_create_layer(obj_campfire4.x, obj_campfire4.y, "Instances", obj_campfire);
			instance_create_layer(obj_campfire4.x, obj_campfire4.y, "Instances", obj_campfirelight);
			with(obj_campfire4){instance_destroy();}}
}}
// --- VERIFICAR COLISÃO COM AS PORTAS ---
if (place_meeting(x, y, obj_door3)&&segurando_vela) {
    room_goto(rm_TempCandle);
}
if (place_meeting(x, y, obj_door4)&&segurando_velatemp) {
    room_goto(rm_MonstersRoom);
}
if (place_meeting(x, y, obj_door5)&&segurando_velatemp) {
    room_goto(rm_Maze);
}
if (place_meeting(x, y, obj_door6)&&segurando_velatemp) {
    room_goto(rm_Corridor);
}
if (place_meeting(x, y, obj_door7)) {
    room_goto(rm_Corridor2);
}
if (place_meeting(x, y, obj_door8)) {
    room_goto(rm_Corridor3);
}
if (place_meeting(x, y, obj_door9))
{
    instance_create_layer(0, 0, "Instances", obj_levelcomplete);
}



// --- MOSTRAR ÍCONE "F" perto da porta trancada ou da campfire ---
var perto_lockeddoor = (instance_exists(obj_lockeddoor) && distance_to_object(obj_lockeddoor) < 60);
var perto_campfire = (instance_exists(obj_campfire) && distance_to_object(obj_campfire) < 60);
var campfireproxima = instance_nearest(x, y, obj_campfire);

var perto_campfire2 = (instance_exists(obj_campfire2) && distance_to_object(obj_campfire2) < 60);
var perto_campfire3 = (instance_exists(obj_campfire3) && distance_to_object(obj_campfire3) < 60);
var perto_campfire4 = (instance_exists(obj_campfire4) && distance_to_object(obj_campfire4) < 60);

if (perto_lockeddoor || perto_campfire || perto_campfire2 || perto_campfire3 || perto_campfire4) {

    var alvo_f_x, alvo_f_y;

    if (perto_lockeddoor) {
        alvo_f_x = obj_lockeddoor.x + offset_letterf_x;
        alvo_f_y = obj_lockeddoor.y + offset_letterf_y;
    }

    if (perto_campfire) {
        alvo_f_x = campfireproxima.x;
        alvo_f_y = campfireproxima.y - 150;
    }

    if (perto_campfire2) {
        alvo_f_x = obj_campfire2.x;
        alvo_f_y = obj_campfire2.y - 150;
    }

    if (perto_campfire3) {
        alvo_f_x = obj_campfire3.x;
        alvo_f_y = obj_campfire3.y - 150;
    }

    if (perto_campfire4) {
        alvo_f_x = obj_campfire4.x;
        alvo_f_y = obj_campfire4.y - 150;
    }

    if (!instance_exists(obj_letterf)) {
        instance_create_layer(alvo_f_x, alvo_f_y, "Instances", obj_letterf);
    } else {
        obj_letterf.fading_out = false;
        obj_letterf.x = alvo_f_x;
        obj_letterf.y = alvo_f_y;
    }

} else {

    if (instance_exists(obj_letterf)) {
        obj_letterf.fading_out = true;
    }
}
// --- MOSTRAR ÍCONE "E" perto da vela, chave ou candletemp ---
var perto_candle = (!segurando_vela && instance_exists(obj_candle) && distance_to_object(obj_candle) < 60);
var perto_key = (!segurando_key && instance_exists(obj_key) && distance_to_object(obj_key) < 60);
var perto_candletemp = (!segurando_velatemp && instance_exists(obj_candletemp) && distance_to_object(obj_candletemp) < 60);

if (perto_candle || perto_key || perto_candletemp) {
    
    var alvo_x, alvo_y;
    
    if (perto_candle) {
        alvo_x = obj_candle.x;
        alvo_y = obj_candle.y;
    } else if (perto_key) {
        alvo_x = obj_key.x;
        alvo_y = obj_key.y;
    } else {
        alvo_x = obj_candletemp.x;
        alvo_y = obj_candletemp.y;
    }
    
    if (!instance_exists(obj_lettere)) {
        instance_create_layer(alvo_x + offset_lettere_x, alvo_y + offset_lettere_y, "Instances", obj_lettere);
    } else {
        obj_lettere.fading_out = false;
        obj_lettere.x = alvo_x + offset_lettere_x;
        obj_lettere.y = alvo_y + offset_lettere_y;
    }
    
} else {
    
    if (instance_exists(obj_lettere)) {
        obj_lettere.fading_out = true;
    }
}
// --- TOMAR DANO ao encostar em monstro ---
if (!invencivel
    && !game_over_ativado
    && !instance_exists(obj_fadetoblack)
    && !instance_exists(obj_gameoverscreen)
    && instance_exists(obj_monsters))
{
    var monstro_perto = instance_place(x, y, obj_monsters);
    
    if (monstro_perto == noone) {
        var dist = distance_to_object(obj_monsters);
        if (dist < 20) {
            vida -= 1;
            invencivel = true;
            alarm[0] = tempo_invencivel;
			

som_ghost1 = audio_play_sound(snd_ghost1, 10, false);
audio_sound_set_track_position(som_ghost1, 0.8);
			som_ghost1 = audio_play_sound(snd_ghost1, 10, false);
audio_sound_set_track_position(som_ghost1, 0.8);
            
            
        }
    }
}
if (room == rm_TempCandle && !alarme_candle_ativado) {
    alarm[1] = 120;
    alarme_candle_ativado = true;
}

if (instance_exists(obj_candle) && obj_candle.sprite_index == spr_candlemelting) {
    if (obj_candle.image_index >= obj_candle.image_number - 1) {
        with (obj_candle) {
            instance_destroy();
        }
        
        if (instance_exists(obj_playerlight)) {
            with (obj_playerlight) {
                instance_destroy();
            }
        }
        
        if (instance_exists(obj_candlelight)) {
            with (obj_candlelight) {
                instance_destroy();
            }
        }
        
        if (instance_exists(obj_candlecollisionblock)) {
            with (obj_candlecollisionblock) {
                instance_destroy();
            }
        }
        
        vela_ja_derreteu = true;
    }
}
// --- RED SCREEN baseado em proximidade com monstros ---
if (instance_exists(obj_monsters)) {
    
    var dist_monstro = distance_to_object(obj_monsters);
    
    if (dist_monstro < 50) {
        
        var alpha_calculado = clamp((1 - (dist_monstro / 50)) * 0.2, 0, 0.2);
        
        if (!instance_exists(obj_redscreen)) {
            var nova_redscreen = instance_create_layer(0, 0, "Instances", obj_redscreen);
            nova_redscreen.image_alpha = alpha_calculado;
        } else {
            obj_redscreen.image_alpha = alpha_calculado;
        }
        
    } else {
        
        if (instance_exists(obj_redscreen)) {
            instance_destroy(obj_redscreen);
        }
    }
    
} else {
    
    if (instance_exists(obj_redscreen)) {
        instance_destroy(obj_redscreen);
    }
}
// --- DERRETER A CANDLETEMP na rm_Corridor ---
if (room == rm_Corridor && !alarme_candletemp_ativado) {
    alarm[2] = 60; // 2 segundos a 60fps
    alarme_candletemp_ativado = true;
}

if (instance_exists(obj_candletemp) && obj_candletemp.sprite_index == spr_candletempmelting) {
    if (obj_candletemp.image_index >= obj_candletemp.image_number - 1) {
        with (obj_candletemp) {
            instance_destroy();
        }
        
        if (instance_exists(obj_playerlighttemp)) {
            with (obj_playerlighttemp) {
                instance_destroy();
            }
        }
        
        if (instance_exists(obj_candletemplight)) {
            with (obj_candletemplight) {
                instance_destroy();
            }
        }
        
        if (instance_exists(obj_candletempcollisionblock)) {
            with (obj_candletempcollisionblock) {
                instance_destroy();
            }
        }
        
        if (instance_exists(obj_candletempbar)) {
            with (obj_candletempbar) {
                instance_destroy();
            }
        }
        
        candletemp_ja_derreteu = true;
		if (room==rm_Corridor && !instance_exists(obj_candletemp)){segurando_velatemp=false;}
    }
}

if (vida <= 0 && !game_over_ativado) {
    game_over_ativado = true;
    musica_pos_gameover_tocada = false;
    instance_create_layer(0, 0, "Instances", obj_fadetoblack);
}

if (instance_exists(obj_gameoverscreen))
{
    if (audio_is_playing(som_passos))
{
    audio_sound_gain(som_passos, 0, 500);
}
    if (audio_is_playing(som_candlefire))
{
    audio_sound_gain(som_candlefire, 0, 500);
}
    if (audio_is_playing(som_ghost1))
{
    audio_sound_gain(som_ghost1, 0, 500);
}
	

    if (!fade_audio_gameover)
    {
        fade_audio_gameover = true;
        alarm[3] = room_speed div 2;
    }
}
if (instance_exists(obj_gameoverscreen)) {
    if (obj_gameoverscreen.sumir && !musica_pos_gameover_tocada) {
        musica_pos_gameover_tocada = true;
        
        if (audio_is_playing(snd_gameoverscreen)) {
            audio_stop_sound(snd_gameoverscreen);
        }
        
        switch (room) {
            case rm_Corridor:
            case rm_Corridor2:
            case rm_Corridor3:
                audio_sound_gain(snd_corridormusic, 1, 500);
                break;
            
            default:
                audio_sound_gain(snd_defaultbackgroundmusic, 1, 500);
                break;
        }
    }
}
// soltou vela normal
if (estava_seg_vela && !segurando_vela)
{
    audio_play_sound(snd_placingcandle, 10, false);
}


// soltou vela temp
if (estava_seg_velatemp && !segurando_velatemp)
{
    audio_play_sound(snd_placingcandle, 10, false);
}


// atualiza estados
estava_seg_vela = segurando_vela;
estava_seg_velatemp = segurando_velatemp;

// === FIM DAS OTIMIZAÇÕES HTML5 ===
gml_pragma("optimise", "js_use_infix_ops", "pop");
gml_pragma("optimise", "js_check_index", "pop");
gml_pragma("optimise", "js_error_check", "pop");
gml_pragma("optimise", "js_array_check", "pop");
// ================================
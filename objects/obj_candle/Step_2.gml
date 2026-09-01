if (obj_player.vela_no_chao) { depth = -y + 100; }

if (obj_player.segurando_vela) {
    if (obj_player.up) {
        depth = obj_player.depth + 1;
    } else {
        depth = obj_player.depth - 1;
    }
} else {
    depth = -y + 100;
}

if (!instance_exists(obj_fadetoblack) && !instance_exists(obj_gameoverscreen)) {
    if (lit && !audio_is_playing(obj_player.som_candlefire)) {
        obj_player.som_candlefire = audio_play_sound(snd_candlefire, 10, true, 1, 3);
    } else if (!lit && audio_is_playing(obj_player.som_candlefire)) {
        audio_stop_sound(obj_player.som_candlefire);
    }
}
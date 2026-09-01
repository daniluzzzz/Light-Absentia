if (instance_exists(obj_candletemp)) {
    obj_candletemp.sprite_index = spr_candletempmelting;
    obj_candletemp.derretendo = true; // trava o Step dela pra não sobrescrever mais
}
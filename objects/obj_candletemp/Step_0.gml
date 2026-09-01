depth = -y + 100;

if (!derretendo) {
    if (lit) {
        sprite_index = spr_candletemp;
        if (!instance_exists(obj_candletemplight)) {
            instance_create_layer(x, y, "Instances", obj_candletemplight);
        }
    } else {
        sprite_index = spr_candletempnotlit;
        with (obj_candletemplight) {
            instance_destroy();
        }
    }
}
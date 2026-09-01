depth = -y;
move_x = 0;
move_y = 0;
var light = instance_place(x, y, obj_candlelight);
if (light == noone) {
    light = instance_place(x, y, obj_walltorchlight);
}
if (light == noone) {
    light = instance_place(x, y, obj_campfirelight);
}
if (light == noone) {
    light = instance_place(x, y, obj_candletemplight);
}
if (light != noone)
{
    var dir = point_direction(light.x, light.y, x, y);
    move_x = lengthdir_x(move_speed, dir);
    move_y = lengthdir_y(move_speed, dir);
}
else
{
    if (!player_esta_na_luz())
    {
        var dir = point_direction(x, y, obj_player.x, obj_player.y);
        move_x = lengthdir_x(move_speed, dir);
        move_y = lengthdir_y(move_speed, dir);
    }
}

// --- Inverte o sprite baseado na direção horizontal do movimento ---
if (move_x > 0) {
    image_xscale = -7;
} else if (move_x < 0) {
    image_xscale = 7;
}

scr_collision_move(move_x, move_y, obj_player, obj_monsters);
// atualiza a câmera caso ela mude
cam = camera_get_active();

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);


// Fade branco entrando
if (estado == 0)
{
    alpha_white += 0.02;

    if (alpha_white >= 1)
    {
        alpha_white = 1;
        estado = 1;

        room_goto(rm_Menu2);
    }
}


// depois que mudou de room
else if (estado == 1)
{
    alpha_text += 0.02;

    if (alpha_text >= 1)
    {
        alpha_text = 1;
        estado = 2;
    }
}


// espera texto sumir
else if (estado == 2)
{
    alarm[0] = room_speed * 7;
    estado = 3;
}


// fade out texto
else if (estado == 3)
{
    alpha_text -= 0.01;

    if (alpha_text <= 0)
    {
        alpha_text = 0;
        estado = 4;
    }
}


// fade out branco
else if (estado == 4)
{
    alpha_white -= 0.01;

    if (alpha_white <= 0)
    {
        instance_destroy();
    }
}
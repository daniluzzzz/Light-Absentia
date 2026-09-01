if (room != ultima_room)
{
    ultima_room = room;
    alpha = 1;
}

if (alpha > 0)
{
    alpha -= fade_speed;

    if (alpha < 0)
        alpha = 0;
}
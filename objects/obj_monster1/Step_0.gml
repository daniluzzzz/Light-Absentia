event_inherited();
moving = (x != last_x || y != last_y);

last_x = x;
last_y = y;
if (moving)
{
    sprite_index = spr_monster1walking;
}
else
{
    sprite_index = spr_monster1standing;
}

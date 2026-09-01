function scr_collision_move(move_x, move_y, obj_extra, obj_extra2 = noone)
{
    // --- Move em sub-passos de 1 pixel no eixo X ---
    var steps_x = abs(move_x);
    var dir_x = sign(move_x);
    repeat (steps_x)
    {
        if (!place_meeting(x + dir_x, y, obj_collisionblock) && !place_meeting(x + dir_x, y, obj_candletempcollisionblock) && !place_meeting(x + dir_x, y, obj_extra) && !place_meeting(x + dir_x, y, obj_extra2))
        {
            x += dir_x;
        }
        else
        {
            break;
        }
    }
    // --- Move em sub-passos de 1 pixel no eixo Y ---
    var steps_y = abs(move_y);
    var dir_y = sign(move_y);
    repeat (steps_y)
    {
        if (!place_meeting(x, y + dir_y, obj_collisionblock) && !place_meeting(x, y + dir_y, obj_candletempcollisionblock) && !place_meeting(x, y + dir_y, obj_extra) && !place_meeting(x, y + dir_y, obj_extra2))
        {
            y += dir_y;
        }
        else
        {
            break;
        }
    }
    // --- Slide diagonal quando travado no eixo X ---
    if (move_x != 0 && (place_meeting(x + dir_x, y, obj_collisionblock) || place_meeting(x + dir_x, y, obj_candletempcollisionblock) || place_meeting(x + dir_x, y, obj_extra) || place_meeting(x + dir_x, y, obj_extra2)))
    {
        var range = 16;
        for (var i = 1; i <= range; i++)
        {
            if (!place_meeting(x + dir_x, y - i, obj_collisionblock) && !place_meeting(x + dir_x, y - i, obj_candletempcollisionblock) && !place_meeting(x + dir_x, y - i, obj_extra) && !place_meeting(x + dir_x, y - i, obj_extra2))
            {
                if (!place_meeting(x, y - 1, obj_collisionblock) && !place_meeting(x, y - 1, obj_candletempcollisionblock) && !place_meeting(x, y - 1, obj_extra) && !place_meeting(x, y - 1, obj_extra2))
                    y -= 1;
                break;
            }
            if (!place_meeting(x + dir_x, y + i, obj_collisionblock) && !place_meeting(x + dir_x, y + i, obj_candletempcollisionblock) && !place_meeting(x + dir_x, y + i, obj_extra) && !place_meeting(x + dir_x, y + i, obj_extra2))
            {
                if (!place_meeting(x, y + 1, obj_collisionblock) && !place_meeting(x, y + 1, obj_candletempcollisionblock) && !place_meeting(x, y + 1, obj_extra) && !place_meeting(x, y + 1, obj_extra2))
                    y += 1;
                break;
            }
        }
    }
    if (move_y != 0 && (place_meeting(x, y + dir_y, obj_collisionblock) || place_meeting(x, y + dir_y, obj_candletempcollisionblock) || place_meeting(x, y + dir_y, obj_extra) || place_meeting(x, y + dir_y, obj_extra2)))
    {
        var range = 16;
        for (var i = 1; i <= range; i++)
        {
            if (!place_meeting(x - i, y + dir_y, obj_collisionblock) && !place_meeting(x - i, y + dir_y, obj_candletempcollisionblock) && !place_meeting(x - i, y + dir_y, obj_extra) && !place_meeting(x - i, y + dir_y, obj_extra2))
            {
                if (!place_meeting(x - 1, y, obj_collisionblock) && !place_meeting(x - 1, y, obj_candletempcollisionblock) && !place_meeting(x - 1, y, obj_extra) && !place_meeting(x - 1, y, obj_extra2))
                    x -= 1;
                break;
            }
            if (!place_meeting(x + i, y + dir_y, obj_collisionblock) && !place_meeting(x + i, y + dir_y, obj_candletempcollisionblock) && !place_meeting(x + i, y + dir_y, obj_extra) && !place_meeting(x + i, y + dir_y, obj_extra2))
            {
                if (!place_meeting(x + 1, y, obj_collisionblock) && !place_meeting(x + 1, y, obj_candletempcollisionblock) && !place_meeting(x + 1, y, obj_extra) && !place_meeting(x + 1, y, obj_extra2))
                    x += 1;
                break;
            }
        }
    }
}
switch (estado)
{
    case "fade_in":

        alpha += fade_speed;

        if (alpha >= 1)
        {
            alpha = 1;
            estado = "espera";
        }

    break;


    case "espera":

        timer--;

        if (timer <= 0)
        {
            estado = "fade_out";
        }

    break;


    case "fade_out":

        alpha -= fade_speed;

        if (alpha <= 0)
        {
            alpha = 0;
            instance_destroy();
        }

    break;
}
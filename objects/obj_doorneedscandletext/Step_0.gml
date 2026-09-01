switch (estado) {
    
    case "entrando":
        image_alpha += fade_speed;
        if (image_alpha >= 1) {
            image_alpha = 1;
            estado = "esperando";
            timer = 0;
        }
        break;
    
    case "esperando":
        timer++;
        if (timer >= tempo_visivel) {
            estado = "saindo";
        }
        break;
    
    case "saindo":
        image_alpha -= fade_speed;
        if (image_alpha <= 0) {
            instance_destroy();
        }
        break;
}
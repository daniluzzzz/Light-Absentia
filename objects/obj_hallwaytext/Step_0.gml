switch (estado) {
    
    case "entrando1":
        image_alpha += fade_speed;
        if (image_alpha >= 1) {
            image_alpha = 1;
            estado = "esperando1";
            timer = 0;
        }
        break;
    
    case "esperando1":
        timer++;
        if (timer >= tempo_visivel) {
            estado = "saindo1";
        }
        break;
    
    case "saindo1":
        image_alpha -= fade_speed;
        if (image_alpha <= 0) {
            image_alpha = 0;
            texto_atual = texto2;
            estado = "entrando2";
        }
        break;
    
    case "entrando2":
        image_alpha += fade_speed;
        if (image_alpha >= 1) {
            image_alpha = 1;
            estado = "esperando2";
            timer = 0;
        }
        break;
    
    case "esperando2":
        timer++;
        if (timer >= tempo_visivel) {
            estado = "saindo2";
        }
        break;
    
    case "saindo2":
        image_alpha -= fade_speed;
        if (image_alpha <= 0) {
            instance_destroy(); // termina a sequência, remove o objeto
        }
        break;
}
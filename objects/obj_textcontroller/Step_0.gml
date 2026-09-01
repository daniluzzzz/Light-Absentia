// Se já apertou E e o texto 1 sumiu
if (ja_apertei_E == false && keyboard_check_pressed(ord("E"))) {
    ja_apertei_E = true;
}

// Texto 1 sumindo
if (ja_apertei_E && mostrando_texto2 == false) {
    alpha -= fade_speed;
    if (alpha <= 0) {
        alpha = 0;
        mostrando_texto2 = true; // Começa a mostrar o texto 2
    }
}

// Texto 2 aparecendo (depois de 3 segundos) - SÓ UMA VEZ
if (mostrando_texto2 && texto2_ja_apareceu == false) {
    contador += 1;
    if (contador >= 15) { // 3 segundos
        texto2_alpha += fade_speed;
        if (texto2_alpha >= 1) {
            texto2_alpha = 1;
            texto2_ja_apareceu = true;  // MARCA QUE JÁ APARECEU
        }
    }
}

// --- FAZ O TEXTO 2 SUMIR QUANDO APERTAR E ---
if (texto2_ja_apareceu && keyboard_check_pressed(ord("E")) && texto2_fading == false) {
    texto2_fading = true;
}

// Texto 2 sumindo
if (texto2_fading == true) {
    texto2_alpha -= fade_speed;
    if (texto2_alpha <= 0) {
        texto2_alpha = 0;
        texto2_fading = false;
        // Não reseta mostrando_texto2 nem texto2_ja_apareceu
        // Assim o texto não reaparece
    }
}
if (alpha == 0 && texto2_alpha == 0 && texto2_ja_apareceu) {
    textos_finalizados = true;
}
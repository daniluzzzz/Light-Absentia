// --- F11: alterna entre tela cheia e janela ---
if (keyboard_check_pressed(vk_f11)) {
    if (window_get_fullscreen()) {
        window_set_fullscreen(false);
    } else {
        window_set_fullscreen(true);
    }
}

// --- ESC: sai da tela cheia (só se estiver em tela cheia) ---
if (keyboard_check_pressed(vk_escape)) {
    if (window_get_fullscreen()) {
        window_set_fullscreen(false);
    }
}
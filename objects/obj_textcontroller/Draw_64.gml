// --- CONFIGURAÇÕES DA FONTE ---
draw_set_font(fnt_jersey10);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() - 100;

// Texto 1
if (alpha > 0) {
    draw_set_alpha(alpha);
    draw_text(cx, cy, "Press E to interact");
}

// Texto 2 (SÓ DESENHA SE AINDA NÃO SUMIU COMPLETAMENTE)
if (texto2_alpha > 0 && texto2_ja_apareceu) {
    draw_set_alpha(texto2_alpha);
    draw_text(cx, cy, "Press E to drop candle");
}

draw_set_alpha(1);
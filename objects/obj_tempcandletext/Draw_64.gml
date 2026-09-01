draw_set_font(fnt_jersey10);
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var cx = display_get_gui_width() / 2;
var cy = display_get_gui_height() - 100;

draw_set_alpha(image_alpha);
draw_text(cx, cy, texto_atual);
draw_set_alpha(1);
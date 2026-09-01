draw_set_font(fnt_jersey10); // troque pela fonte que você usa
draw_set_colour(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_alpha(image_alpha);

draw_text(x, y, "Door is locked.");

draw_set_alpha(1);
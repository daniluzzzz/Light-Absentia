var cam = camera_get_active();

var cx = camera_get_view_x(cam);
var cy = camera_get_view_y(cam);
var cw = camera_get_view_width(cam);
var ch = camera_get_view_height(cam);


draw_set_font(fnt_jersey10);
draw_set_color(c_white);
draw_set_alpha(alpha);

draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

draw_text(
    cx + cw / 2,
    cy + ch - 30,
    "Coming Soon!"
);

draw_set_alpha(1);
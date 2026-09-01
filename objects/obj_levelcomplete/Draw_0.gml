var cam = camera_get_active();

var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);


// tela branca
draw_set_alpha(alpha_white);
draw_set_color(c_white);

draw_rectangle(
    cam_x,
    cam_y,
    cam_x + cam_w,
    cam_y + cam_h,
    false
);


// texto
draw_set_alpha(alpha_text);
draw_set_font(fnt_jersey10);
draw_set_color(c_black);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_text(
    cam_x + cam_w / 2,
    cam_y + cam_h / 2,
    "Level Complete!"
);


draw_set_alpha(1);
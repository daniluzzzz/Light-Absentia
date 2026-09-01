// Draw Event do obj_lifebar
gpu_set_blendmode(bm_normal);
draw_set_alpha(1);

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

var escala = 7;

draw_sprite_ext(sprite_index, image_index, cam_x + pos_x, cam_y + pos_y, escala, escala, 0, c_white, 1);
gpu_set_blendmode(bm_normal);

var cam = view_camera[0];
var cam_x = camera_get_view_x(cam);
var cam_y = camera_get_view_y(cam);
var cam_w = camera_get_view_width(cam);
var cam_h = camera_get_view_height(cam);

x = cam_x;
y = cam_y;
image_xscale = cam_w / sprite_width;
image_yscale = cam_h / sprite_height;

draw_self();
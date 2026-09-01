// Draw Event do obj_lightingcontroller
if (instance_exists(obj_candlelight)) {
    var w = 445;
    var h = 295;
    var offset_y = 125;
    var center_y = obj_candlelight.y - offset_y;
    
    draw_set_alpha(0.05);
    draw_ellipse_color(obj_candlelight.x - w, center_y - h, obj_candlelight.x + w, center_y + h, c_white, c_white, false);
}
if (instance_exists(obj_candletemplight)) {
    var w2 = 445;
    var h2 = 295;
    var offset_y2 = 125;
    var center_y2 = obj_candletemplight.y - offset_y2;
    
    draw_set_alpha(0.05);
    draw_ellipse_color(obj_candletemplight.x - w2, center_y2 - h2, obj_candletemplight.x + w2, center_y2 + h2, c_white, c_white, false);
}
if (instance_exists(obj_campfirelight)) {
with (obj_campfirelight)
{
    var w = 445;
    var h = 295;
    var offset_y = 125;
    var center_y = y - offset_y;

    draw_set_alpha(0.05);
    draw_ellipse_color(
        x - w,
        center_y - h,
        x + w,
        center_y + h,
        c_white,
        c_white,
        false
    );
}
}
if (instance_exists(obj_walltorchlight)) {
    var tw = 445;
    var th = 295;
    var toffset_y = -130;
    var tcenter_y = obj_walltorchlight.y - toffset_y;
    
    draw_set_alpha(0.05);
    draw_ellipse_color(
        obj_walltorchlight.x - tw,
        tcenter_y - th,
        obj_walltorchlight.x + tw,
        tcenter_y + th,
        c_white,
        c_white,
        false
    );
}
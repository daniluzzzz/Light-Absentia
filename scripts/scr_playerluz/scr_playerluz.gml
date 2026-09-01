function player_esta_na_luz()
{
    var na_luz = false;
    
    // Vela normal
    if (instance_exists(obj_candlelight)) {
        var w = 445;
        var h = 295;
        var offset_y = 125;
        var center_y = obj_candlelight.y - offset_y;
        
        var dx = (obj_player.x - obj_candlelight.x) / w;
        var dy = (obj_player.y - center_y) / h;
        if ((dx * dx + dy * dy) <= 1) {
            na_luz = true;
        }
    }
    
    // Vela temporária
    if (!na_luz && instance_exists(obj_candletemplight)) {
        var w = 445;
        var h = 295;
        var offset_y = 125;
        var center_y = obj_candletemplight.y - offset_y;
        
        var dx = (obj_player.x - obj_candletemplight.x) / w;
        var dy = (obj_player.y - center_y) / h;
        if ((dx * dx + dy * dy) <= 1) {
            na_luz = true;
        }
    }
    
    // Fogueira (testa TODAS as instâncias via loop manual)
    if (!na_luz && instance_exists(obj_campfirelight)) {
        var w = 445;
        var h = 295;
        var offset_y = 125;
        
        var num_fogueiras = instance_number(obj_campfirelight);
        for (var i = 0; i < num_fogueiras; i++) {
            var inst = instance_find(obj_campfirelight, i);
            var center_y = inst.y - offset_y;
            var dx = (obj_player.x - inst.x) / w;
            var dy = (obj_player.y - center_y) / h;
            if ((dx * dx + dy * dy) <= 1) {
                na_luz = true;
                break;
            }
        }
    }
    
    // Tocha
    if (!na_luz && instance_exists(obj_walltorchlight)) {
        var tw = 445;
        var th = 295;
        var toffset_y = -130;
        var tcenter_y = obj_walltorchlight.y - toffset_y;
        
        var dx2 = (obj_player.x - obj_walltorchlight.x) / tw;
        var dy2 = (obj_player.y - tcenter_y) / th;
        if ((dx2 * dx2 + dy2 * dy2) <= 1) {
            na_luz = true;
        }
    }
    
    return na_luz;
}
if (instance_exists(obj_candletemp)) {
	if(!obj_player.up&&obj_player.segurando_velatemp){
    x = obj_candletemp.x - 40;
    y = obj_candletemp.y + 5;
	image_xscale=7;
    visible = true;}
	if(obj_player.up&&obj_player.segurando_velatemp){
    x = obj_candletemp.x + 40;
    y = obj_candletemp.y + 5;
	image_xscale=-7;
	visible=true;} else{
		x = obj_candletemp.x - 40;
    y = obj_candletemp.y + 5;
    visible = true;}
} else {
    visible = false;
}
if (obj_player.segurando_velatemp) {
    if (obj_player.up) {
        depth = obj_player.depth + 1;
    } else {
        depth = obj_player.depth - 1;
    }
} else {
    depth = -y + 100;
}
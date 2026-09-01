if (obj_player.segurando_key) {
	if(obj_player.up){depth=obj_player.depth+1;}else{
    depth = obj_player.depth - 1;}
} else {
    depth = -y+100;
}
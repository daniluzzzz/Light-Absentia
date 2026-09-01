if(place_meeting(x, y, obj_player)){obj_arrow.pronto=true;}
if(obj_arrow.pronto){instance_destroy();}
if(instance_exists(obj_fade)){
	
	with(obj_fade){instance_destroy();}
}
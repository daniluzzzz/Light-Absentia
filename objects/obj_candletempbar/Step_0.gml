if(sprite_index==spr_candletempbar){
if (image_index >= image_number - 1) {
    sprite_index=spr_candletempbarempty;
	obj_candletemp.lit=false;
}}
if(obj_candletemp.lit){sprite_index=spr_candletempbar;}
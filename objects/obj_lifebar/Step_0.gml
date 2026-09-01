if (instance_exists(obj_player)) {
    
    if (obj_player.vida != vida_anterior) {
        
        if (obj_player.vida == 2 && vida_anterior == 3) {
            sprite_index = spr_lifebargoing2;
            image_index = 0;
        }
        else if (obj_player.vida == 1 && vida_anterior == 2) {
            sprite_index = spr_lifebargoing1;
            image_index = 0;
        }
        else if (obj_player.vida == 0 && vida_anterior == 1) {
            sprite_index = spr_lifebargoing0;
            image_index = 0;
        }
        else {
            switch (obj_player.vida) {
                case 3: sprite_index = spr_lifebar3; break;
                case 2: sprite_index = spr_lifebar2; break;
                case 1: sprite_index = spr_lifebar1; break;
                case 0: sprite_index = spr_lifebar0; break;
            }
        }
        
        vida_anterior = obj_player.vida;
    }
    
    // Verifica fim da transição 3->2
    if (sprite_index == spr_lifebargoing2 && image_index >= image_number - 1) {
        sprite_index = spr_lifebar2;
        image_index = 0;
    }
    
    // Verifica fim da transição 2->1
    if (sprite_index == spr_lifebargoing1 && image_index >= image_number - 1) {
        sprite_index = spr_lifebar1;
        image_index = 0;
    }
    
    // Verifica fim da transição 1->0
    if (sprite_index == spr_lifebargoing0 && image_index >= image_number - 1) {
        sprite_index = spr_lifebar0;
        image_index = 0;
    }
}
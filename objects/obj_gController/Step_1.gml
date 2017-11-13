if(keyboard_check_pressed(vk_escape)){
    
    if(game_paused){
        game_paused = false;
        instance_activate_object(obj_gObject);
    }else{
        game_paused = true;
        instance_deactivate_object(obj_gObject);
    }
    
}

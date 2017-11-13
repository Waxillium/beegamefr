/// @description Handle menu stuff
current += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
current = wrap(current, 0, array_length_1d(options));

if(keyboard_check_pressed(vk_enter)){
    var option = options[current];
    if(option[1] != noone){
        script_execute(option[1]);
    }
}
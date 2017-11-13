/// @description Draw menus
var c = draw_get_colour();

draw_set_font(f_menus);

for(var a = 0; a < array_length_1d(options); a++){
    draw_set_colour(c_black);
    var option = options[a];
    draw_text(x, y + 64*a, string_hash_to_newline(option[0]));
    if(a == current){
        draw_set_colour(c_white);
        draw_text(x+2, y + 64*a - 2, string_hash_to_newline(option[0]));
    }
}

draw_set_colour(c);


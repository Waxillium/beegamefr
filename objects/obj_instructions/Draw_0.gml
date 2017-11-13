/// @description draw the instructions
// You can write your code in this editor
var c = draw_get_color();

draw_set_font(f_menus);

for(var a = 0; a<array_length_1d(lines); a++){
	draw_set_color(c_gray);
	var line = lines[a]
	draw_text(x+1, y+64*a, string_hash_to_newline(line[0]));
	draw_set_colour(c_white);
    draw_text(x + 3, y + 64*a - 3, string_hash_to_newline(line[0]));
}

draw_set_color(c)
/// control the way the bee is drawn
// You can write your code in this editor
spr_index += .25 * global.dt;
sprite_index = spr_PlayerBee;
image_index = spr_index;
draw_self();

/*
var c = draw_get_color();

draw_set_font(f_menus);
draw_set_color(c_white);
if(ds_list_empty(spent)){
	draw_text_transformed(r_test.x+1, r_test.y+64, string_hash_to_newline("Number of bees: " + string(bp) + "#Number of bees spent: 0"), 1/5, 1/5, 0);
} else if (ds_list_empty(bammo)){
	draw_text_transformed(r_test.x+1, r_test.y+64, string_hash_to_newline("Number of bees: 0#Number of bees spent: " + string(bs)), 1/5, 1/5, 0);
} else {
	draw_text_transformed(r_test.x+1, r_test.y+64, string_hash_to_newline("Number of bees: " + string(bp)+ "#Number of bees spent: " + string(bs)), 1/5, 1/5, 0);
}

draw_set_color(c)
*/
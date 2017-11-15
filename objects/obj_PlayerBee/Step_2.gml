/// @description Insert description here
// You can write your code in this editor
collect = keyboard_check_pressed(vk_space);

if(collect){
	for(var j = 0; j<ds_list_size(spent); j++){
	ds_list_add(bammo, spent[|j]);
	}
	ds_list_clear(spent);
}
/// player bee state machine
state = player_movement;
if(keyboard_check_pressed(vk_tab)){
	stopMoving = !stopMoving;
}
if(stopMoving){
	state = stop;
}
if(state!=stop){
	script_execute(state);
	script_execute(move_and_collide);
}
//rotate bees around queen
for(var i=0; i<ds_list_size(bammo); i++){
	var angle = i/ds_list_size(bammo) * 360 + current_time/10;
	bammo[|i].targetx = x + lengthdir_x(bdist, angle);
	bammo[|i].targety = y + lengthdir_y(bdist, angle);
}
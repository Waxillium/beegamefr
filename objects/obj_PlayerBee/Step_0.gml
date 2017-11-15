/// player bee state machine
state = player_movement;

//get input
sto = keyboard_check_pressed(vk_tab);
shoot = mouse_check_button(mb_left);

//toggle player movement with "sto" button
if(sto){
	stopMoving = !stopMoving;
}

//set state to stop (does nothing) if the stop button is pressed 
if(stopMoving){
	state = stop;
}

//move the player if they are not in the stop state
if(state!=stop){
	script_execute(state);
	script_execute(move_and_collide);
}

//rotate bees around queen and choose ammo
//var targetAngle = point_direction(x, y, mouse_x, mouse_y);
var bullet;
for(var i=0; i<ds_list_size(bammo); i++){
//	var closest = 0;
	var angle = i/ds_list_size(bammo) * 360 + current_time/10;
	if(angle>360){angle-=360;} else if(angle<0){angle+=360;}
//	if(angle==targetAngle){var closest = angle, bullet = bammo[|i];}
//	else if (closest = (abs(angle-targetAngle) < abs(closest-targetAngle))){bullet = bammo[|i];}
	bammo[|i].targetx = x + lengthdir_x(bdist, angle);
	bammo[|i].targety = y + lengthdir_y(bdist, angle);
}
//choose a bee and shoot it
if(shoot && timer <= 0){
	bullet = bammo[|irandom_range(0, ds_list_size(bammo))];
	bullet.targetx = mouse_x;
	bullet.targety = mouse_y;
	ds_list_add(spent, bullet);
	ds_list_delete(bammo, ds_list_find_index(bammo, bullet));
	timer = 6;
}

timer -= global.dt;
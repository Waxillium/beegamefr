/// player bee state machine
state = player_movement;

//get input
sto = keyboard_check_pressed(vk_tab);
shoot = mouse_check_button(mb_left);
collect = keyboard_check(vk_space);

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
var bullet;
for(var i=0; i<ds_list_size(bammo); i++){
	var angle = i/ds_list_size(bammo) * 360 + current_time/10;
	if(angle>360){angle-=360;} else if(angle<0){angle+=360;}
	bammo[|i].targetx = x + lengthdir_x(bdist, angle);
	bammo[|i].targety = y + lengthdir_y(bdist, angle);
}

var j = 0;
//choose a bee and shoot it

if(shoot && timer <= 0 && !(ds_list_empty(bammo))){
	timer = 7;
	bullet = bammo[|irandom_range(0, ds_list_size(bammo)-1)];
	bullet.targetx = mouse_x;
	bullet.targety = mouse_y;
	ds_list_add(spent, bullet);
	ds_list_delete(bammo, ds_list_find_index(bammo, bullet));
}
timer -= global.dt;

//collect bees
if(collect && !(ds_list_empty(spent))){
	for(j = ds_list_size(spent)-1; j>=0; j--){
		if(point_distance(x, y, spent[|j].x, spent[|j].y)<cbox){
			ds_list_add(bammo, spent[|j]);
			ds_list_delete(spent, ds_list_find_index(spent, spent[|j]));
		}
	}
}

//make drones wander towards flowers
for(var z = 0; z<ds_list_size(spent); z++){
	var cBee = spent[|z];
	var flow = instance_nearest(cBee.x, cBee.y, obj_flower);
	if(point_distance(cBee.x, cBee.y, flow.x, flow.y)<25){
		cBee.targetx = flow.x;
		cBee.targety = flow.y;
	}
}
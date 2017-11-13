/// initialize player variables
//movement properties
spd = 7;
turnspeed = .9;
facingDir = 0;
targetDir = 0;

//movement trackers
vspd = 0;
hspd = 0;
sx = 0;
sy = 0;
stopMoving = true;

//bee stats
level = 0;
hp = 1;
atk = 1;
dir = 0;

//initialize drone bees
bdist = 40;
bammo = ds_list_create();
repeat(15){
	ds_list_add(bammo, instance_create_layer(x,y, "Main", obj_drone));
}

//image tracking
spr_index = 0;
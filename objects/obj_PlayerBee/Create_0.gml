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
maxbees = 30;
repeat(maxbees){
	ds_list_add(bammo, instance_create_layer(x,y, "Main", obj_drone));
}
spent = ds_list_create();
timer = 0;

//drone bee modifiers
cbox = 150;

//image tracking
spr_index = 0;

//display variables
bp = ds_list_size(bammo);
bs = ds_list_size(spent);
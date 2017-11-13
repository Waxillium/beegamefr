///player_movement()
//describes how the player moves
targetDir = point_direction(x, y, mouse_x, mouse_y);
facingDir += angle_difference(targetDir, facingDir) * turnspeed * global.dt;
while(facingDir >= 360) { facingDir -=360; }
while(facingDir < 0) { facingDir +=360; }
if(point_distance(x, y, mouse_x, mouse_y)<50){
	var vel = point_distance(x, y, mouse_x, mouse_y)/(spd);
	hspd = lengthdir_x(vel, facingDir);
	vspd = lengthdir_y(vel, facingDir);
}
else{
	hspd = lengthdir_x(spd, facingDir);
	vspd = lengthdir_y(spd, facingDir);
}

if(facingDir>90&&facingDir<270){
	image_xscale = -1;
} else { image_xscale = 1; }
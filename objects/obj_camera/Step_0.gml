/// camera movement
if(instance_exists(target)){
	var tx = lerp(target.x, mouse_x, 2/5);
	var ty = lerp(target.y, mouse_y, 2/5);
	dist = point_distance(x, y, tx, ty);
	dir = point_direction(x, y, tx, ty);
	x+=lengthdir_x(dist/spd, dir) * global.dt;
	y+=lengthdir_y(dist/spd, dir) * global.dt;
}

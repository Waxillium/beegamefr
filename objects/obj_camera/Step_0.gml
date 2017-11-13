/// camera movement
if(instance_exists(target)){
	dist = point_distance(x, y, target.x, target.y);
	dir = point_direction(x, y, target.x, target.y);
	x+=lengthdir_x(dist/spd, dir) * global.dt;
	y+=lengthdir_y(dist/spd, dir) * global.dt;
}

///move_and_collide()
//actually perform movement
sx += hspd * global.dt;
sy += vspd * global.dt;
var newxv = round(sx);
var newyv = round(sy);
sx -= newxv;
sy -= newyv;

repeat(abs(newxv)){
	if(!place_meeting(x+sign(newxv), y, obj_collidable)){
		x += sign(newxv);
	} else {
		hspd = 0;
		sx = 0;
		break;
	}
}

repeat(abs(newyv)){
	if(!place_meeting(x, y+sign(newyv), obj_collidable)){
		y += sign(newyv);
	} else {
		vspd = 0;
		sy = 0;
		break;
	}
}

if(hspd==0 && vspd == 0) isMoving = false;
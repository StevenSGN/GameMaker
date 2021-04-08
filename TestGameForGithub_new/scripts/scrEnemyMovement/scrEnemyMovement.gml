function scrEnemyMovement() {
	vsp = (min(7, vsp+grv));

	if place_meeting(x + hsp, y, oWall){
		while (!place_meeting(x + sign(hsp), y, oWall)) {
			x += sign(hsp);
		}
		hsp = -hsp;
	}

	x += hsp;

	// vertical collision and movement

	if place_meeting(x, y  + vsp, oWall){
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}

	y += vsp;


	if (!place_meeting(x, y+1, oWall)) {
		if state !=noone {
			sprite_index = sEnemyAirState;
			}
		else{
			sprite_index = sEnemyAir;
			}
		image_speed = 0;
		if sign(vsp)>0 {
			image_index = 1;
		}
		else {
			image_index = 0;
		}
	}
	else {
		image_speed = 1;
		if state != noone {
			if (hsp != 0){
			sprite_index = sEnemyRunningState;
			}
			else {
				sprite_index = sEnemyState;
			}
		}
		else {
			if (hsp != 0){
			sprite_index = sEnemyRunning;
			}
			else {
				sprite_index = sEnemy;
			}
		}
	
	}

	if (hsp!=0) {
		image_xscale = sign(hsp);
	}

}

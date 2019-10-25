move = keyR - keyL;

hsp = move * walksp;
vsp += grv;

// horizontal collision and x-movement, depending on hsp above and where the wall is
if place_meeting(x + hsp, y, oWall){
	while (!place_meeting(x + sign(hsp), y, oWall)) {
		x += sign(hsp);
	}
	hsp = 0;
}

x += hsp;

// vertical collision and movement
if (place_meeting(x, y+1, oWall) && keyJump) {
	vsp = -8;
}


if place_meeting(x, y  + vsp, oWall){
	while (!place_meeting(x, y + sign(vsp), oWall)) {
		y += sign(vsp);
	}
	if (vsp > 6){
		with (oEnemy){
			if (place_meeting(x, y + 1, oWall)){
				vsp = -2;
			}
		}
	}
	vsp = 0;
}

y += vsp;
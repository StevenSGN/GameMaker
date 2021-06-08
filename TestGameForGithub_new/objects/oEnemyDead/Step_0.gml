/// @description Doodgaande enemy, en stil liggen daarna
// You can write your code in this editor
if done ==0 
{
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
	if place_meeting(x, y  + vsp, oWall) {
		if (vsp> 0) {
			done =1;
			image_index = 1;
		}
		while (!place_meeting(x, y + sign(vsp), oWall)) {
			y += sign(vsp);
		}
		vsp = 0;
	}
	y += vsp;
}
else
{
	sprite_index = sEDeadGhost;
	y -= 0.3
	if y < 0 - sprite_height {
		show_debug_message("Enemy Destroyed");
		instance_destroy();
	}

}


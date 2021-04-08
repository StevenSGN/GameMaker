function scrChase() {
	if abs(oPlayer.x-x) > 3 {
		moveDir = sign(oPlayer.x - x);
		hsp = moveDir * 4;
		}
	if (distance_to_object(oPlayer) > 130) || (distance_to_object(oPlayer) <=3) {
		state = eState.idle;
	}


}

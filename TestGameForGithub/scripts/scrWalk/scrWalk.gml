if distance_to_object(oPlayer) < 120 {
	state = eState.chase;
}
if counter ==0 {
	hsp = choose(-1,1);
}
counter++;
if (counter > room_speed * 2){
	state = eState.idle;
}
counter ++;
if (counter > room_speed*2){
	if choose(0,1) == 0{
		state = eState.walk;
	}
	else{
		state = eState.idle;
	}
	counter = 0;
}

hsp = 0;
if distance_to_object(oPlayer) < 120
	{state = eState.chase;}
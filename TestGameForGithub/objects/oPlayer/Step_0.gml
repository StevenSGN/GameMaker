/// @desc movement (onder andere, later meer)

// get player input
scrInputs();

// temporary variable with 'var'
switch (state){
	case playerStates.normal:
		scrNormal();
		break;
	case playerStates.ladder:
		break;
}

// animation
/* alternatief: 
   eerder in code: if (place_meeting(x, y+1, oWall)) {onTheFloor = true;}
   dan kan je later de variabele onTheFloor gebruiken in plaats van de hele functie
   place_meeting steeds opnieuw uit te voeren.
   if (!onTheFloor) {sprite_index = sPlayerAir; etcetera;}
*/

#region sprites running, left, right, etc.

if (!place_meeting(x, y+1, oWall)) {
	sprite_index = sPlayerAir;
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
	if (hsp != 0){
		sprite_index = sPlayerRunning;
	}
	else {
		sprite_index = sPlayer;
	}
}

if (hsp!=0) {
	image_xscale = sign(hsp);
}
#endregion

x = clamp(x, 0 + abs(sprite_width / 2), room_width - sprite_width/2);
y = clamp(y, 0 + sprite_height / 2, room_height- sprite_height/2);
/// @desc Draw sprite in upper left corner
if instance_exists(oPlayer) {
	var _x = 20;

	for (var _i = 0 ; _i < oPlayer.numberLives; _i++){
		draw_sprite(sPlayer, 0, _x, 20);
		_x += 50;
	}
}

if instance_exists(oPlayer) {
	var _x = display_get_gui_width() / 2;
	for (var _i = 1 ; _i <= 5; _i++){
		if _i <= oPlayer.bazookaAmmo {
			draw_sprite(sBazookaAmmo, 0, _x,30);
			}
		else {
			 draw_sprite(sBazookaAmmoE, 0, _x, 30);
			}
		_x += 32;
	}
}


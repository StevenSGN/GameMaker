/// @desc Control menu items

// menu comes 'flying in'
menuX += (menuXTarget - menuX) / menuSpeed;

// menu control with keys
if (menuControl){
	if (keyboard_check_pressed(vk_up)){
		menuCursor ++;
		if (menuCursor > menuItemAmount-1) {
			menuCursor = 0;
		}
	}
	if (keyboard_check_pressed(vk_down)){
		menuCursor --;
		if (menuCursor < 0) {
			menuCursor = menuItemAmount - 1;
		}
	}
	if keyboard_check_pressed(vk_enter){
		// menu goes outside room (to the right)
		menuXTarget = guiWidth + 200;
		// store what 'number' was chosen, and disable moving between items
		menuCommitted = menuCursor;
		menuControl = false;
		// screenshake is not part of the test
		// so no ScreenShake(4, 30); in this screenshot ;)	
	}
}
// action based on what number was chosen for menuComitted
if ((menuX > guiWidth + 150) && (menuCommitted != -1)) {
	switch(menuCommitted) {
		case 2: default:
			room_goto_next();
		case 1: 
			room_goto_next();
			break;
		case 0: 
			game_end();
			break;
	}
}
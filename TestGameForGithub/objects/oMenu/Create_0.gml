/// @desc Menu Setup Variables

guiWidth = display_get_gui_width();
guiHeight = display_get_gui_height();
guiMargin = 32;

menuX = guiWidth;
menuY = guiHeight - guiMargin;

//only needed for 'ease in'-effect menu
menuXTarget = guiWidth - guiMargin;
menuSpeed = 25;


//menuFont = fMenu;
menuItemheight = font_get_size(fMenu);
menuCommitted = -1;
menuControl = true;


menu[2] = "New Game";
menu[1] = "Continue";
menu[0] = "Quit";


menuItemAmount = array_length_1d(menu);
menuCursor = 2;

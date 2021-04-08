/// @descr Draw the menu and interact

draw_set_font(fMenu);
draw_set_halign(fa_right);
draw_set_valign(fa_bottom);

for (var i = 0; i < menuItemAmount; i++){
	var offset = 2;
	var txt = menu[i];
	if (menuCursor == i){
		txt = string_insert("> ", txt, 0);
		txt = string_insert(" <", txt, string_length(txt)+1);
		var col = c_red;	
	}
	else {
		var col = c_gray;
	}
	var xx = menuX;
	var yy = menuY - (menuItemheight * (i * 1.5)); 
	draw_set_color(c_black);
	draw_text(xx-offset, yy, txt);
	draw_text(xx+offset, yy, txt);
	draw_text(xx, yy-offset, txt);
	draw_text(xx, yy+offset, txt);
	draw_set_color(col);
	draw_text(xx, yy, txt);
}
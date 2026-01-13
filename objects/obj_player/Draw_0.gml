draw_self();

if (global.kitestyle == false){
	draw_set_alpha(0.1);

	draw_circle(x, y, 96, false);

	// Reset
	draw_set_alpha(1);
	draw_set_color(c_white);
}

//This page completely revolves around drawing the attack range
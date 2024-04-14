/// @description draw charge bar

draw_self();

if (charge > 0) {
	draw_healthbar(x+23, y-16, x+27, y+16,
	(charge / max_charge) * 100,
	c_black, c_orange, c_yellow, 3, true, true);
}

if (plant_charge > 0) {
	draw_healthbar(x+23, y-16, x+27, y+16,
	(plant_charge / max_plant_charge) * 100,
	c_black, c_orange, c_yellow, 3, true, true);
}
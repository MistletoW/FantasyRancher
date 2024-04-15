/// @description temporary debugging stats

draw_set_font(Font1);
draw_set_halign(fa_left);
draw_set_valign(fa_center);

draw_set_color(c_black);

draw_text(20, 20, obj_player.charge);
draw_text(20, 20, obj_player_wilds.charge);

// lives
draw_sprite(spr_player_down_idle, 0, 25, 35);
draw_text(45, 35, "X" + string(wilds_player.wilds_lives));

// timer
draw_text(600, 35, "Time: " + timer_string);

// creatures and plants
if (room == SlimeWilds) {
	draw_sprite(spr_slime, 0, 1290, 35);
	draw_text(1325, 35, "X" + string(wilds_player.creatures_collected));
	
	draw_sprite(spr_orchid, 0, 1265, 65);
	draw_text(1320, 95, "X" + string(wilds_player.plants_collected));
}

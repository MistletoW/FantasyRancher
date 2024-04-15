/// @description lose a life

if (current_time - (20 * room_speed) > last_collision) {
	wilds_lives--;
	last_collision = current_time;
	
	effect_create_above(ef_ring, x, y, 0.1, c_aqua);

	other.spooked = true;
	other.direction = point_direction(x, y, other.x, other.y);
	other.speed = 2;

	if (wilds_lives <= 0) {
		sprite_index = spr_slimed;
		slimed = true;
	
		// wait a little bit before kicking out and resetting
		alarm[3] = room_speed * 3;
	}
}
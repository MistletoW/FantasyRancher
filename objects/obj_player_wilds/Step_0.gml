/// @description movement

if (!shooting) {
	event_inherited();
}

// ur not allowed to go beyond boundaries
if (x > 2500) {
	x = 2499; // should put these as variables in a controller
} else if (x < 30) {
	x = 31;
}

if (y > 1475) {
	y = 1474;
} else if (y < 60) {
	y = 61;
}

// LASSO STUFF

// don't allow to go beyond max
if (charge > max_charge) {
	charge = max_charge;
}

// shoot upon release
if (charging == true && !keyboard_check(vk_space)) {
	charging = false;
	shooting = true;
	
	// play the shooting animation before putting out the rope
	last_sprite = sprite_index; // we need to return to this after
	
	sprite_index = spr_rope_throw;
	alarm[0] = room_speed; // animation will finish after 1 second/play
	
}

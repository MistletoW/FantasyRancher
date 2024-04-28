/// @description spook effect

// check if spooked, goes away after a certain amount of time
if (spooked) {
	spooked = false;
	alarm[0] = 600; // go off to get rid of spook effect
}

// if caught, stop moving
if (sprite_index == spr_slime_caught) {
	spd = 0;
}

// if in pen, domestic
if (room != SlimeWilds) {
	sprite_index = spr_slime_domestic;
}
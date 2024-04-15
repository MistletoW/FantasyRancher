/// @description player in the wilds

event_inherited();

spd = 6;

wilds_lives = 3;

creatures_collected = 0; // number of creatures successfully caught
plants_collected = 0;

charging = false;
charge = 0;
max_charge = 200;

aim_dot = noone; // will be where the lasso ends up if shot in a given moment

shooting = false; // allows animation to play uninterrupted
last_sprite = noone; // allows return to position after shooting lasso

lasso_inst = noone;
inst_rope = noone;
caught_inst = noone;

// charge relating to gathering plants
plant_collecting = false;
plant_charge = 0;
max_plant_charge = 100;

// timing to enact delay in life loss
slimed = false;
last_collision = 0;
curr_time = 0;
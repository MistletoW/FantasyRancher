/// @description shoot the lasso

charging = true;
charge += 2;

// place to show player where the lasso will land
var target_projected = charge + 80; // distance from the player that the lasso will hit at this charge

// check if we need to get rid of an existing dot and "update"
if (aim_dot != noone) {
	instance_destroy(aim_dot);
}

// which direction are we shooting in?
if (lastDir == 0) { // add y
	aim_dot = instance_create_layer(x, y + target_projected, "Instances", obj_aim_dot);
} else if (lastDir == 1) { // decrement y
	aim_dot = instance_create_layer(x, y - target_projected, "Instances", obj_aim_dot);
} else if (lastDir == 2) { // minus x
	aim_dot = instance_create_layer(x - target_projected, y + 15, "Instances", obj_aim_dot);
} else {
	aim_dot = instance_create_layer(x + target_projected, y + 15, "Instances", obj_aim_dot);
}
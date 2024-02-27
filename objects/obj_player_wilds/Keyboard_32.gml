/// @description shoot the lasso

// temporary implementation to affect slimes in a certain radius
num_slimes = instance_number(obj_slime);

for (var i = 0; i < num_slimes; i++) {
	var slime_instance = instance_find(obj_slime, i);
	
	var distance_between = point_distance(x, y, slime_instance.x, slime_instance.y);
	
	if (distance_between <= 300) {
		slime_instance.spooked = true;
		slime_instance.direction = point_direction(x, y, slime_instance.x, slime_instance.y);
		slime_instance.speed = 2;
	}
}


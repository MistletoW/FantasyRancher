/// @description shoot lasso after animation, return to last sprite

instance_destroy(aim_dot);
aim_dot = noone;

sprite_index = last_sprite;
shooting = false;

var target_area = charge + 80; // distance from the player that the lasso hits

//var lasso_inst = noone;

// which direction are we shooting in?
	if (lastDir == 0) { // add y
		lasso_inst = instance_create_layer(x, y + target_area, "Instances", obj_rope_loop);
	} else if (lastDir == 1) { // decrement y
		lasso_inst = instance_create_layer(x, y - target_area, "Instances", obj_rope_loop);
	} else if (lastDir == 2) { // minus x
		lasso_inst = instance_create_layer(x - target_area, y + 15, "Instances", obj_rope_loop);
	} else {
		lasso_inst = instance_create_layer(x + target_area, y + 15, "Instances", obj_rope_loop);
	}
	
// want the rope object to extend from the player to the location of the lasso

var dist = 0;
var new_length = 0;
//var inst_rope = noone;

if (lastDir == 2 || lastDir == 3) { // if shooting horizontal
	
	dist = lasso_inst.x - x;
	
	inst_rope = instance_create_layer(x, y + 15, "Instances", obj_rope_segment_hor);
	inst_rope.image_xscale = dist / 64;
	
		
	inst_rope.x += (dist / 2);
	
} else { // if shooting vertical
	
	dist = lasso_inst.y - y;
	
	inst_rope = instance_create_layer(x, y, "Instances", obj_rope_segment_vert);
	inst_rope.image_yscale = dist / 64;
	
	inst_rope.y += (dist / 2);
	
}

// reset charge
charge = 0;

// check what to do based on whether there was a hit or not

caught_inst = instance_place(lasso_inst.x, lasso_inst.y, obj_slime);

if (caught_inst != noone) {
	
	instance_destroy(lasso_inst);
	instance_destroy(inst_rope);
	
	caught_inst.sprite_index = spr_slime_caught;
	caught_inst.speed = 0;
	creatures_collected += 1;
	
	// show for two seconds before storing away
	alarm[2] = room_speed * 2;
	
} else {
	// wait for two seconds before getting rid of lasso (retracting)
	alarm[1] = room_speed * 2;
	
	// slimes within a certain radius will be spooked
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
}
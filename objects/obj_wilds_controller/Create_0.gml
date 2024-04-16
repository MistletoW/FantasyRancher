/// @description scatter plants in room

var num_plants = irandom_range(10, 15);

for (var i = 0; i < num_plants; i++) {
    var random_x = irandom_range(64, room_width - 64); // 64 pixels buffer from the left and right walls
    var random_y = irandom_range(64, room_height - 64); // 64 pixels buffer from the top and bottom walls
    
	//instance_create(random_x, random_y, obj_orchid);
	instance_create_layer(random_x, random_y, "Instances", obj_orchid);
}

// hold the player for reference
wilds_player = instance_find(obj_player_wilds, 0);

// timer stuff
timer = 1 * room_speed * 60;
timer_string = "";
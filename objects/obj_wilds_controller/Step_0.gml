/// @description decrement timer
	
if (timer > 0) {
	
    timer -= 1;
	
    var minutes = floor(timer / (room_speed * 60));
    var seconds = floor((timer mod (room_speed * 60)) / room_speed);
    timer_string = string(minutes) + ":" + string(seconds);
  
} else {
		
	// communicate resources
	// orchids
	Inventory_adding(global.player_inventory, obj_orchid.item_id, wilds_player.plants_collected);
	
	// slime product
	Inventory_adding(global.player_inventory, obj_slime.item_id, wilds_player.creatures_collected);
		
	// put character back in house
	room = House;
}
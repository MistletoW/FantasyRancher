/// @description Insert description here
// You can write your code in this editor

// collection logic 


if (Inventory_adding(obj_player.player_inventory,self.item_id, 1)){
		instance_destroy();

}else {
		// inventory is full
		audio_play_sound(Error, 10, false);
	}






/// @description Insert description here
// You can write your code in this editor

if (Inventory_adding(obj_player.player_inventory,self.item_id, quantity = 1)){
		instance_destroy();

}else {
		// inventory is full
		audio_play_sound(Error, 10, false);
	}







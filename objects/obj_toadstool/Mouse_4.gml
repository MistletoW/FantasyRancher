/// @description Insert description here
// You can write your code in this editor

show_debug_message("click_item");
if (Inventory_adding(obj_player.player_inventory,self.item_id, quantity = 1)){
		instance_destroy();
		show_debug_message("click_add");
}else {
		// inventory is full
		audio_play_sound(Error, 10, false);
	}






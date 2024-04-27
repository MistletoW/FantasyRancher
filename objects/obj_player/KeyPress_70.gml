/// @description Insert description here
// You can write your code in this editor

if (place_meeting(x, y, obj_untilled_dirt) && room == Farm1) {
    var tilledDirt = instance_place(x, y, obj_untilled_dirt);
    
	if(tilledDirt.sprite_index == spr_tilled_dirt){
	    if (!tilledDirt.plant) { //INCLUDE HERE "an check for in inventory"
			if (Inv_exist(global.player_inventory, 4)){
				if (Inventory_removeitem(global.player_inventory, 4, 1)) { //CHANGE THIS TRUE TO BE REMOVE 1 ORCHID TO PLANT
	            var plant = instance_create_layer(tilledDirt.x + tilledDirt.sprite_width / 2, tilledDirt.y + tilledDirt.sprite_height / 2, "Instances", obj_orchid);
	            plant.x -= obj_untilled_dirt.sprite_width / 2; 
	            plant.y -= obj_untilled_dirt.sprite_height / 2;
	            tilledDirt.plant = plant;
				}
			}
	    }
	    // Harvesting
	    else if (tilledDirt.plant && tilledDirt.plant.isGrown) {
			//HERE MAKE SURE THE INVENTORY ADDS 2-4 ORCHIDs
			randomize();
			var HarvestNum = irandom_range(2, 4);
			Inventory_adding(global.player_inventory, 4 , HarvestNum);
	        with (tilledDirt.plant) {
	            instance_destroy();
	        }
	        tilledDirt.plant = noone;
	    }
	}
}



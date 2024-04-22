/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor


//  bug in wild cause two player obj

// Inventory handling
if (room != market) {
var mx = device_mouse_x_to_gui(0);
var my = device_mouse_y_to_gui(0);
/*
	show_debug_message("step:");
		show_debug_message(pos_y);
			show_debug_message(pos_x);
*/
 var itemid = noone
 for (var i = 0; i < ds_list_size(button_list); i++) {
        var bounds = ds_list_find_value(button_list, i);
		 if (mx >= bounds[0] && mx <= bounds[2] && my >= bounds[1] && my <= bounds[3]) {
			//show_debug_message("Buttonclicked!");
		 var slot = ds_list_find_value(global.player_inventory[? "slots"], i);
		 if (slot != undefined){
		  itemid = slot[? "item_id"];
		  var quantity = slot[? "quantity"];
		    if(quantity > 1){
			 
			quantitydrop = get_integer("Number to drop?", 0);
			Inventory_removeitem(global.player_inventory, itemid, quantitydrop);
			for (var k = 0; k < quantitydrop; k++){
				instance_create_layer(obj_player.x, obj_player.y, "Instances", Get_object(itemid));
			}
			break;
			}else{
				if (itemid != noone && Inventory_removeitem(global.player_inventory, itemid, 1)) {
				instance_create_layer(obj_player.x, obj_player.y, "Instances", Get_object(itemid));
				break;// Prevent multiple interactions from one click?
				}
			}
		 
		 
		 } 
		
		 

		}
		
 }
}










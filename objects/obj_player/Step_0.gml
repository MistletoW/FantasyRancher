/// @description Step player movement

var keyLeft = keyboard_check(vk_left); 
var keyRight = keyboard_check(vk_right); 
var keyUp = keyboard_check(vk_up); 
var keyDown = keyboard_check(vk_down); 

if(keyDown){
	sprite_index = spr_player_down_walk; 
	image_xscale = 1; 
	lastDir = 0; 
	y += spd; 
}else if(keyUp){
	sprite_index = spr_player_up_walk; 
	image_xscale = 1; 
	lastDir = 1; 
	y -= spd; 
}else if(keyLeft){
	sprite_index = spr_player_left_walk; 
	image_xscale = 1; 
	lastDir = 2; 
	x -= spd; 
}else if(keyRight){
	sprite_index = spr_player_left_walk; 
	image_xscale = -1; 
	lastDir = 3; 
	x += spd; 
}else{
	switch(lastDir){
		case 0: 
			sprite_index = spr_player_down_idle; 
			image_xscale = 1; 
			break; 
		case 1: 
			sprite_index = spr_player_up_idle; 
			image_xscale = 1; 
			break; 
		case 2: 
			sprite_index = spr_player_left_idle; 
			image_xscale = 1; 
			break; 
		case 3: 
			sprite_index = spr_player_left_idle; 
			image_xscale = -1; 
			break; 
		default: 
			sprite_index = spr_player_down_idle; 
			image_xscale = 1; 
	}
}




// Inventory drop
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;

    // Loop through slots to check if any button is clicked
    for (var i = 0; i < player_inventory_slots; i++) {
        var drawx = startX + i * (slotWidth + gap);
        var drawy = startY;
        var buttonX = drawx + slotWidth - buttonWidth - gap;
        var buttonY = drawy + slotHeight - buttonHeight - gap;

        // Determine if the mouse click is within the bounds of the button
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            var slot = ds_list_find_value(player_inventory[? "slots"], i);
            var itemid = slot[? "item_id"];
            if (itemid != noone) {
                // Attempt to remove 1 quantity of the item from this slot
                if (Inventory_removeitem(player_inventory, itemid, 1)) {
					switch (itemid) {
						case 1:
							instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_bone);
							break;
						case 2:
							 instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_slimejelly);
							break;
						}
                    //show_debug_message("Removed one item from slot " + string(i));
                }
                break; // Prevents multiple button click from one click
            }
        }
    }
}
// 
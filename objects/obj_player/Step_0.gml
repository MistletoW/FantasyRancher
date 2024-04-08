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


// wild inventory
var inventoryOffsetY = -250; 
var inventoryOffsetx = 250;
var pos_x = startX;
var pos_y = startY;


if (room == SlimeWilds){
	var scale_x = view_wport[0]/view_wview[0];
	var scale_y = view_hport[0]/view_hview[0];   
	//pos_x = view_wport[0];
	//pos_x = pos_x * scale_x;
    // pos_y = view_hport[0];
	//pos_y = pos_y * scale_y;


	pos_x = ((view_wport[0] - totalWidth) / 2) + inventoryOffsetx; // Centered horizontally within the viewport
    pos_y = view_hport[0] - slotHeight - padding_bottom - inventoryOffsetY; // Positioned from the bottom of the viewport

// Ensure startY is adjusted for the actual GUI drawing
pos_y += view_yport[0]; // Adjust startY by the vertical position of the viewport if necessary




}






//show_debug_message(player_inventory);


// Inventory drop
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;
	show_debug_message("click");
    // Loop through slots to check if any button is clicked
    for (var i = 0; i < player_inventory_slots; i++) {
        var drawx = pos_x + i * (slotWidth + gap);
        var drawy = pos_y;
        var buttonX = drawx + slotWidth - buttonWidth - gap;
        var buttonY = drawy + slotHeight - buttonHeight - gap;

        // Determine if the mouse click is within the bounds of the button
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            var slot = ds_list_find_value(global.player_inventory[? "slots"], i);
            var itemid = slot[? "item_id"];
            if (itemid != noone) {
                // Attempt to remove 1 quantity of the item from this slot
				// it must have a layer name instance!!
                if (Inventory_removeitem(global.player_inventory, itemid, 1)) {
					switch (itemid) {
						case 1:
							instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_bone);
							break;
						case 2:
							 instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_slimejelly);
							break;
						case 3:
							 instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_toadstool);
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


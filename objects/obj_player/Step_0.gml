// Movement Input
var keyLeft = keyboard_check(vk_left); 
var keyRight = keyboard_check(vk_right); 
var keyUp = keyboard_check(vk_up); 
var keyDown = keyboard_check(vk_down);

// Calculate movement vectors
var moveX = spd * (keyRight - keyLeft);
var moveY = spd * (keyDown - keyUp);

// Horizontal movement with collision check
if (!place_meeting(x + moveX, y, obj_tree_wilds) && !place_meeting(x + moveX, y, obj_fence)) {
    x += moveX;
    if (moveX > 0) {
        sprite_index = spr_player_left_walk;
        image_xscale = -1;
        lastDir = 3;
    } else if (moveX < 0) {
        sprite_index = spr_player_left_walk;
        image_xscale = 1;
        lastDir = 2;
    }
} else {
    // Adjust position to avoid collision
    var i = 0;
    while ((place_meeting(x + sign(moveX), y, obj_tree_wilds) || place_meeting(x + sign(moveX), y, obj_fence)) && i < abs(moveX)) {
        x -= sign(moveX);
        i++;
    }
}

// Vertical movement with collision check
if (!place_meeting(x, y + moveY, obj_tree_wilds) && !place_meeting(x, y + moveY, obj_fence)) {
    y += moveY;
    if (moveY > 0) {
        sprite_index = spr_player_down_walk;
        image_xscale = 1;
        lastDir = 0;
    } else if (moveY < 0) {
        sprite_index = spr_player_up_walk;
        image_xscale = 1;
        lastDir = 1;
    }
} else {
    // Adjust position to avoid collision
    var j = 0;
    while ((place_meeting(x, y + sign(moveY), obj_tree_wilds) || place_meeting(x, y + sign(moveY), obj_fence)) && j < abs(moveY)) {
        y -= sign(moveY);
        j++;
    }
}

// Idle state handling when no movement keys are pressed
if (moveX == 0 && moveY == 0) {
    switch (lastDir) {
        case 0: sprite_index = spr_player_down_idle; break;
        case 1: sprite_index = spr_player_up_idle; break;
        case 2: sprite_index = spr_player_left_idle; break;
        case 3: sprite_index = spr_player_left_idle; image_xscale = -1; break;
    }
}

// Inventory and GUI handling (assuming specific room conditions)
if (room == SlimeWilds) {
    var inventoryOffsetX = 250;
    var inventoryOffsetY = -250;
    var pos_x = ((view_wport[0] - totalWidth) / 2) + inventoryOffsetX;
    var pos_y = view_hport[0] - slotHeight - padding_bottom - inventoryOffsetY;
    pos_y += view_yport[0]; // Adjust for the vertical position of the viewport

    // Inventory interaction
    if (mouse_check_button_pressed(mb_left)) {
        var mouseX = mouse_x;
        var mouseY = mouse_y;
        for (var i = 0; i < player_inventory_slots; i++) {
            var drawx = pos_x + i * (slotWidth + gap);
            var drawy = pos_y;
            var buttonX = drawx + slotWidth - buttonWidth - gap;
            var buttonY = drawy + slotHeight - buttonHeight - gap;

            if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
                mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
                var slot = ds_list_find_value(global.player_inventory[? "slots"], i);
                var itemid = slot[? "item_id"];
                if (itemid != noone && Inventory_removeitem(global.player_inventory, itemid, 1)) {
					
                    instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_item_corresponding_to_itemid[itemid]);
                    break; // Prevent multiple interactions from one click
                }
            }
        }
    }
}

// LASSO STUFF

// don't allow to go beyond max
if (charge > max_charge) {
	charge = max_charge;
}

// shoot upon release
if (charging == true && !keyboard_check(vk_space)) {
	charging = false;
	shooting = true;
	
	// play the shooting animation before putting out the rope
	last_sprite = sprite_index; // we need to return to this after
	
	sprite_index = spr_rope_throw;
	alarm[0] = room_speed; // animation will finish after 1 second/play
	
}

// Set invisible and fixed position if in market 
if(room == market){
	visible = false; 
	x = view_wport[0]/2; 
	y = view_hport[0]/2; 
}else{
	visible = true; 
}

// Remove tutorial menu 
if(keyboard_check(vk_escape)){
	startMenu = false; 
}
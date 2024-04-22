/// @description Insert description here
// You can write your code in this editor




//<<<<<<< HEAD
//=======
// Update positioning based on current room dimensions

var slotsList = global.player_inventory[? "slots"];


var inventoryOffsetY = -50; 
var inventoryOffsetx = 250;
var pos_x = startX;
var pos_y = startY;
var scale_x = view_wport[0];
var scale_y = view_hport[0];


	pos_x = ((view_wport[0] - 768) / 2) + inventoryOffsetx; // Centered horizontally within the viewport
    pos_y = view_hport[0] - slotHeight - padding_bottom; // Positioned from the bottom of the viewport

// Ensure startY is adjusted for the actual GUI drawing
pos_y += view_yport[0]; 
	/*
	show_debug_message("draw:");
		show_debug_message(pos_y);
			show_debug_message(pos_x);
	*/		
			
// Drawing the slots and buttons
for (var i = 0; i < player_inventory_slots; i++) {
    var drawx = pos_x + i * (slotWidth + gap);
    var drawy = pos_y;
    var slot = ds_list_find_value(slotsList, i);
    var item = slot[? "item_id"];
    var quantity = slot[? "quantity"];

    // Draw the slot background sprite
	draw_set_alpha(1); 
    draw_sprite(spr_inventory_slot, 0, drawx, drawy);
    
    if (item != noone) {
        // Example of drawing items based on item_id
		var original_width = sprite_get_width(get_sprite(item));
		var original_height = sprite_get_height(get_sprite(item));
		var scale_width = 32 / original_width;
		var scale_height = 32 / original_height;
		//draw_sprite(get_sprite(item), 0, drawx, drawy);
        draw_sprite_ext(get_sprite(item), 0, drawx, drawy, scale_width, scale_height, 0, c_white, 1);

        // Draw the item quantity
        draw_set_color(c_white);
        draw_text(drawx + 15, drawy + 10, string(quantity));
    }

    // Draw the transparent button
    draw_set_alpha(buttonAlpha);
    var buttonX = drawx + slotWidth - buttonWidth - gap;
    var buttonY = drawy + slotHeight - buttonHeight - gap;
    draw_set_color(c_white); 
    draw_rectangle(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, false);
    draw_set_alpha(1); // Reset the alpha
    draw_set_color(c_black); // Reset the color
	var button_tracker = [buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight];
    ds_list_add(button_list, button_tracker);
}


// Draw tutorial menu on start 
if(startMenu){
	draw_set_alpha(1); 
	draw_set_color($001830);
	draw_rectangle(100, 100, view_wport[0] - 100, view_hport[0] - 100, false); 
	draw_set_color($70a0b0);
	draw_rectangle(105, 105, view_wport[0] - 105, view_hport[0] - 105, false);
	
	draw_set_color(c_black); 
	draw_set_font(Font1); 
	draw_set_halign(fa_center); 
	draw_set_valign(fa_middle); 
	
	draw_text(view_wport[0]/2, view_hport[0]/2, "Welcome to Fantasy Rancher! \n Use arrow keys to move around \n In the wilds, press space to throw your lasso \n(hold to throw further) \n Hold enter to gather a plant \n Press E to till a field \n Press F to plant in the field or \nharvest plants from your field \n Press H to bring this back at any time \n Press escape to close this menu"); 
	
}

/*
>>>>>>> 91630449a6c85779dddc682f541003455e30f579
//draw
var inventory = player_inventory;
var slotsList = inventory[? "slots"];




// Drawing the slots and buttons
for (var i = 0; i < player_inventory_slots; i++) {
    var drawx = startX + i * (slotWidth + gap);
    var drawy = startY;
    var slot = ds_list_find_value(slotsList, i);
    var item = slot[? "item_id"];
    var quantity = slot[? "quantity"];

    // Draw the slot background sprite
    draw_sprite(spr_inventory_slot, 0, drawx, drawy);

    if (item != noone) {
        // Example of drawing items based on item_id
        switch (item) {
            case 1:
                draw_sprite(spr_bone, 0, drawx, drawy);
                break;
            case 2:
                draw_sprite(spr_slimejelly, 0, drawx, drawy);
                break;
        }

        // Draw the item quantity
		draw_set_colour(c_white);
        draw_text(drawx + 15, drawy + 10, string(quantity));
    }

    // Draw the transparent button
    draw_set_alpha(buttonAlpha);
    var buttonX = drawx + slotWidth - buttonWidth - gap;
    var buttonY = drawy + slotHeight - buttonHeight - gap;
    draw_set_color(c_white); 
    draw_rectangle(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, false);
    draw_set_alpha(1); // Reset the alpha
    draw_set_color(c_black); // Reset the color
}

/// @description Insert description here
// You can write your code in this editor

var slotsList = global.player_inventory[? "slots"];

// Set initial positions for the inventory slots
var inventoryOffsetX = 10; // How far from the left side of the screen the inventory starts
var inventoryOffsetY = 10; // Initial offset from the top of the screen




// Drawing the slots vertically
for (var i = 0; i < player_inventory_slots; i++) {
    var drawx = pos_x;
    var drawy = pos_y + i * (slotHeight + gap); // Position slots vertically
    var slot = ds_list_find_value(slotsList, i);
    var item = slot[? "item_id"];
    var quantity = slot[? "quantity"];

    // Draw the slot background sprite
    draw_sprite(spr_inventory_slot, 0, drawx, drawy);

    if (item != noone) {
		
        // Drawing items based on item_id
        switch (item) {
            case 1:
                draw_sprite(spr_bone, 0, drawx, drawy);
                break;
            case 2:
                draw_sprite(spr_slimejelly, 0, drawx, drawy);
                break;
            case 3:
                draw_sprite(spr_toadstool, 0, drawx, drawy);
                break;
        }

        // Draw the item quantity
        draw_set_color(c_white);
        draw_text(drawx + slotWidth - 15, drawy + slotHeight - 20, string(quantity));
    }
	var buttonX = drawx; // Position inside the slot
    var buttonY = drawy; // Position inside the slot
    draw_set_color(c_gray); // Button background color
    draw_rectangle(buttonX, buttonY, buttonX + buttonWidth, buttonY + buttonHeight, true);
    draw_set_color(c_black); // Reset color for other drawings
}




// Part of the Draw GUI Event of obj_market_controller
if (popUpVisible) {
    // Fixed position for the pop-up window
    popUpX = 30;
    popUpY = 543;
    popUpWidth = 120; // Adjust width as needed
    popUpHeight = array_length_1d(popUpOptions) * 30 + 20; // Adjust height based on number of options

    // Set background color to black for the pop-up window
    draw_set_color(c_black);
    draw_rectangle(popUpX, popUpY, popUpX + popUpWidth, popUpY + popUpHeight, true); // Draw filled rectangle for the background

    // Set text color to white for the options
    draw_set_color(c_white);
    for (var i = 0; i < array_length_1d(popUpOptions); i++) {
        var optionText = popUpOptions[i];
        var textY = popUpY + 10 + i * 30; // Calculate Y position for each option within the pop-up
        draw_text(popUpX + 10, textY, optionText); // Draw each option
    }

    // Optionally, reset drawing color to default after drawing the pop-up
    draw_set_color(c_white);
}















/*
var slotsList = global.player_inventory[? "slots"];


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
// Drawing the slots and buttons
for (var i = 0; i < player_inventory_slots; i++) {
    var drawx = pos_x + i * (slotWidth + gap);
    var drawy = pos_y;
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
            case 3:
                draw_sprite(spr_toadstool, 0, drawx, drawy);
                break;
        }

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
}






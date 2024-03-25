/// @description Insert description here
// You can write your code in this editor




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






// previouse code
/*
//Get values
var item_id = player_inventory
var amount = global.inventory[# var_slot, 1];
var name = global.item_index[# iid, item_stat.name];
var description = global.item_index[# iid, item_stat.description];

//Draw stuff
if (iid != item.none)
{
draw_sprite(spr_item, iid, x, y); //Draw item sprite
draw_text(x+4, y+4, string(amount)); //Draw item quantity
}
*/


/*
//draw
var inventory = player_inventory;
var slotsList = inventory[? "slots"];


// Configuration for drawing
var slotWidth = 32;
var slotHeight = 32;
var gap = 2; 
var slots = 10; 
var padding_bottom = 10; 

// Calculate total width of all slots plus gaps
var totalWidth = slots * slotWidth + (slots - 1) * gap;

// Starting position to center slots
var startX = (room_width - totalWidth) / 2;
var startY = room_height - slotHeight - padding_bottom;

// Drawing the slots
for (var i = 0; i < slots; i++) {
    var drawx = startX + i * (slotWidth + gap);
    var drawy = startY;
    var slot = ds_list_find_value(slotsList, i);
    var item = slot[? "item_id"]
    var quantity = slot[? "quantity"];
	
	
    // Draw the slot background sprite
    draw_sprite(spr_inventory_slot, 0, drawx, drawy);
    
	
	if (item != noone) {
		switch (item)
{
    case 1:
		draw_sprite(spr_bone, 0, drawx, drawy);
	break;
    case 2:
        draw_sprite(spr_slimejelly, 0, drawx, drawy);
    break;
} 
		
		draw_text(drawx + 20, drawy + 10, string(quantity));
	}

}
/// Draw Inventory
// Assuming you define how many slots per row you want somewhere in your code
// Configuration for slot display
var slotWidth = 32;
var slotHeight = 32;
var gap = 4; // Gap between slots
var slots = 10; // Total slots
var padding = 10; // Padding from the bottom of the screen

// Calculate the total width of the inventory
var inventoryWidth = slots * (slotWidth + gap) - gap;

// Starting positions
var startX = (display_get_width() - inventoryWidth) / 2; // Centered horizontally
var startY = display_get_height() - slotHeight - padding; // Positioned at the bottom with padding

// Get the inventory data structure
var inventory = player_inventory;
var slotsList = inventory[? "slots"];

var slotsPerRow = 10; // Adjust this to fit your design
var margin = 4; // Assuming margin is the gap between slots, renaming 'gap' to 'margin' for clarity

// Calculation for starting Y position needs to consider multiple rows if your inventory exceeds one row
var totalRows = ceil(slots / slotsPerRow);
var inventoryHeight = totalRows * slotHeight + (totalRows - 1) * margin;
var startY = display_get_height() - inventoryHeight - padding;

// Adjusted loop to draw each slot with row consideration
for (var i = 0; i < 10; i++) {
    var slotRow = floor(i / slotsPerRow);
    var slotColumn = i % slotsPerRow;
    
    var slotX = startX + slotColumn * (slotWidth + margin);
    var slotY = startY + slotRow * (slotHeight + margin);
    
    // Draw slot background
    draw_sprite(spr_inventory_slot, 0, room_width/2, 100);
    
    // Additional drawing logic for items and quantities...
}
*/
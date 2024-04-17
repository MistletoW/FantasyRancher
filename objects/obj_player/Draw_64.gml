/// @description Insert description here
// You can write your code in this editor




//<<<<<<< HEAD
//=======
// Update positioning based on current room dimensions

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

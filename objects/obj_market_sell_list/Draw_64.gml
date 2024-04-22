/// @description Insert description here
// You can write your code in this editor
// Draw GUI Event for obj_market_sell_list

// Draw sell list items
// Draw GUI Event for obj_market_sell_list

// Starting position for the sell list


/*
for (var i = 0; i < min(ds_list_size(sell_list), maxItemsVisible); i++) {
    var item = ds_list_find_value(sell_list, i);
    var item_id = item[? "item_id"];
    var price = item[? "price"];
	var itemY = startY + i * itemHeight;
	switch (item_id){
		 case 3:
                draw_sprite(spr_toadstool, 0, startX, itemY);
                break;
		 case 4:
				draw_sprite(spr_orchid, 0, startX, itemY);
				break;
	}

    // Draw item ID and price
    draw_set_color(c_black);
    var itemY = startY + i * itemHeight;  // Position for this item
    draw_text(startX+100, itemY, " Price: $" + string(price));
}

// Pop-up window logic (same position as before)
if (popUpVisible) {
    var popUpX = 65;  // If you want the pop-up also within the specified range, adjust these accordingly
    var popUpY = 543;  // Adjust to fit within your designated area if needed
    var popUpWidth = 120;
    var popUpHeight = array_length_1d(popUpOptions) * 30 + 20;

    // Draw the pop-up
    draw_set_color(c_black);
    draw_rectangle(popUpX, popUpY, popUpX + popUpWidth, popUpY + popUpHeight, true);
    draw_set_color(c_white);
    for (var i = 0; i < array_length_1d(popUpOptions); i++) {
        draw_set_color(c_black);
		draw_text(popUpX + 10, popUpY + 10 + i * 30, popUpOptions[i]);
    }
}
*/






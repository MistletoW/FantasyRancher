/// @description Insert description here
// You can write your code in this editor

// Step Event for detecting clicks on buttons within slots
if (mouse_check_button_pressed(mb_left)) {
     mouseX = mouse_x;
     mouseY = mouse_y;
    //show_debug_message("click");

    
	for (var i = 0; i < player_inventory_slots; i++) {
        buttonX = pos_x; // Matching the button's drawing position
        buttonY = pos_y + i * (slotHeight + gap); // Matching the button's drawing position
		//show_debug_message("button");
        // Check if the click is within the button's area
        if (mouseX >= buttonX && mouseX < buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY < buttonY + buttonHeight) {
			    slot = ds_list_find_value(global.player_inventory[? "slots"], i);
				itemid = slot[? "item_id"];
				global.item_information = itemid;
				global.selectGold = Get_gold(itemid);
				selectId = itemid;
				popUpVisible = !popUpVisible;
                activeSlot = i;
            break; // Avoid detecting multiple button clicks in one frame
        }
    }
}






// Part of the Step Event for selecting an option from the pop-up
if (popUpVisible && mouse_check_button_pressed(mb_left)) {
        mouseDX = device_mouse_x_to_gui(0);
		mouseDY = device_mouse_y_to_gui(0);

//show_debug_message("listen");
for (var i = 0; i < array_length_1d(popUpOptions); i++) {
    var optionY = 543 + 10 + i * 30; 
   
    if (mouseDX >= 30 && mouseDX <= 30 + 120 && 
        mouseDY >= optionY && mouseDY <= optionY + 30) { 
        popUpOptionSelected = i;
        switch (popUpOptionSelected) {
            case 0: // sell
				SellNum = get_integer("Number want to sell", 0);
				var numslot = ds_list_find_value(global.player_inventory[? "slots"], i);
				existSellNum =  numslot[? "quantity"];
				item = slot[? "item_id"];
				if (SellNum <= existSellNum  ){
			    Inventory_removeitem(global.player_inventory, selectId, SellNum);
				global.selectGold = Get_gold(item);
				global.playergold += (global.selectGold * SellNum);
				show_debug_message("sell");
				audio_play_sound(Sell_sound, 10, false);
				show_debug_message(global.playergold);
					
				}

                break;
            case 1: // bargain
				global.selectItemID = selectId;
				global.selectGold = Get_gold(itemid);
				global.getbargain = true;  
               show_debug_message("bargain popup");
                break;
            case 2: 
                popUpVisible = false;
                //show_debug_message("Closing popup");
                break;
        }
        popUpVisible = false;
        break; // Exit
    }
}
}

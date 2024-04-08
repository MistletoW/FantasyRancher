/// @description Insert description here
// You can write your code in this editor

// Step Event for detecting clicks on buttons within slots
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;
    //show_debug_message("click");

    
	for (var i = 0; i < player_inventory_slots; i++) {
        var buttonX = pos_x; // Matching the button's drawing position
        var buttonY = pos_y + i * (slotHeight + gap); // Matching the button's drawing position
		//show_debug_message("button");
        // Check if the click is within the button's area
        if (mouseX >= buttonX && mouseX < buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY < buttonY + buttonHeight) {
				var slot = ds_list_find_value(global.player_inventory[? "slots"], i);
				var itemid = slot[? "item_id"];
				global.item_information = itemid;
				selectId = itemid;
				popUpVisible = !popUpVisible;
                activeSlot = i;
            break; // Avoid detecting multiple button clicks in one frame
        }
    }
}






// Part of the Step Event for selecting an option from the pop-up
if (popUpVisible && mouse_check_button_pressed(mb_left)) {
    var mouseX = device_mouse_x_to_gui(0);
    var mouseY = device_mouse_y_to_gui(0);

//show_debug_message("listen");
for (var i = 0; i < array_length_1d(popUpOptions); i++) {
    var optionY = 543 + 10 + i * 30; 
   
    if (mouseX >= 30 && mouseX <= 30 + 120 && 
        mouseY >= optionY && mouseY <= optionY + 30) { 
        popUpOptionSelected = i;
        switch (popUpOptionSelected) {
            case 0: // sell
                Inventory_removeitem(global.player_inventory, selectId, 1);
				global.playergold += selectGold;
				show_debug_message("sell");
				audio_play_sound(Sell_sound, 10, false);
				show_debug_message(global.playergold);
                break;
            case 1: // bargain
              
               show_debug_message("bargain popup");
                break;
            case 2: 
                popUpVisible = false;
                show_debug_message("Closing popup");
                break;
        }
        popUpVisible = false;
        break; // Exit
    }
}
}


/*	
    for (var i = 0; i < array_length_1d(popUpOptions); i++) {
        var optionY = 100 + i * 40; // Match the Y position used in Draw GUI Event
        if (mouseX >= 100 && mouseX <= 100 + 120 && // Match the X position and width used in Draw GUI Event
            mouseY >= optionY && mouseY <= optionY + 40) { // Match the height of each option
            popUpOptionSelected = i;
			switch(popUpOptionSelected){
				case 0:
				Inventory_removeitem(global.player_inventory, itemid, 1);
				global.playergold += itemid.gold;
				show_debug_message("sell");
				audio_play_sound(Sell_sound, 10, false);
				break;
				
				//bargain not implement
				case 2:
				popUpVisible = false; 
				break;
			}
            //executePopUpOption(i); // Implement this function based on what each option should do
            popUpVisible = false; 
            break;
        }
    }
	*/
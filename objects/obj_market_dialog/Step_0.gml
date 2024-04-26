/// @description Insert description here
// You can write your code in this editor
//show_debug_message(option);
//show_debug_message("bargain:");
//show_debug_message( global.selectGold);




if (global.getbargain = true && !bargainmade){
	show_debug_message("nsssssssswpe");
	newprice = irandom_range(-10, 20);
	global.selectGold += newprice;
	show_debug_message(newprice);
	bargainmade = true;
	
}
//show_debug_message("newpe");
//show_debug_message(newprice);
if (newprice < 0 ) {
	option = 2;
	popUpVisible = true;
	
}
if (newprice > 0 ) {
	option = 1;
	popUpVisible = true;
}



//popup listen



//popup
if (popUpVisible && mouse_check_button_pressed(mb_left)) {
     mouseDX = device_mouse_x_to_gui(0);
     mouseDY = device_mouse_y_to_gui(0);



for (var i = 0; i < array_length_1d(popUpOptions); i++) {
    var optionY = 300 + 10 + i * 30; 
   
    if (mouseDX >= 440 && mouseDX <= 440 + 120 && 
        mouseDY >= optionY && mouseDY <= optionY + 30) { 
        popUpOptionSelected = i;
        switch (popUpOptionSelected) {
            case 0: // sell
				SellNum = get_integer("Number want to sell", 0);
				var slot = ds_list_find_value(global.player_inventory[? "slots"], i);
				existSellNum =  slot[? "quantity"];
				var item = slot[? "item_id"];
				if (SellNum <= existSellNum  ){
			    Inventory_removeitem(global.player_inventory, global.selectItemID, SellNum);
				global.playergold += (global.selectGold * SellNum);
				show_debug_message("sell");
				audio_play_sound(Sell_sound, 10, false);
				show_debug_message(global.playergold);
				global.getbargain = false;
			    bargainmade = false;
				option = 0;
				}
			break;
			case 1:
				global.getbargain = false;	
				option = 0;
			}
		}
}
}
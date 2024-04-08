/// @description Insert description here
// You can write your code in this editor
/*
sell_inventory_size = 10;
global.sell_inventory = Inventory_init(sell_inventory_size);
Inventory_adding(global.sell_inventory,3,3);
*/
sell_list = ds_list_create();



toadstool = ds_map_create();
ds_map_add(toadstool, "item_id",3);
ds_map_add(toadstool, "price", 150);
ds_list_add(sell_list, toadstool);




popUpOptions = ["Buy", "Inspect", "Cancel"];
popUpVisible = false;
activeItem = -1;  

startX = 638;
startY = 64;
endX = 1184;  // Not used directly in this example but useful if you're aligning text or images within bounds
endY = 352;
itemHeight = 30;  // Height of each item's slot for drawing, adjust as needed
maxItemsVisible = (endY - startY) div itemHeight;



buttonWidth = 50; // Width of the button
buttonHeight = 20; // Height of the button, adjust as needed


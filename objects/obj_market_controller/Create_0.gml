/// @description Insert description here
// You can write your code in this editor
player_inventory_slots = 10;
//UI darawing variable
// Configuration for drawing
slotWidth = 32;
slotHeight = 32;
gap = 10; 
padding_bottom = 10; 

// Calculate total width of all slots plus gaps
totalWidth = player_inventory_slots * slotWidth + (player_inventory_slots - 1) * gap;

// Starting position to center slots
startX = (room_width - totalWidth) / 2;
startY = room_height - slotHeight - padding_bottom;

srx = startX;
sry = startY;
// Configuration for the button
buttonWidth = 24;
buttonHeight = 24;
buttonAlpha = 0; // Button transparency
pos_x = 25;
pos_y = 50;


maxSlotsVisible = 20;  

popUpVisible = false;
activeSlot = -1; // -1 indicates no slot is active
 buttonWidth = 24;
 buttonHeight = 24;
 
 
//sell number store
existSellNum = 0;
SellNum = 0;
 //pop up
 // Add to the Create Event of obj_market_controller
popUpVisible = false;
activeSlot = -1; // Index of the slot whose button was clicked
popUpOptions = ["sell", "bargain", "Cancel"];
popUpOptionSelected = -1; // Index of the selected option, -1 means none

 
popUpX = 30;
popUpY = 543;
popUpWidth = 120; // Adjust width as needed
popUpHeight = array_length_1d(popUpOptions) * 30 + 20; // Adjust height based on number of options

//
selectId = 0;
global.selectGold =10;


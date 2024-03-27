/// @description Insert description here
// You can write your code in this editor

spd = 5; 
lastDir = 0; 



// inventory that player carry on
player_inventory_slots = 10;
player_inventory = Inventory_init(player_inventory_slots);


// marketing
global.playergold = 100;




//UI darawing variable
// Configuration for drawing
slotWidth = 32;
slotHeight = 32;
gap = 2; 
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
buttonAlpha = 1; // Button transparency
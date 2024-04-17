/// @description Insert description here
// You can write your code in this editor

spd = 5; 
lastDir = 0; 

creatures_collected = 0; // number of creatures successfully caught
plants_collected = 0;

charging = false;
charge = 0;
max_charge = 200;

shooting = false; // allows animation to play uninterrupted
last_sprite = noone; // allows return to position after shooting lasso

lasso_inst = noone;
inst_rope = noone;
caught_inst = noone;

// charge relating to gathering plants
plant_collecting = false;
plant_charge = 0;
max_plant_charge = 100;

// inventory that player carry on
player_inventory_slots = 10;
global.player_inventory = Inventory_init(player_inventory_slots);


// marketing
global.playergold = 100;



// testing
Inventory_adding(global.player_inventory,3,3);
Inventory_adding(global.player_inventory,4,3);
	

//UI darawing variable
// Configuration for drawing
slotWidth = 32;
slotHeight = 32;
gap = 3; 
padding_bottom = 10; 

// Calculate total width of all slots plus gaps
totalWidth = player_inventory_slots * slotWidth + (player_inventory_slots - 1) * gap;

// Starting position to center slots
startX = (view_wport[0] - totalWidth) / 2;
startY = view_hport[0] - slotHeight - padding_bottom;
// Configuration for the button
buttonWidth = 24;
buttonHeight = 24;
buttonAlpha = 0; // Button transparency

startMenu = true; 
if(room != Path){
	startMenu = false; 
}
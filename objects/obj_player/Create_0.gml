/// @description 

// Movement and general configurations
spd = 5; // Speed set as per obj_player
lastDir = 0; 
player_inventory_slots = 10;
global.player_inventory = Inventory_init(player_inventory_slots);

// Collectables
creatures_collected = 0;
plants_collected = 0;

// Charging and shooting mechanics
charging = false;
charge = 0;
max_charge = 200;
shooting = false;
last_sprite = noone;
lasso_inst = noone;
inst_rope = noone;
caught_inst = noone;

// Plant gathering specifics
plant_collecting = false;
plant_charge = 0;
max_plant_charge = 100;

// UI drawing configurations
slotWidth = 32;
slotHeight = 32;
gap = 3; 
padding_bottom = 10; 
totalWidth = player_inventory_slots * slotWidth + (player_inventory_slots - 1) * gap;
startX = (view_wport[0] - totalWidth) / 2;
startY = view_hport[0] - slotHeight - padding_bottom;
buttonWidth = 24;
buttonHeight = 24;
buttonAlpha = 0; // Button transparency
button_list = ds_list_create(); // Tracking buttons

// Store user input
quantitydrop = 0;

// Menu control
startMenu = (room != Path) ? false : true;

// Economic attributes
global.playergold = 100;

// Additional wild-specific attributes integrated into the main player object
wilds_lives = 3; // Lives specific to wild scenarios, used conditionally
aim_dot = noone; // Targeting dot for special scenarios
slimed = false; // Condition for special state in wild
last_collision = 0; // Time since last significant collision
curr_time = 0; // Current time tracker for various checks

// Testing: Inventory items addition
Inventory_adding(global.player_inventory, 4, 3);

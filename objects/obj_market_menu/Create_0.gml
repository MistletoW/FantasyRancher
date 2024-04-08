/// @description Insert description here
// You can write your code in this editor





menuVisible = false;
menuWidth = 200;
menuHeight = 150;
startX = (display_get_gui_width() - menuWidth) / 2; // Center the menu horizontally
startY = (display_get_gui_height() - menuHeight) / 2; // Center the menu vertically



// Create Event of obj_menu_trigger
menuOptions = ds_list_create();
ds_list_add(menuOptions, "Buy");
ds_list_add(menuOptions, "Bargain");
ds_list_add(menuOptions, "Nope");
menuVisible = false;

// Menu option dimensions
optionWidth = 180; // Width of the clickable area for options
optionHeight = 30; // Height of the clickable area for options
menuWidth = 200;
menuHeight = ds_list_size(menuOptions) * optionHeight + 20; // Dynamic height based on the number of options
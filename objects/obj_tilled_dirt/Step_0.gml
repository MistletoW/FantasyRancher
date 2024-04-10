/// @description Insert description here
// You can write your code in this editor

// Step event of obj_tilled_dirt
if (place_meeting(x, y, obj_player) && keyboard_check_pressed(vk_space)) {
    // Assuming you have a way to access the player's inventory
    var playerInv = obj_player.inventory;
    var plantItemId = "plant_object_name"; // Replace this with your actual plant item ID
    var quantityNeeded = 1;

    // Check if the player has the plant in the inventory
    if (Inventory_find(playerInv, plantItemId, quantityNeeded)) {
        // Remove the plant from the inventory
        if (Inventory_removeitem(playerInv, plantItemId, quantityNeeded)) {
            // Check there's no seed or plant already on the dirt
            if (!instance_exists(obj_seed) && !instance_exists(obj_toadstool)) {
                // Create the seed instance on the tilled dirt
                var newSeed = instance_create_layer(x, y, "Instances", obj_seed);
                newSeed.image_xscale = 0.5; // Start smaller if needed
                newSeed.image_yscale = 0.5;
                // Set up any initial variables or timers for growth here
            }
        }
    }
}





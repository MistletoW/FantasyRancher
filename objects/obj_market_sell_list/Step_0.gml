/// @description Insert description here
// You can write your code in this editor

// Step Event or Mouse Click Event

if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;

    for (var i = 0; i < min(ds_list_size(sell_list), maxItemsVisible); i++) {
        var itemY = startY + i * itemHeight;
        var buttonX = startX + 160; // Ensure this matches the button drawing logic
        var buttonY = itemY;

        // Check if click is within a button's area
        if (mouseX >= buttonX && mouseX <= buttonX + buttonWidth &&
            mouseY >= buttonY && mouseY <= buttonY + buttonHeight) {
            popUpVisible = !popUpVisible; // Toggle pop-up visibility
            activeItem = i; // Remember which item's button was clicked
            break; // Exit the loop once the button click is processed
        }
    }
}























/*
// Detect clicks on sell list items
if (mouse_check_button_pressed(mb_left)) {
    var mouseX = mouse_x;
    var mouseY = mouse_y;

    // Check if click is on an item
    for (var i = 0; i < ds_list_size(sell_list); i++) {
        if (mouseY >= startY + i * 40 && mouseY < startY + (i + 1) * 40 - 10) {  // Assuming item height around 30px
            popUpVisible = true;
            activeItem = i;
            break;
        }
    }

    // Handle popup option selection
    if (popUpVisible && mouseX >= 65 && mouseX <= 65 + 120 &&  // Assuming popup dimensions
        mouseY >= 543 && mouseY <= 543 + array_length_1d(popUpOptions) * 30 + 20) {
        var optionIndex = (mouseY - 543) div 30;
        if (optionIndex >= 0 && optionIndex < array_length_1d(popUpOptions)) {
            // Process option selection based on optionIndex and activeItem
            // Example: show_debug_message("Selected option " + string(optionIndex) + " for item " + string(activeItem));
            popUpVisible = false;  // Close popup after selection
        }
    }
}
*/





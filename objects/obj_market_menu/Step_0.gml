/// @description Insert description here
// You can write your code in this editor


// Step Event of obj_menu_trigger
if (menuVisible && mouse_check_button_pressed(mb_left)) {
    var mouseX = device_mouse_x_to_gui(0);
    var mouseY = device_mouse_y_to_gui(0);

    var startX = (display_get_gui_width() - menuWidth) / 2;
    var startY = (display_get_gui_height() - menuHeight) / 2;

    for (var i = 0; i < ds_list_size(menuOptions); i++) {
        var optionY = startY + 10 + i * optionHeight;

        // Check if click is within the bounds of an option
        if (mouseX >= startX && mouseX <= startX + optionWidth &&
            mouseY >= optionY && mouseY < optionY + optionHeight) {
            show_debug_message("Clicked " + ds_list_find_value(menuOptions, i));
            // Here you can add specific actions for each menu option
            // This could be changing a global game state, opening a new GUI, etc.
            break; // Prevent multiple options from being triggered
        }
    }
}

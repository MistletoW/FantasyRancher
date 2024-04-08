/// @description Insert description here
// You can write your code in this editor
// Draw GUI Event of obj_menu_trigger






if (menuVisible) {
    var startX = (display_get_gui_width() - menuWidth) / 2;
    var startY = (display_get_gui_height() - menuHeight) / 2;

    // Draw menu background
    draw_set_color(c_black);
    draw_set_alpha(0.8);
    draw_rectangle(startX, startY, startX + menuWidth, startY + menuHeight, false);
    draw_set_alpha(1);

    // Draw menu options
    for (var i = 0; i < ds_list_size(menuOptions); i++) {
        var optionY = startY + 10 + i * optionHeight;
        draw_set_color(c_white);
        draw_text(startX + 10, optionY, ds_list_find_value(menuOptions, i));
    }
}











/*
if (menuVisible) {
     menuWidth = 200;
     menuHeight = 150;
     startX = (display_get_gui_width() - menuWidth) / 2; // Center the menu horizontally
     startY = (display_get_gui_height() - menuHeight) / 2; // Center the menu vertically

    // Draw menu background
    draw_set_color(c_black);
    draw_set_alpha(0.8); // Semi-transparent
    draw_rectangle(startX, startY, startX + menuWidth, startY + menuHeight, false);
    draw_set_alpha(1); // Reset alpha to fully opaque for other drawing operations

    // Draw menu options (as an example)
    draw_set_color(c_white);
    draw_text(startX + 10, startY + 10, "Option 1");
    draw_text(startX + 10, startY + 40, "Option 2");
    draw_text(startX + 10, startY + 70, "Option 3");
}




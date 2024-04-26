/// @description Insert description here
// You can write your code in this editor

if (global.getbargain = true){
	option = 1;
}





	// select the dialog
    switch (option) {
        case 0:
            draw_set_color(c_white);
			draw_text(300, 584, string("Hi~~, how's going"));
            break;
        case 1:
            draw_set_color(c_white);
			draw_text(300, 584, string("Well, I can give you this offer"));
			
            break;
        case 2:
            draw_set_color(c_red);
			draw_text(300, 584, string("this is new price!!!! take it or not!"));
			
            break;

    }




// popup window
	if (popUpVisible) {
    // Fixed position for the pop-up window
    popUpX = 440;
    popUpY = 300;
    popUpWidth = 120; 
    popUpHeight = array_length_1d(popUpOptions) * 30 + 20; 

    // Set background color to black for the pop-up window
    draw_set_color(c_black);
    draw_rectangle(popUpX, popUpY, popUpX + popUpWidth, popUpY + popUpHeight, true); 

    // Set text color to white for the options
    draw_set_color(c_white);
    for (var i = 0; i < array_length_1d(popUpOptions); i++) {
        var optionText = popUpOptions[i];
        var textY = popUpY + 20 + i * 30; 
        draw_text(popUpX + 50, textY, optionText);
    }

   
    draw_set_color(c_white);
}

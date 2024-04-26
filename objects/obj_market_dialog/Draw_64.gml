/// @description Insert description here
// You can write your code in this editor

if (global.getbargain = true){
	option = 1;
}





	// select the dialog
    switch (option) {
        case 0:
            draw_set_color(c_white);
			draw_text(250, 584, string("Hi~~, how's going"));
            break;
        case 1:
            draw_set_color(c_white);
			draw_text(250, 584, string("Well, I can give you this offer"));
			global.getbargain = false;
            break;
        case 2:
            draw_set_color(c_red);
			draw_text(250, 584, string("this is new price!!!! take it or not!"));
            break;

    }





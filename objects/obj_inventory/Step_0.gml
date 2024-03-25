/// @description Insert description here
// You can write your code in this editor



if (place_meeting(x,y,obj_player)){
	for (var i = 0; i < inventory_size; i++) {
		var slot = ds_list_find_value(slots, i);
		var item = slot[? "item"];
		var quantity = slot[? "quantity"];
		if (item != noone) {
        draw_text(10, i * 20, "Slot " + string(i) + ": " + item + " x" + string(quantity));
		} else {
        draw_text(10, i * 20, "Slot " + string(i) + ": Empty");
		}
	}	

}





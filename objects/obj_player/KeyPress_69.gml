/// @description Insert description here
// You can write your code in this editor

var target_instance = instance_place(x, y+20, obj_untilled_dirt);

if (target_instance != noone) {
    if (target_instance.sprite_index == spr_untilled_dirt) {
        target_instance.sprite_index = spr_tilled_dirt;
    }
	
    else if (target_instance.sprite_index == spr_tilled_dirt) {
        target_instance.sprite_index = spr_untilled_dirt;
    }
}




/// @description Step player movement

var keyLeft = keyboard_check(vk_left); 
var keyRight = keyboard_check(vk_right); 
var keyUp = keyboard_check(vk_up); 
var keyDown = keyboard_check(vk_down); 

if(keyDown){
	sprite_index = spr_player_down_walk; 
	image_xscale = 1; 
	lastDir = 0; 
	y += spd; 
}else if(keyUp){
	sprite_index = spr_player_up_walk; 
	image_xscale = 1; 
	lastDir = 1; 
	y -= spd; 
}else if(keyLeft){
	sprite_index = spr_player_left_walk; 
	image_xscale = 1; 
	lastDir = 2; 
	x -= spd; 
}else if(keyRight){
	sprite_index = spr_player_left_walk; 
	image_xscale = -1; 
	lastDir = 3; 
	x += spd; 
}else{
	switch(lastDir){
		case 0: 
			sprite_index = spr_player_down_idle; 
			image_xscale = 1; 
			break; 
		case 1: 
			sprite_index = spr_player_up_idle; 
			image_xscale = 1; 
			break; 
		case 2: 
			sprite_index = spr_player_left_idle; 
			image_xscale = 1; 
			break; 
		case 3: 
			sprite_index = spr_player_left_idle; 
			image_xscale = -1; 
			break; 
		default: 
			sprite_index = spr_player_down_idle; 
			image_xscale = 1; 
	}
}
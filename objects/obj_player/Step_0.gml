// Movement Input
var keyLeft = keyboard_check(vk_left); 
var keyRight = keyboard_check(vk_right); 
var keyUp = keyboard_check(vk_up); 
var keyDown = keyboard_check(vk_down);

// Calculate movement vectors
var moveX = spd * (keyRight - keyLeft);
var moveY = spd * (keyDown - keyUp);

// Horizontal movement with collision check
if (!place_meeting(x + moveX, y, obj_tree_wilds) && !place_meeting(x + moveX, y, obj_fence)) {
    x += moveX;
    if (moveX > 0) {
        sprite_index = spr_player_left_walk;
        image_xscale = -1;
        lastDir = 3;
    } else if (moveX < 0) {
        sprite_index = spr_player_left_walk;
        image_xscale = 1;
        lastDir = 2;
    }
} else {
    // Adjust position to avoid collision
    var i = 0;
    while ((place_meeting(x + sign(moveX), y, obj_tree_wilds) || place_meeting(x + sign(moveX), y, obj_fence)) && i < abs(moveX)) {
        x -= sign(moveX);
        i++;
    }
}

// Vertical movement with collision check
if (!place_meeting(x, y + moveY, obj_tree_wilds) && !place_meeting(x, y + moveY, obj_fence)) {
    y += moveY;
    if (moveY > 0) {
        sprite_index = spr_player_down_walk;
        image_xscale = 1;
        lastDir = 0;
    } else if (moveY < 0) {
        sprite_index = spr_player_up_walk;
        image_xscale = 1;
        lastDir = 1;
    }
} else {
    // Adjust position to avoid collision
    var j = 0;
    while ((place_meeting(x, y + sign(moveY), obj_tree_wilds) || place_meeting(x, y + sign(moveY), obj_fence)) && j < abs(moveY)) {
        y -= sign(moveY);
        j++;
    }
}

// Idle state handling when no movement keys are pressed
if (moveX == 0 && moveY == 0) {
    switch (lastDir) {
        case 0: sprite_index = spr_player_down_idle; break;
        case 1: sprite_index = spr_player_up_idle; break;
        case 2: sprite_index = spr_player_left_idle; break;
        case 3: sprite_index = spr_player_left_idle; image_xscale = -1; break;
    }
}
// LASSO STUFF

// don't allow to go beyond max
if (charge > max_charge) {
	charge = max_charge;
}

// shoot upon release
if (charging == true && !keyboard_check(vk_space)) {
	charging = false;
	shooting = true;
	
	// play the shooting animation before putting out the rope
	last_sprite = sprite_index; // we need to return to this after
	
	sprite_index = spr_rope_throw;
	alarm[0] = room_speed; // animation will finish after 1 second/play
	
}

// Set invisible and fixed position if in market 
if(room == market){
	visible = false; 
	x = view_wport[0]/2; 
	y = view_hport[0]/2; 
}else{
	visible = true; 
}

// Remove tutorial menu 
if(keyboard_check(vk_escape)){
	startMenu = false; 
}

// Keep from going out of bounds in house 
if(room == House){
	if(x < sprite_width/2){
		x = sprite_width/2;
	}else if(x > view_wport[0] - sprite_width/2){
		x = view_wport[0] - sprite_width/2 - 1; 
	}
	
	if(y < sprite_height/2){
		y = sprite_height/2; 
	}else if(y > view_hport[0] - sprite_height/2){
		y = view_hport[0] - sprite_height/2 - 1; 
	}
	
}
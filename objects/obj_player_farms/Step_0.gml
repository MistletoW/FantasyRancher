/// @description Insert description here
// You can write your code in this editor

event_inherited();

var keyLeft = keyboard_check(vk_left); 
var keyRight = keyboard_check(vk_right); 
var keyUp = keyboard_check(vk_up); 
var keyDown = keyboard_check(vk_down);


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
    // Adjust position to the edge of the colliding object if needed
    // This loop will step back until no longer colliding
    var i = 0; // Loop counter to prevent infinite loops
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
    // Adjust position to the edge of the colliding object if needed
    var j = 0; // Loop counter to prevent infinite loops
    while ((place_meeting(x, y + sign(moveY), obj_tree_wilds) || place_meeting(x, y + sign(moveY), obj_fence)) && j < abs(moveY)) {
        y -= sign(moveY);
        j++;
    }
}


// Idle state handling
if (moveX == 0 && moveY == 0) {
    switch (lastDir) {
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





/// @description Insert description here
// You can write your code in this editor

if (!isGrown) {
    growthTimer -= 1;
	sprite_index = spr_seedling;
    if (growthTimer <= 0) {
        isGrown = true;
        sprite_index = spr_orchid; // Assuming spr_orchid is the grown sprite
    }
}




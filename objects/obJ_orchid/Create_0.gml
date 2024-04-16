/// @description market values

item_id = 4;
quantity = 1;
gold = 10;

if(room = SlimeWilds){
	isGrown = true;
} else {
	isGrown = false;
}
growthTimer = room_speed * 60; // 60 seconds to grow
sprite_index = spr_orchid;
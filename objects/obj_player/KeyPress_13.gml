/// @description Insert description here
// You can write your code in this editor

if (room == AnimalFarm1) {
    var slime = instance_place(x, y, obj_slime);

    if (slime != noone) {
		//ADD SLIME TO INVENTORY
        instance_destroy(slime);
    } else {
		
		if(true){//CHECK IF SLIME IN INVENTORY
			var slime = instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_slime);
			//REMOVE SLIME FROM INVENTORY
		}
    }
}



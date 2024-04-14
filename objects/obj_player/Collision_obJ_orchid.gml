/// @description collect while pressing enter key

if (keyboard_check(vk_enter) && !shooting && !charging) {
	plant_collecting = true;
	plant_charge += 1;
	
	if (plant_charge >= max_plant_charge) {
		plants_collected += 1;
		instance_destroy(other);
		plant_collecting = false;
		plant_charge = 0;
	}
	
} else {
	plant_collecting = false;
	plant_charge = 0;
}
/// @description Insert description here
// You can write your code in this editor

breeding_countdown -= 1;

if (breeding_countdown <= 0) {
    breeding_countdown = breeding_timer;

    var animal_count = instance_number(obj_animal);
    var pair_count = floor(animal_count / 2);

    for (var i = 0; i < pair_count; i++) {
        var spawnX = x + area_width / 2;
        var spawnY = y + area_height / 2;
        instance_create_layer(spawnX, spawnY, "Instances", obj_animal);
    }
}



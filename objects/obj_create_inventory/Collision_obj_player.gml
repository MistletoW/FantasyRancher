/// @description Insert description here
// You can write your code in this editor

var size = argument[0];
var inventory = ds_map_create();
inventory[? "size"] = size;
inventory[? "slots"] = ds_list_create();
for (var i = 0; i < size; i++) {
    var slot = ds_map_create();
    slot[? "item"] = noone; // Indicates no item is in the slot.
    slot[? "quantity"] = 0;
    ds_list_add(inventory[? "slots"], slot);
}





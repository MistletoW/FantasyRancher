// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory_init(_slots){
    var slots = argument[0];
    var inventory = ds_map_create();
    var slotsList = ds_list_create();
    for (var i = 0; i < slots; i++) {
        var slot = ds_map_create();
        slot[? "item_id"] = noone; 
        slot[? "quantity"] = 0;
        ds_list_add(slotsList, slot);
    }
    inventory[? "slots"] = slotsList;
    return inventory;
}















/*
function Inventory_init(_slots){
var slots = argument[0];
var inventory = ds_map_create();
var slotsList = ds_list_create();
for (var i = 0; i < slots; i++) {
    var slot = ds_map_create();
    slot[? "item"] = noone;
    slot[? "quantity"] = 0;
    ds_list_add(slotsList, slot);
}
inventory[? "slots"] = slotsList;
return inventory;
}
*/
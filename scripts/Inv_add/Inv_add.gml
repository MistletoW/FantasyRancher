// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory_adding(_inventory, _item_id, _quantity) {
    var inventory = argument[0];
    var item_id = argument[1];
    var quantity = argument[2];
    var slots = inventory[? "slots"];
    var added = false;
    var remainingQuantity = quantity;

    // Try to add to an existing stack of the same item_id
    for (var i = 0; i < ds_list_size(slots) && remainingQuantity > 0; i++) {
        var slot = ds_list_find_value(slots, i);
        if (slot[? "item_id"] == item_id || slot[? "item_id"] == noone) {
            var canAdd = min(64 - slot[? "quantity"], remainingQuantity);
            slot[? "quantity"] += canAdd;
            remainingQuantity -= canAdd;
            if (slot[? "item_id"] == noone) slot[? "item_id"] = item_id;
            added = true;
            if (remainingQuantity <= 0) break; // Exit if all items have been added
        }
    }

    // If there's still quantity left and wasn't all added, try to find an empty slot
    if (remainingQuantity > 0) {
        for (var i = 0; i < ds_list_size(slots); i++) {
            var slot = ds_list_find_value(slots, i);
            if (slot[? "item_id"] == noone) {
                slot[? "item_id"] = item_id;
                slot[? "quantity"] = remainingQuantity;
                added = true;
                break; // Exit as the remaining items have been added
            }
        }
    }

    return added; // Return true if item was added, false otherwise
}





/*
function Inventory_adding(_inventory, _item, _quantity){
var inventory = argument[0];
var item = argument[1];
var quantity = argument[2];
var slots = inventory[? "slots"];
for (var i = 0; i < ds_list_size(slots); i++) {
    var slot = ds_list_find_value(slots, i);
    if (slot[? "item"] == item || slot[? "item"] == noone) {
        if (slot[? "quantity"] + quantity <= 64) { // Assuming max stack size is 64 like minecraft
            slot[? "item"] = item;
            slot[? "quantity"] += quantity;
            return true; // Item added successfully
        }
    }
}
return false; // Inventory full or item stack maxed out	
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
//// just testing remove 
//example:
//Inventory_removeitem(player_inventory,2,1)
function Inventory_removeitem(inventory, itemid, quantity) {
    var slots = inventory[? "slots"];
    var totalRemoved = 0; // Track total quantity removed

    for (var i = 0; i < ds_list_size(slots) && totalRemoved < quantity; i++) {
        var slot = ds_list_find_value(slots, i);
        if (slot[? "item_id"] == itemid) {
            var currentQuantity = slot[? "quantity"];
            var removeQuantity = min(quantity - totalRemoved, currentQuantity);
            slot[? "quantity"] -= removeQuantity;
            totalRemoved += removeQuantity;

            if (slot[? "quantity"] == 0) {
                slot[? "item_id"] = noone; // Clear slot if empty
            }
        }
    }

    return totalRemoved == quantity; // Return true if fully removed, false otherwise
}
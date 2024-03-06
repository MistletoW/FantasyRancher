/// @function remove_from_inventory(item_id)
/// @description Removes an item from the inventory
/// @param {string} item_id The unique ID of the item to remove
/*
function remove_from_inventory(item_id, amount) {
	/// remove_item_from_inventory(item_id, amount)
var item_id = argument0;
var amount = argument1;

// check if there are exist in inventoyr
if (ds_map_exists(global.inventory, item_id)) {
    // reduce by amount
    global.inventory[? item_id] -= amount;

    //  complete remove that item
    if (global.inventory[? item_id] <= 0) {
        ds_map_delete(global.inventory, item_id);
    }
} else {
    //  404 no item found
}



}
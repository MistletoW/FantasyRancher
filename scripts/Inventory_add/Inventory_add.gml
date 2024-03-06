/// @function add_to_inventory(item_id)
/// @description Adds an item to the inventory
/// @param {string} item_id The unique ID of the item
/*
function add_to_inventory(item_id, amount) {
    /// add_item_to_inventory(item_id)
	
if (!ds_map_exists(global.inventory, item_id)) {
    ds_map_add(global.inventory, item_id, 1);
} else {
    global.inventory[? item_id] += amount;
}
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inventory_find(inv, _item, _quantity){
	var inventory = argument[0];
	var itemid = argument[1];
	var quantity = argument[2] != undefined ? argument[2] : 1;
	var slots = inventory[? "slots"];
	var totalQuantity = 0;
	for (var i = 0; i < ds_list_size(slots); i++) {
    var slot = ds_list_find_value(slots, i);
    if (slot[? "item_id"] == itemid) {
        totalQuantity += slot[? "quantity"];
        if (totalQuantity >= quantity) {
            return true; // Enough of the item exists
        }
    }
}
}
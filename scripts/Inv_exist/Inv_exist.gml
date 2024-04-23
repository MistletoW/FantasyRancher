// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Inv_exist(objiventory, itemid){
    var inventory = objiventory; // Direct use of function argument
    var item = itemid; // Direct use of function argument
    //var quantity = (_quantity != undefined) ? _quantity : 1; // Handling the optional quantity argument
    var slots = inventory[? "slots"];
    var totalQuantity = 0;

    // Iterate through each slot in the inventory
    for (var i = 0; i < ds_list_size(slots); i++) {
        var slot = ds_list_find_value(slots, i);
        if (slot[? "item_id"] == item) {
            return true; // Enough of the item exists     
        }
    }
    // 404
    return false;
}


// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function market_sell(arg,arg2,arg3){
/// market_sell_item(inventory, item, quantity)
var inventory = argument[0];
var item_id = argument[1];
var quantity = argument[2];
var price = 0;
	 switch (item_id) {
            case 1:
                price = 10;//hard code for now, will coodeing a enum for the price in market obj
                break;
            case 2:
                price = 5;
                break;
        }

// check if the item is in the inventory and there's enough quantity to sell
if (Inventory_find(inventory, item_id, quantity)) {
    // remove the item(s) from the inventory
    if (Inventory_removeitem(inventory,item_id,quantity)) {
        // Calculate total sell price
        var totalSellPrice = price * quantity;
        
        // add gold to player
        global.playergold += totalSellPrice;
        
        // provide feedback to the player
        show_message("Sold");
        
        return true; // Successful transaction
    }
}

//  transaction not successful
show_message("Failed to sell item(s). Check your inventory.");
return false;
}
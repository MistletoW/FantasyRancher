// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

// this function is tell thr inventory which sprite should be drawing
function Item_distinguish(item_id){
	switch(item_id){
		case 1:
		return(spr_bone);
		break;
		
		//add item example:
		// case item_id
	}
	// placehoder
	return (spr_bed);
}
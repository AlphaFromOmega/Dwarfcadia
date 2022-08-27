/// @description scr_inventory_remove_item(x, y);
/// @param x
/// @param  y
function scr_inventory_remove_item() {
	var xx = argument[0];
	var yy = argument[1];
	//Check range
	if (xx != median (0, xx, obj_inv.width-1)) || (yy != median (0, yy, obj_inv.height-1)) {
	    show_debug_message("X and Y are outside of range");
	    exit;
	}

	//Get item count
	var item_count = obj_inv.count[# xx, yy];


	if(item_count > 0) {
	    obj_inv.count[# xx,yy]--;
	    var remove_item = obj_inv.box[# xx,yy]
	    if item_count == 1 {
	        obj_inv.box [# xx, yy] = item.none;
	    }
	    return remove_item;
	} else if(item_count == 0){
	    show_debug_message("Item slot empty")
	    return item.none;
	}else{
	    show_error("The item count is less than 0", false);
	}




}

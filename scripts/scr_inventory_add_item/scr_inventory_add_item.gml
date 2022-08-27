/// @description scr_inventory_add_item(x, y, item)
/// @param x
/// @param  y
/// @param  item
function scr_inventory_add_item() {
	var xx = argument[0];
	var yy = argument[1];
	var add_item = argument[2];

	//Check range
	if (xx != median (0, xx, obj_inv.width-1)) || (yy != median (0, xx, obj_inv.height-1)) {
	    show_debug_message("X and Y are outside of range");
	    exit;
	}

	//Get item count
	var item_count = obj_inv.count[# xx, yy];

	if item_count == 0 {
	    obj_inv.box[# xx, yy] = add_item;
	    obj_inv.count[# xx, yy]++;
	    return true;
	} else if item_count > 0 {
	    if (obj_inv.count[# xx, yy] == add_item){
	    obj_inv.count[# xx, yy]++;
	        return true;
	    } else {
	        show_debug_message("Item slot occupied")
	        return false
	    }
	} else {
	    show_error("The item count is less than 0", false);
	}



}

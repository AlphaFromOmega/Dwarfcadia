/// @description scr_inventory_pickup_item(item)
/// @param item
function scr_inventory_pickup_item() {
	var add_item = argument[0];

	//Check similar
	for (var yy = 0; yy < obj_inv.height; yy++){ 
	    for (var xx = 0; xx < obj_inv.width; xx++){
	        if (obj_inv.box[# xx, yy] == add_item) {
	            obj_inv.count[# xx,yy]++;
	            return true;
	        }
	    }
	}
	//Check empty
	for (var yy = 0; yy < obj_inv.height; yy++){ 
	    for (var xx = 0; xx < obj_inv.width; xx++){
	        if (obj_inv.box[# xx, yy] == item.none) {
	            obj_inv.box[# xx, yy] = add_item;
	            obj_inv.count[# xx,yy]++;
	            return true;
	        }
	    }
	}

	show_debug_message ("Inventory is full");
	return false;



}

/// @description scr_y_to_gy(y)
/// @param y
function scr_y_to_gy() {
	var xx = argument [0]
	if (xx < obj_inv.x) return -1;
	return (xx - obj_inv.x) div obj_inv.box_size;



}

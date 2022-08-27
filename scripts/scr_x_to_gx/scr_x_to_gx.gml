/// @description scr_x_to_gx(x)
/// @param x
function scr_x_to_gx() {
	var xx = argument [0]
	if (xx < obj_inv.x) return -1;
	return (xx - obj_inv.x) div obj_inv.box_size;



}

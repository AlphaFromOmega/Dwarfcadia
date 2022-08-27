/// @description scr_itemstat(ID, name, description, max uses, uses, owned, block);
/// @param ID
/// @param  name
/// @param  description
/// @param  max uses
/// @param  uses
/// @param  owned
/// @param  block
function scr_itemstat(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
	var item_id = argument0;
	global.item_index[#item_id, stat.name] = argument1;
	global.item_index[#item_id, stat.description] = argument2;
	global.item_index[#item_id, stat.max_uses] = argument3;
	global.item_index[#item_id, stat.uses] = argument4;
	global.item_index[#item_id, stat.owned] = argument5;
	global.item_index[#item_id, stat.block] = argument6;




}

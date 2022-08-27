function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // obj_view
	global.__objectDepths[1] = -10000; // obj_roomproperties
	global.__objectDepths[2] = 0; // obj_draw
	global.__objectDepths[3] = 0; // obj_boxparent
	global.__objectDepths[4] = 0; // obj_collideparent
	global.__objectDepths[5] = 0; // obj_blockparent
	global.__objectDepths[6] = 0; // obj_roomobject
	global.__objectDepths[7] = 0; // obj_stone
	global.__objectDepths[8] = 0; // obj_basalt
	global.__objectDepths[9] = 0; // obj_dirt
	global.__objectDepths[10] = 0; // obj_log
	global.__objectDepths[11] = 0; // obj_block
	global.__objectDepths[12] = 0; // obj_timer
	global.__objectDepths[13] = 0; // obj_door
	global.__objectDepths[14] = 0; // obj_toggle
	global.__objectDepths[15] = 0; // obj_pressureplatelight
	global.__objectDepths[16] = 0; // obj_pressureplate
	global.__objectDepths[17] = 0; // obj_pressureplateheavy
	global.__objectDepths[18] = 0; // obj_led
	global.__objectDepths[19] = 0; // obj_player
	global.__objectDepths[20] = 0; // obj_wall
	global.__objectDepths[21] = 0; // obj_boxlight
	global.__objectDepths[22] = 0; // obj_box
	global.__objectDepths[23] = 0; // obj_boxstrong
	global.__objectDepths[24] = -1; // obj_select
	global.__objectDepths[25] = -1000; // obj_inv
	global.__objectDepths[26] = 0; // obj_item
	global.__objectDepths[27] = 0; // obj_menubutton
	global.__objectDepths[28] = 0; // obj_idlink


	global.__objectNames[0] = "obj_view";
	global.__objectNames[1] = "obj_roomproperties";
	global.__objectNames[2] = "obj_draw";
	global.__objectNames[3] = "obj_boxparent";
	global.__objectNames[4] = "obj_collideparent";
	global.__objectNames[5] = "obj_blockparent";
	global.__objectNames[6] = "obj_roomobject";
	global.__objectNames[7] = "obj_stone";
	global.__objectNames[8] = "obj_basalt";
	global.__objectNames[9] = "obj_dirt";
	global.__objectNames[10] = "obj_log";
	global.__objectNames[11] = "obj_block";
	global.__objectNames[12] = "obj_timer";
	global.__objectNames[13] = "obj_door";
	global.__objectNames[14] = "obj_toggle";
	global.__objectNames[15] = "obj_pressureplatelight";
	global.__objectNames[16] = "obj_pressureplate";
	global.__objectNames[17] = "obj_pressureplateheavy";
	global.__objectNames[18] = "obj_led";
	global.__objectNames[19] = "obj_player";
	global.__objectNames[20] = "obj_wall";
	global.__objectNames[21] = "obj_boxlight";
	global.__objectNames[22] = "obj_box";
	global.__objectNames[23] = "obj_boxstrong";
	global.__objectNames[24] = "obj_select";
	global.__objectNames[25] = "obj_inv";
	global.__objectNames[26] = "obj_item";
	global.__objectNames[27] = "obj_menubutton";
	global.__objectNames[28] = "obj_idlink";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}

function scr_output() {
	outputId=instance_place(outputx, outputy, outputObj);

	if debug_mode && global.hide = 0{
	    if outputId = 0 {show_debug_message("Output for "+ string(id) + string(object_get_name(object_index)) + " does not exist")}
	        global.hide = 1
	}else if on {
	    with outputId {input = 1}
	} else {
	    with outputId {input = 0}
	}




}

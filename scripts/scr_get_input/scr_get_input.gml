/// @description scr_get_input
function scr_get_input() {
	upMove = keyboard_check(ord("W"));
	leftMove = keyboard_check(ord("A"));
	downMove = keyboard_check(ord("S"));
	rightMove = keyboard_check(ord("D"));
	sprintMove = keyboard_check(vk_lshift);
	actionButton = mouse_check_button(mb_left);
	useButton = mouse_check_button(mb_right);
	fullscreenButton = keyboard_check_pressed(vk_f11);
	invButton = keyboard_check_pressed(ord("E"));
	hotbarScrollup = mouse_wheel_up();
	hotbarScrolldown = mouse_wheel_down();

	//Axis
	xlaxis = (rightMove - leftMove);
	ylaxis = (downMove - upMove);

	//Check for controller
	if (gamepad_is_connected(0)) {
	    gamepad_set_axis_deadzone(0, .25);
	    xlaxis = gamepad_axis_value(0,gp_axislh);
	    ylaxis = gamepad_axis_value(0,gp_axislv);
	    xraxis = sign(gamepad_axis_value(0,gp_axisrh));
	    yraxis = sign(gamepad_axis_value(0,gp_axisrv));
	    sprintMove = gamepad_button_check(0,gp_stickl);
	    actionButton = gamepad_button_check(0,gp_face1);
	    invButton = gamepad_button_check_pressed(0,gp_face3);
	    hotbarScrollup = gamepad_button_check(0,gp_shoulderr);
	    hotbarScrolldown = gamepad_button_check(0,gp_shoulderl);
	}



}

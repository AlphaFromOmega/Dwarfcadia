/// @description scr_state_movement
function scr_state_movement() {
	scr_get_input();
	spd = playerSpd
	if sprintMove == 1 {spd = playerSpd * 1.5};



	//Direction
	var dir = point_direction(0, 0, xlaxis, ylaxis);
	if (xlaxis == 0 and ylaxis = 0) {
	    len = 0;
	} else {
	    len = spd;
	}

	//Movement
	hspd = lengthdir_x(len,dir);
	vspd = lengthdir_y(len,dir);

	phy_position_x += hspd;
	phy_position_y += vspd;




}

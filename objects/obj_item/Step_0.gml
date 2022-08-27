image_index = entity_item;
image_xscale = 0.5;
image_yscale = 0.5;
if (distance_to_object(obj_player) <= i*2) or (distance_to_object(obj_player) <= 16){
    phy_speed_x = 0;
    phy_speed_y = 0;
    phy_position_x = obj_player.x;
    phy_position_y = obj_player.y;
    i = 0;
}else if (distance_to_object(obj_player) <= playerRange/2){
    dir = point_direction(x,y,obj_player.x,obj_player.y)
    phy_speed_x = lengthdir_x(i,dir);
    phy_speed_y = lengthdir_y(i,dir);
    i *= 2;
} else i = 1;



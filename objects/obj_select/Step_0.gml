/// @description Cursor Select
scr_get_input();
if (gamepad_is_connected(0)) && (instance_exists(obj_player)){
    x = floor(obj_player.x/32)*32;
    y = floor(obj_player.y/32)*32;
}
if (gamepad_is_connected(0)) {   
    //Axis
    xdec = xdec + 1
    ydec = ydec + 1
    
    if xraxis == 0 {xdec = 0};
    if yraxis == 0 {ydec = 0};
    
    if xdec = 4 {
        x += 32 * xraxis
        xdec = 0
    }
    if ydec = 4 {
        y += 32 * yraxis
        ydec = 0
    }
    if (yraxis == 0 && xraxis == 0 && actionButton == false){
        image_alpha = image_alpha - 0.005
    } else {
        if (image_alpha <= 0.2) {
            x = floor(obj_player.x/32)*32;
            y = floor(obj_player.y/32)*32;
        }
        image_alpha = 1;
    }
} else {
    x = (floor((mouse_x)/32)*32)+16;
    y = (floor((mouse_y)/32)*32)+16;
}
if (distance_to_object(obj_player) <= playerRange)
    {image_index = 0} else 
    {image_index = 1}

if useButton {
    if !(position_meeting(x, y, obj_roomobject)) && !((ds_grid_get(obj_inv.box,obj_inv.hotbarSelect,0)) == 0){
        show_debug_message("holding " + string(ds_grid_get(obj_inv.box,obj_inv.hotbarSelect,0)));
        creationid = instance_create(x,y,obj_block);
        with creationid {blockid = ds_grid_get(obj_inv.box,obj_inv.hotbarSelect,0);}
        scr_inventory_remove_item(obj_inv.hotbarSelect,0);
    }
    
}


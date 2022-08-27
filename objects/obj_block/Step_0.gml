scr_get_input();
if !(blockid == 0) {
    scr_blockProperties();
    i=0;
}
if (j == 1) {
    blockmax = blockmaxseconds * room_speed;
    image_index = (blockid + 1);
    k = 1;
} else {
    instance_destroy();
}

if k == 1{
    if (actionButton == 1 && distance_to_object(obj_player) <= playerRange) && (position_meeting(obj_select.x, obj_select.y, id)){
        if blockmax <= blockcurrent {
            for (l=0;l <= dropUnique-1;l++){
                repeat((ceil(random(maxDrop/minDrop)))* minDrop){
                    inst = instance_create(x,y,obj_item);
                    inst.entity_item = dropItem[l]
                }
            }
            instance_destroy();
        } else {
            blockcurrent += obj_player.miningSpd;
        }
    } else {
        blockcurrent = 0;
    }
}




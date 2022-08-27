scr_get_input();
if (actionButton == 1 && distance_to_object(obj_player) <= playerRange) && (position_meeting(obj_select.x, obj_select.y, id)){
    if blockmax == blockcurrent {
        for (i=0;i <= dropUnique-1;i+=1){
            repeat((ceil(random(maxDrop/minDrop)))* minDrop){
                inst = instance_create(x,y,obj_item);
                inst.entity_item = dropItem[i]
            }
        }
        instance_destroy();
    } else {
        blockcurrent += 1;
    }
} else {
    blockcurrent = 0;
}




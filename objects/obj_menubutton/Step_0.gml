if creationimage != -1 && i == 0 {
    baseimage = creationimage*2;
    i=1;
}

if position_meeting(mouse_x,mouse_y,self){
    image_index = baseimage + 1;
    if mouse_check_button(mb_left){
        room_goto(roomset);
    }
} else {
    image_index = baseimage;
}


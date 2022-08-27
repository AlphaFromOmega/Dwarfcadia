global.hide = 0;
if instance_exists(obj_player){
    instance_create(obj_player.x, obj_player.y, obj_view);
}
globalvar playerRange;
playerRange = 80;
instance_create(x, y, obj_select);
instance_create(x, y, obj_inv);
fullscreen = 0;
scr_itemid();
randomize();
if room == rm_generation||room == rm_genLarge {
    scr_generate();
}


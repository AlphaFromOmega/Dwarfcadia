objSelected = ds_grid_get(obj_inv.box,obj_inv.hotbarSelect,0)+1;
if !(position_meeting(x, y, obj_roomobject)) {
    draw_sprite_ext(sprsht_block,objSelected,x,y,1,1,0,c_white,0.1);
}
image_alpha = 1;
draw_self();


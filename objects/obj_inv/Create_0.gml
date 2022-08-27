/// @description Initial the Inventory
delay = 0;
globalvar invState;
invState = 0;
width = 9;
height = 4;
box_size = 64;
xoffset = 384;
yoffset = 128;
hotbarSelect = 0;
draw_set_font(fnt_gui);
startroom = room;

//Create the ds grids
box = ds_grid_create(width, height);
ds_grid_clear(box, item.none);

count = ds_grid_create(width, height);
ds_grid_clear(count, 0);


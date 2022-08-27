/// @description scr_generate
function scr_generate() {
	width = floor(room_width/32);
	height = floor(room_height/32);
	debugempty = 0;

	world = ds_grid_create(width,height);
	for (var gy = 0; gy <= height; gy+=1){ 
	    for (var gx = 0; gx <= width; gx+=1){
	        block = instance_create(gx*32+16,gy*32+16,obj_block);
	        with block {blockid = round(random(sprite_get_number(sprsht_block)-1))+ 1}
	        if block.blockid <= 1 || block.blockid > (sprite_get_number(sprsht_block)){
	            with block {instance_destroy();}
	            world[# gx,gy] = 0;
	            debugempty += 1;
	        }else{
	            world[# gx,gy] = block.blockid;
	        }
	        if gy == height && gx == width{
	            show_debug_message(string(debugempty) + " blocks are empty")
	        z = 0;
	            for (var ey = 0; ey <= height; ey+=1){ 
	                for (var ex = 0; ex <= width; ex+=1){
	                    if (world[# ex,ey] == 0){
	                        emptyspacex[z] = ex;
	                        emptyspacey[z] = ey;
	                        z += 1;
	                    }
	                    if ey == height && ex == width{
	                        selected = round(random(z));
	                        spawnx = (emptyspacex[selected]*32)+16;
	                        spawny = (emptyspacey[selected]*32)+16;
	                        instance_create(spawnx, spawny, obj_player);
	                        instance_create(spawnx, spawny, obj_view);
	                    }
	                }
	            }
	        }
	    }
	} 






}

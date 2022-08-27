/// @description Draw inv
if startroom == room{
    if invState {
        draw_set_alpha(0.25);
        draw_set_colour(c_black);
        draw_rectangle(__view_get( e__VW.XPort, 0 ),__view_get( e__VW.YPort, 0 ),__view_get( e__VW.XPort, 0 ) + __view_get( e__VW.WPort, 0 ),__view_get( e__VW.YPort, 0 ) + __view_get( e__VW.HPort, 0 ),0);
        for (var yy = 0; yy < height; yy++) {
            for (var xx = 0; xx < width; xx++) {
                var tx = x+(xx*box_size);
                var ty = y+(yy*box_size);
                draw_set_alpha(1);
                draw_set_colour(c_white);
                draw_sprite(spr_inventory, 0, tx+xoffset, ty+yoffset);
                draw_sprite(sprsht_items, box[# xx, yy], tx+xoffset, ty+yoffset);
                if(count[# xx, yy] > 1){
                    draw_set_colour(c_white);
                    draw_set_halign(fa_right);
                    draw_text(tx+30+xoffset, ty+yoffset+16, string_hash_to_newline(count[# xx, yy]));
                }
            }
        }
    } else {
        for (var yy = 0; yy == 0; yy++) {
            for (var xx = 0; xx < width; xx++) {
                var tx = x+(xx*box_size);
                var ty = y+(yy*box_size);
                draw_set_alpha(1);
                draw_set_colour(c_white);
                if xx == hotbarSelect {
                    draw_sprite(spr_inventory, 1, tx+xoffset, (__view_get( e__VW.HView, 0 )*2)-36);
                } else {
                    draw_sprite(spr_inventory, 0, tx+xoffset, (__view_get( e__VW.HView, 0 )*2)-36);
                }
                draw_sprite(sprsht_items, box[# xx, yy], tx+xoffset, (__view_get( e__VW.HView, 0 )*2)-36);
                if(count[# xx, yy] > 1){
                    draw_set_colour(c_white);
                    draw_set_halign(fa_right);
                    draw_text(tx+30+xoffset, (__view_get( e__VW.HView, 0 )*2)-16, string_hash_to_newline(count[# xx, yy]));
                    }
            }
        }
    }
} else {instance_destroy();}


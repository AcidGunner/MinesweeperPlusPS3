///draw_grid();
var draw_size = cell_size * zoom;
for (var xx = 0; xx < grid_w; xx++)
{
    for (var yy = 0; yy < grid_h; yy++)
    {
        if circle_grid[# xx, yy]!=1
        {
            var x1 = grid_offset_x + xx * draw_size;
            var y1 = grid_offset_y + yy * draw_size;
            
            depth=0;
            
            // === Flagged ===
            if (flagged[# xx, yy])
            {
                draw_sprite_stretched(grid_sprite[# xx, yy], image_index, x1, y1, draw_size, draw_size);
                draw_sprite_stretched(spr_flag, image_index, x1, y1, draw_size, draw_size);
            }
            else if (reveal[# xx, yy])
            {
                draw_sprite_stretched(spr_bgb, image_index, x1, y1, draw_size, draw_size);
    
                var v = grid[# xx, yy];
                if (v == -2)
                    draw_sprite_stretched(spr_red_grid, 0, x1, y1, draw_size, draw_size);
                else if (v == -1)
                    draw_sprite_stretched(spr_mine, 0, x1, y1, draw_size, draw_size);
                else
                    draw_sprite_stretched(spr_num, v, x1, y1, draw_size, draw_size);
            }
            else draw_sprite_stretched(grid_sprite[# xx, yy], image_index, x1, y1, draw_size, draw_size);
            depth=0;
            
            draw_sprite_stretched(spr_grid, 0, x1, y1, draw_size, draw_size);
            
            if (highlight_x1 >= 0 && highlight_y1 >= 0)
            {
                if (xx == highlight_x1 && yy == highlight_y1)
                {
                    draw_sprite_stretched(spr_light_grid, 0, x1, y1, draw_size, draw_size);
                }
            }
            else if (highlight_x2 >= 0 && highlight_y2 >= 0)
            {
                if (xx >= highlight_x2-1 && xx <= highlight_x2+1 &&
                    yy >= highlight_y2-1 && yy <= highlight_y2+1 &&
                    reveal[# xx, yy]) // only highlight revealed cells
                {
                    draw_sprite_stretched(spr_light_grid, 0, x1, y1, draw_size, draw_size);
                }
            }
        }
    }
}

var c_x = grid_offset_x + center_x * draw_size;
var c_y = grid_offset_y + center_y * draw_size;

if !boss9_started && global.stage==9
    draw_sprite_stretched(spr_highlight, test_speed, c_x, c_y, draw_size, draw_size);

if !boss10_started && global.stage==10
    draw_sprite_stretched(spr_highlight, test_speed, c_x, c_y, draw_size, draw_size);

if cirno9=true && iceland[# xx, yy]=2
{
    for (var xx = 0; xx < grid_w; xx++)
    {
        for (var yy = 0; yy < grid_h; yy++)
        {
            var draw_size = cell_size * zoom;
            var x1 = grid_offset_x + xx * draw_size;
            var y1 = grid_offset_y + yy * draw_size;
            
            draw_sprite_stretched(spr_ice, image_index, x1-draw_size, y1-draw_size, draw_size*3, draw_size*3);
        }
    }
}

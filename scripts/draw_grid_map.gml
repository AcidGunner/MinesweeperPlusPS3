///draw_grid_map();
var _grd=0;

for (var xx = 0; xx < 3; xx++)
{
    for (var yy = 0; yy < 3; yy++)
    {
        var x1 = grid_offset_x + xx * 16;
        var y1 = grid_offset_y + yy * 16;
        
        var _sprt=grid_sprite[# xx, yy];
        
        switch _sprt
        {
            case spr_bg1:  _grd=0; break;
            case spr_bg2:  _grd=1; break;
            case spr_bg3:  _grd=2; break;
            case spr_bg4:  _grd=3; break;
            case spr_bg5:  _grd=8; break;
            case spr_bg6:  _grd=4; break;
            case spr_bg7:  _grd=5; break;
            case spr_bg8:  _grd=6; break;
            case spr_bg9:  _grd=7; break;
            case spr_bg10: _grd=9; break;
            case spr_bg86: _grd=10; break;
        }
        
        if (reveal[# xx, yy])
        {
            draw_sprite_stretched(spr_bgb, image_index, x1, y1, 16, 16);

            var v = grid[# xx, yy];
            if v=-1
            {
                draw_sprite_stretched(_sprt, image_index, x1, y1, 16, 16);
                draw_sprite_stretched(spr_flag, image_index, x1, y1, 16, 16);
            }
            else draw_sprite_stretched(spr_num, v, x1, y1, 16, 16);
        }
        else draw_sprite_stretched(_sprt, image_index, x1, y1, 16, 16);
        
        draw_sprite_stretched(spr_grid, _grd, x1, y1, 16, 16);
    }
}

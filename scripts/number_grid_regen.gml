///number_grid_regen();
if (global.stage>3 && global.stage<9) && !ds_grid_value_exists(grid,0,0,grid_w-1,grid_h-1,temp_0)
{
    while !ds_grid_value_exists(grid,0,0,grid_w-1,grid_h-1,temp_0) grid_regen(mine_count);
}

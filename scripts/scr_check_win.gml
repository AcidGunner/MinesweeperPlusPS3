/// scr_check_win();
var revealed_total = 0;

for (var wx = 0; wx < grid_w; wx++)
for (var wy = 0; wy < grid_h; wy++)
{
    if (reveal[# wx, wy])
        revealed_total++;
}

// Check win condition
if (revealed_total >= grid_w * grid_h - mine_count)
{
    if global.stage==9
    {
        obj_9.alarm[6]=1;
        exit;
    }
    else if global.stage==10
    {
        obj_10.alarm[4]=1;
        exit;
    }
    else if global.stage==910
    {
        obj_9.alarm[6]=1;
        obj_10.alarm[6]=1;
        exit;
    }
    
    // Auto-flag remaining mines
    for (var fx = 0; fx < grid_w; fx++)
    for (var fy = 0; fy < grid_h; fy++)
    {
        if (grid[# fx, fy] == -1)
            flagged[# fx, fy] = true;
    }
    
    win = true;
    mines_left = 0;
    you_won_sfx();
}
else
{
    if global.stage==9 game_restart();
    
    //show_debug_message("NOT ENOUGH!! "+
    //    string((grid_w * grid_h - mine_count)-revealed_total)+
    //" TILES LEFT.")
}

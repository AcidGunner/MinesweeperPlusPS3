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
    switch global.stage
    {
        case 9:
        {
            obj_9.alarm[6]=1;
            exit;
        }
        case 10:
        {
            obj_10.alarm[4]=1;
            exit;
        }
        case 910:
        {
            obj_9.alarm[6]=1;
            obj_10.alarm[6]=1;
            exit;
        }
    }
    
    if temp_111==9
    {
        if type=="player1" obj_9_1p.alarm[6]=1
        else obj_9_2p.alarm[6]=1;
        exit;
    }
    
    // Auto-flag remaining mines
    for (var fx = 0; fx < grid_w; fx++)
    for (var fy = 0; fy < grid_h; fy++)
    {
        if (grid[# fx, fy] == -1)
            flagged[# fx, fy] = true;
    }
    
    if type=="single"
    {
        final_timer=get_timer()-timer;
        var f_ms=final_timer div 10000;
        var f_ts=f_ms mod 100;
        var f_s=f_ts mod 60;
        var f_m=f_ts div 60;
        
        obj_ui.final_time=string(f_m)+":"+string(f_s)+"."+string(f_ms)+"s";
    }
    
    win = true;
    mines_left = 0;
    you_won_sfx();
}
else
{
    if global.stage==9 game_restart();
}

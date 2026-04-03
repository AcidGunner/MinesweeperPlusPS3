/// scr_check_win();
var revealed_total = 0;
var valid_total = 0;

for (var wx = 0; wx < grid_w; wx++)
for (var wy = 0; wy < grid_h; wy++)
{
    if grid_type[# wx, wy]<1
    {
        valid_total++;
        if (reveal[# wx, wy]) revealed_total++;
    }
}

// Check win condition
//var _left = (grid_w * grid_h) - mine_count;

var _left = valid_total;

//if instance_exists(obj_9) _left-=9;

if (revealed_total >= _left)
{
    if instance_exists(obj_9)
    {
        obj_9.alarm[6]=1;
        if instance_exists(obj_10) obj_10.alarm[6]=1;
        exit;
    }
    if instance_exists(obj_10)
    {
        if global.stage==10 obj_10.alarm[4]=1
        else
        {
            obj_10.active=false;
            obj_10.stopped=1;
            obj_10.rand=0;
            obj_10.vspeed=0;
            obj_10.hspeed=0;
            obj_smiley.cutscene=true;
            audio_stop_all();
            audio_play_sound(sfx_done,0,false);
            time_set();
            obj_10.alarm[6]=1;
            obj_10.alarm[7]=90;
        }
        exit;
    }
    if temp_111==9 && type!="single"
    {
        if type=="player1" obj_9_1p.alarm[6]=1
        else obj_9_2p.alarm[6]=1;
        exit;
    }
    
    // Auto-flag remaining mines
    for (var fx = 0; fx < grid_w; fx++)
    for (var fy = 0; fy < grid_h; fy++)
    {
        if (grid_type[# fx, fy] > 0 && grid_type[# fx, fy] < 9)
            flagged[# fx, fy] = true;
    }
    
    if type=="single" time_set();
    
    win = true;
    mines_left = 0;
    you_won_sfx();
}
else
{
    if instance_exists(obj_9) instance_create(0,0,obj_9_end);
    show_debug_message(string(_left-revealed_total));
}

///create_first_player();
instance_create(80,24,obj_smiley_1p);
var _1p = instance_create(0,0,obj_game_1p);
with _1p
{
    /// --- Grid settings ---
    first_click = true;
    win = false;
    grid_w = global.m_g_w;
    grid_h = global.m_g_h;
    cell_size = 16;
    mine_count = global.m_g_m;
    boss9_started = false;
    boss10_started = false;
    mines_left = mine_count;
    temp_mines=mine_count;
    global.pitch=1;
    sheesh=0;
    _sh=0;
    the_temp=0;
    
    type="player1";
    
    if global.type_input=1 instance_create(80,120,obj_cursor);
    text = "You have to let me out eventually, Captain...";
    
    circle_grid = ds_grid_create(grid_w,grid_h);
    ds_grid_clear(circle_grid,0);
    
    zoom = 1;
    zoom_min = 0.55;
    zoom_max = 1;
    zoom_speed = 0.05;
    draw_size = 0;
    
    player_x=0;
    player_y=0;
    test_speed=0;
    
    msx=0;
    msy=0;
    
    center_x = grid_w div 2;
    center_y = grid_h div 2;
    
    temp_x=-1;
    temp_y=-1;
    temp_g=0;
    temp_111 = global.m_g_t;
    
    spr_bg=-1;
    spr_bgb=-1;
    
    if temp_111 == 1 spr_bg=spr_bg1
    else if temp_111 == 2 spr_bg=spr_bg2
    else if temp_111 == 3 spr_bg=spr_bg3
    else if temp_111 == 4 spr_bg=spr_bg4
    else if temp_111 == 5 spr_bg=spr_bg10;
    
    if temp_111 == 1 spr_bgb=spr_bg1b
    else if temp_111 == 2 spr_bgb=spr_bg2b
    else if temp_111 == 3 spr_bgb=spr_bg3b
    else if temp_111 == 4 spr_bgb=spr_bg4b;
    else if temp_111 == 5 spr_bgb=spr_bg10b;
    
    audio_loop_sound(global._music[23+temp_111],global._st[13+temp_111],global._en[13+temp_111],44100,0);
    
    if global.stage==9
    {
        spr_bg=spr_bg1;
        spr_bgb=spr_bg1b;
        spiral_setup();
    }
    
    if global.stage==10
    {
        spr_bg=spr_bg6;
        spr_bgb=spr_bg6b;
        
        // possible custom grid?
        // yes, just thought about this bruh
        _grid_w = grid_w - 1;
        _grid_h = grid_h - 1;
        
        set_circle_grid(4);
    }
    
    // --- Create grid array ---
    grid = ds_grid_create(grid_w, grid_h);
    reveal = ds_grid_create(grid_w, grid_h);
    flagged = ds_grid_create(grid_w, grid_h);
    grid_sprite = ds_grid_create(grid_w, grid_h);
    
    // 0 = empty
    // -1 = mine
    // Any positive number = nearby mines
    
    ds_grid_clear(grid, 0);
    ds_grid_clear(reveal, 0);
    ds_grid_clear(flagged, 0);
    
    for (var xx = 0; xx < grid_w; xx++)
    for (var yy = 0; yy < grid_h; yy++)
    {
        grid_sprite[# xx, yy] = spr_bg; // default sprite
        if circle_grid[# xx, yy]=1 reveal[# xx, yy] = true;
    }
    
    // --- Place mines ---
    var placed = 0;
    while (placed < mine_count)
    {
        var xx = irandom(grid_w - 1);
        var yy = irandom(grid_h - 1);
    
        if (grid[# xx, yy] != -1) && circle_grid[# xx, yy] == 0
        {
            grid[# xx, yy] = -1;
            placed += 1;
        }
    }
    
    alarm[4]=1;
    
    grid_draw_w = grid_w * cell_size * zoom;
    grid_draw_h = grid_h * cell_size * zoom;
    
    off_x=0; off_y=0;
    
    grid_offset_x = ((room_width/2  - grid_draw_w) / 2)-off_x;
    grid_offset_y = (((room_height - grid_draw_h) / 2) + 25)-off_y;
    
    highlight_x1 = -1;
    highlight_y1 = -1;
    highlight_x2 = -1;
    highlight_y2 = -1;
    
    t9_grid=spr_bg5;
    t9_gridb=spr_bg5b;
    cirno9=false;
    utsuho10=false;
    
    t10_grid=spr_bg10;
    t10_gridb=spr_bg10b;
    
    if obj_input.c_held && global.stage==9
    {
        secret_script_p1();
        global.foughtcirno=1;
        cirno9=true;
        iceland = ds_grid_create(grid_w, grid_h);
        ds_grid_clear(iceland, 0);
    }
    
    if obj_input.c_held && global.stage==10
    {
        secret_script_2_p1();
        global.foughtutsuho=1;
        utsuho10=true;
    }
    
    if global.stage==910
    {
        instance_create(160,145,obj_9);
        instance_create(160,145,obj_10);
        boss9_started=true;
        boss10_started=true;
        alarm[9]=1;
        alarm[4]=1;
        obj_9.test_a=1;
        obj_9.active=true;
        obj_9.test_0=48;
        obj_9.travel=3;
        obj_9.image_index=5;
        obj_10.active=true;
        obj_10.moove=1;
        obj_10.time=11;
        obj_10.spd=1;
        obj_10.vspeed=1;
        obj_10.hspeed=1;
        obj_10.alarm[3]=1;
        obj_ui.alarm[0]=1;
        obj_ui.rand_time=1;
    }
}

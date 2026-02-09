///checks_input_2p();
if global.type_input=0
{
    if obj_input.p2_lef && player_x>0 player_x--;
    if obj_input.p2_rig && player_x<grid_w-1 player_x++;
    if obj_input.p2_upp && player_y>0 player_y--;
    if obj_input.p2_dow && player_y<grid_h-1 player_y++;
}
if obj_input.p2_mp1 alarm[0]=1;
if obj_input.p2_mp2 alarm[1]=1;
if obj_input.p2_mh1 alarm[2]=1;
if obj_input.p2_mh2 alarm[3]=1;

if obj_input.p2_l1
{
    zoom -= zoom_speed;
    zoom_update_2p();
}
if obj_input.p2_r1
{
    zoom += zoom_speed;
    zoom_update_2p();
}

// Only highlight if holding left button
if obj_input.p2_mk1 && win == false && obj_vs_ui.lost=0
{
    hold_highlight_2p();
}

if global.type_input=0
{
    highlight_x1 = msx;
    highlight_y1 = msy;
}

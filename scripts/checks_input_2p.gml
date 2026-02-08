///checks_input_2p();
if global.type_input=0
{
    if obj_input.lef && player_x>0 player_x--;
    if obj_input.rig && player_x<grid_w-1 player_x++;
    if obj_input.upp && player_y>0 player_y--;
    if obj_input.dow && player_y<grid_h-1 player_y++;
}
if obj_input.mp1 alarm[0]=1;
if obj_input.mp2 alarm[1]=1;
if obj_input.mh1 alarm[2]=1;
if obj_input.mh2 alarm[3]=1;

if obj_input.l1
{
    zoom -= zoom_speed;
    zoom_update_2p();
}
if obj_input.r1
{
    zoom += zoom_speed;
    zoom_update_2p();
}

// Only highlight if holding left button
if obj_input.mk1 && win == false && global.stage!=86
{
    hold_highlight_2p();
}

if global.type_input=0
{
    highlight_x1 = msx;
    highlight_y1 = msy;
}

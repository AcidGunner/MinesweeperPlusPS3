///hold_highlight();
if obj_smiley.mine_detected != 0 exit;
if obj_smiley.cutscene == true && boss9_started exit;
if obj_smiley.cutscene == true && boss10_started exit;
if instance_exists(obj_9) && obj_9.stop exit;

// Cell must be inside the grid
if (msx >= 0 && msy >= 0 && msx < grid_w && msy < grid_h)
{
    if reveal[# msx, msy]
    {
        highlight_x2 = msx;
        highlight_y2 = msy;
    }
    else if global.type_input=1
    {
        highlight_x1 = msx;
        highlight_y1 = msy;
    }
}

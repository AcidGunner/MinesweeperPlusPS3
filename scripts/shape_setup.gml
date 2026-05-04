///shape_setup(stage)
var stage = argument0;

if stage==1
{
    _temp_data[0] ="111100001111";
    _temp_data[1] ="111100001111";
    _temp_data[2] ="111100001111";
    _temp_data[3] ="111100001111";
    _temp_data[4] ="000000000000";
    _temp_data[5] ="000000000000";
    _temp_data[6] ="000000000000";
    _temp_data[7] ="000000000000";
    _temp_data[8] ="111100001111";
    _temp_data[9] ="111100001111";
    _temp_data[10]="111100001111";
    _temp_data[11]="111100001111";
    _temp_data[12]="111100001111";
} else exit;

for (var ix = 0; ix < global.gridw[stage]; ix++)
{
    for (var iy = 0; iy < global.gridh[stage]; iy++)
    {
        circle_grid[# ix, iy] = real(string_char_at(_temp_data[iy],ix+1));
    }
}

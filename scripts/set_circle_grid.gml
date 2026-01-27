///set_circle_grid(number);

var _gt = argument0;

for (var xx = 0; xx < _gt; xx++)
for (var yy = 0; yy < _gt-xx; yy++)
{
    circle_grid[# xx, yy] = 1;
}

for (var xx = 0; xx < _gt; xx++)
for (var yy = _grid_h; yy > _grid_h-_gt+xx; yy--)
{
    circle_grid[# xx, yy] = 1;
}

for (var xx = _grid_w; xx > _grid_w-_gt-1; xx--)
for (var yy = _grid_h; yy > _grid_h-xx+grid_w-_gt-1; yy--)
{
    circle_grid[# xx, yy] = 1;
}

for (var xx = _grid_w; xx > _grid_w-_gt-1; xx--)
for (var yy = 0; yy < _gt-(_grid_w-xx); yy++)
{
    circle_grid[# xx, yy] = 1;
}

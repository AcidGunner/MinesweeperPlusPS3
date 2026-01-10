///scr_reveal();
var _x = argument0;
var _y = argument1;

// Stop if already revealed or flagged
if (reveal[# _x, _y] || flagged[# _x, _y]) exit;

reveal[# _x, _y] = true;

// If this cell has number > 0, stop (no flood)
if (grid[# _x, _y] > 0) exit;

// Flood-fill empty cells
for (var nx = _x-1; nx <= _x+1; nx++)
for (var ny = _y-1; ny <= _y+1; ny++)
{
    if (nx >= 0 && ny >= 0 && nx < grid_w && ny < grid_h)
        scr_reveal(nx, ny);
}

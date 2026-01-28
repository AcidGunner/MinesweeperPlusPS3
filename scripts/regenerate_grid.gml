/// regenerate_grid(x_clicked, y_clicked, mine_count)
var cx = argument0;
var cy = argument1;
var cm = argument2;

// Reset everything
ds_grid_clear(grid, 0);
ds_grid_clear(reveal, 0);
ds_grid_clear(flagged, 0);

// Re-place mines, but NEVER at (cx, cy)
var placed = 0;
while (placed < cm)
{
    var xx = irandom(grid_w - 1);
    var yy = irandom(grid_h - 1);
    // Skip the clicked cell
    if (xx == cx && yy == cy) continue;

    if (grid[# xx, yy] != -1) && circle_grid[# xx, yy] == 0
    {
        grid[# xx, yy] = -1;
        placed++;
    }
}

// Recalculate neighbor numbers
for (var gx = 0; gx < grid_w; gx++)
for (var gy = 0; gy < grid_h; gy++)
{
    if (grid[# gx, gy] != -1)
    {
        var c = 0;

        for (var nx = gx-1; nx <= gx+1; nx++)
        for (var ny = gy-1; ny <= gy+1; ny++)
        {
            if (nx >= 0 && ny >= 0 && nx < grid_w && ny < grid_h)
            {
                if (grid[# nx, ny] == -1)
                    c++;
            }
        }

        grid[# gx, gy] = c;
    }
}

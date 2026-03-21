/// grid_regen(mine_count)
show_debug_message("GRID REGEN UNTIL NUMBER");
cm = argument0;

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

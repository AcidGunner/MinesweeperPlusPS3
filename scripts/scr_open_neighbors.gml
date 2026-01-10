/// scr_open_neighbors(x, y)
var sx = argument0;
var sy = argument1;

var required = grid[# sx, sy];   // number of surrounding bombs
var flags = 0;

// Count flags
for (var nx = sx-1; nx <= sx+1; nx++)
for (var ny = sy-1; ny <= sy+1; ny++)
{
    if (nx >= 0 && ny >= 0 && nx < grid_w && ny < grid_h)
    {
        if (flagged[# nx, ny])
            flags++;
    }
}

// Only open neighbors if correct flag count
if (flags == required)
{
    for (var nx = sx-1; nx <= sx+1; nx++)
    for (var ny = sy-1; ny <= sy+1; ny++)
    {
        if (nx >= 0 && ny >= 0 && nx < grid_w && ny < grid_h)
        {
            // Skip flagged squares
            if (!flagged[# nx, ny])
            {                
                // If it's a mine → player loses
                if (grid[# nx, ny] == -1)
                {
                    scr_mine_detected();
                    src_reveal_mine(nx, ny);
                    exit;
                }
                
                // Reveal the cell
                scr_reveal(nx, ny);
            }
        }
    }
}


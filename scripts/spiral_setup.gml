///spiral_setup();
spiral = ds_list_create();
spiral_index = 0;

// Center of grid
var cx = grid_w div 2;
var cy = grid_h div 2;

spiral_go=false;

// Directions:
// 0 = right, 1 = down, 2 = left, 3 = up
var dir = 0;

// Length of movement for this step
var step = 1;

// Add center first
ds_list_add(spiral, cx << 16 | cy);

// Spiral until all cells are added
while (ds_list_size(spiral) < grid_w * grid_h)
{
    // Two passes per step length (right+down, then left+up)
    repeat (2)
    {
        repeat (step)
        {
            // move in current direction
            switch (dir)
            {
                case 0: cx += 1; break; // →
                case 1: cy += 1; break; // ↓
                case 2: cx -= 1; break; // ←
                case 3: cy -= 1; break; // ↑
            }
            
            // If inside bounds, add it
            if (cx >= 0 && cy >= 0 && cx < grid_w && cy < grid_h)
            {
                ds_list_add(spiral, cx << 16 | cy);
            }
        }
        
        // Next direction
        dir = (dir + 1) mod 4;
    }

    // After two directions, increase step length
    step += 1;
}


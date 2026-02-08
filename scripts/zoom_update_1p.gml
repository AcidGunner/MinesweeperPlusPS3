///zoom_update_1p();
zoom = clamp(zoom, zoom_min, zoom_max);

grid_draw_w = grid_w * cell_size * zoom;
grid_draw_h = grid_h * cell_size * zoom;

grid_offset_x = ((room_width/2  - grid_draw_w) / 2)+off_x;
grid_offset_y = (((room_height/2 - grid_draw_h) / 2) + 25)+off_y;

///check_input_2p();
draw_size = cell_size * zoom;
grid_offset_x = (((room_width+(room_width/2))  - grid_draw_w) / 2)+off_x;
grid_offset_y = (((room_height - grid_draw_h) / 2) + 25)+off_y;

var test1 = window_get_width()/room_width;
var test2 = window_get_height()/room_height;

if global.type_input=0
{
    var mx = grid_offset_x+(player_x*draw_size)+(draw_size/2);
    var my = grid_offset_y+(player_y*draw_size)+(draw_size/2);
    var _mx = mx*test1;
    var _my = my*test2;
    window_mouse_set(_mx,_my);
}
else if global.type_input=1
{
    mx = obj_input.mx;
    my = obj_input.my;
}

msx = floor((mx - grid_offset_x) / draw_size);
msy = floor((my - grid_offset_y) / draw_size);

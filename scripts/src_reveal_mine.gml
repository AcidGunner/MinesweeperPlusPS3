///src_reveal_mine(x,y);
var _x = argument0;
var _y = argument1;

reveal[# _x, _y] = true;
grid[# _x, _y] = -2;

if instance_exists(obj_9)
{
    if grid[# obj_9.boss_x+1, obj_9.boss_y+1]==-2
    {
        obj_9.mine_1_g=-2;obj_9.mine_1_r=true;
    }
    if grid[# obj_9.boss_x, obj_9.boss_y+1]==-2
    {
        obj_9.mine_2_g=-2;obj_9.mine_2_r=true;
    }
    if grid[# obj_9.boss_x-1, obj_9.boss_y+1]==-2
    {
        obj_9.mine_3_g=-2;obj_9.mine_3_r=true;
    }
    if grid[# obj_9.boss_x+1, obj_9.boss_y]==-2
    {
        obj_9.mine_4_g=-2;obj_9.mine_4_r=true;
    }
    if grid[# obj_9.boss_x-1, obj_9.boss_y]==-2
    {
        obj_9.mine_6_g=-2;obj_9.mine_6_r=true;
    }
    if grid[# obj_9.boss_x+1, obj_9.boss_y-1]==-2
    {
        obj_9.mine_7_g=-2;obj_9.mine_7_r=true;
    }
    if grid[# obj_9.boss_x, obj_9.boss_y-1]==-2
    {
        obj_9.mine_8_g=-2;obj_9.mine_8_r=true;
    }
    if grid[# obj_9.boss_x-1, obj_9.boss_y-1]==-2
    {
        obj_9.mine_9_g=-2;obj_9.mine_9_r=true;
    }
}
mine_count--;
mines_left--;

var draw_size = cell_size * zoom;
var size = draw_size / 2;
var fx = grid_offset_x + _x * draw_size + size;
var fy = grid_offset_y + _y * draw_size + size;

switch type
{
    case "single":  var test_bomb=instance_create(fx,fy,obj_bomb);    break;
    case "player1": var test_bomb=instance_create(fx,fy,obj_bomb_1p); break;
    case "player2": var test_bomb=instance_create(fx,fy,obj_bomb_2p); break;
}

test_bomb._x=_x;
test_bomb._y=_y;

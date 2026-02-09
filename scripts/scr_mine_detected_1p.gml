///scr_mine_detected_1p();
obj_smiley_1p.mine_detected=1;

var temz = (room_width/4);

if instance_exists(obj_9) obj_9.active=false;

//if obj_input.mx<temz - 24 obj_smiley_hat.temp1=3
//else if obj_input.mx>temz + 24 obj_smiley_hat.temp1=1
//else obj_smiley_hat.temp1=2;

if obj_smiley_1p.sprite_index!=spr_smiley3
{
    if obj_smiley_1p.sprite_index==spr_smiley5
    {
        if obj_input.mx<temz - 24 obj_smiley_1p.temp3=15
        else if obj_input.mx>temz + 24 obj_smiley_1p.temp3=21
        else obj_smiley_1p.temp3=18;
    }
    else
    {
        if obj_input.mx<temz - 24 obj_smiley_1p.temp3=11
        else if obj_input.mx>temz + 24 obj_smiley_1p.temp3=9
        else obj_smiley_1p.temp3=10;
    }
}
else
{
    if obj_input.mx<temz - 24 obj_smiley_1p.temp3=22
    else if obj_input.mx>temz + 24 obj_smiley_1p.temp3=18
    else obj_smiley_1p.temp3=20;
}

///init_globals_mus();

global._music[0] = -1;
global._st[0] = 0;
global._en[0] = 0;

global._st[1] = 22048;
global._en[1] = 1996913;
global._st[2] = 344037;
global._en[2] = 2408612;
global._st[3] = 0;
global._en[3] = 3174028;
global._st[4] = 78597;
global._en[4] = 6062931;
global._st[5] = 1350913;
global._en[5] = 1533067;
global._st[6] = 484908;
global._en[6] = 4433275;

global._st[11]= 1046315;
global._en[11]= 1186017;
global._st[12]= 0;
global._en[12]= 6074808;
global._st[13]= 177444;
global._en[13]= 882825;

if global._music_type=0
{
    global._music[1]=mus_stage1;
    global._music[2]=mus_stage2;
    global._music[3]=mus_stage3;
    global._music[4]=mus_stage4;
    global._music[5]=mus_stage9_prepare;
    global._music[6]=mus_stage9;
    //global._music[7]=mus_stage5;
    //global._music[8]=mus_stage6;
    //global._music[9]=mus_stage7;
    //global._music[10]=mus_stage8;
    global._music[11]=mus_stage10_prepare;
    global._music[12]=mus_stage10;
    global._music[13]=mus_menu_1;
    global.stage1_win=mus_stage1_win;
    global.stage2_win=mus_stage2_win;
    global.stage3_win=mus_stage3_win;
    global.stage4_win=mus_stage4_win;
    global.stage9_win=mus_stage9_win;
    global.stage10_win=mus_stage10_win;
}
else
{
    global._music[1]=mus_stage1r;
    global._music[2]=mus_stage2r;
    global._music[3]=mus_stage3r;
    global._music[4]=mus_stage4;
    global._music[5]=mus_stage9r_prepare;
    global._music[6]=mus_stage9r;
    //global._music[7]=mus_stage5r;
    //global._music[8]=mus_stage6r;
    //global._music[9]=mus_stage7r;
    //global._music[10]=mus_stage8r;
    global._music[11]=mus_stage10r_prepare;
    global._music[12]=mus_stage10r;
    global._music[13]=mus_menu_1r;
    global.stage1_win=mus_stage1r_win;
    global.stage2_win=mus_stage2r_win;
    global.stage3_win=mus_stage3r_win;
    global.stage4_win=mus_stage4_win;
    global.stage9_win=mus_stage9r_win;
    global.stage10_win=mus_stage10_win;
}

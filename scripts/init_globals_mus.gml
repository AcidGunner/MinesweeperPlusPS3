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

if global._music_type=0
{
    global._music[1]=mus_stage1;
    global._music[2]=mus_stage2;
    global._music[3]=mus_stage3;
    global._music[4]=mus_stage4;
    global._music[5]=mus_stage9_prepare;
    global._music[6]=mus_stage9;
    
    global._music[11]=mus_stage10_prepare;
    global._music[12]=mus_stage10;
    
    global.stage1_win=mus_stage1_win;
    global.stage2_win=mus_stage2_win;
    global.stage3_win=mus_stage3_win;
    global.stage4_win=mus_stage4_win;
    global.stage9_win=mus_stage9_win;
    global.stage10_win=mus_stage10_win;
}
else if global._music_type=1
{
    //global._music[1]=mus_stage1b;
    //global._music[2]=mus_stage2b;
    global._music[3]=mus_stage3b;
    //global._music[4]=mus_stage4b;
    global._music[5]=mus_stage9b_prepare;
    global._music[6]=mus_stage9b;
    
    //global._music[11]=mus_stage10b_prepare;
    //global._music[12]=mus_stage10b;
    
    //global.stage1_win=mus_stage1b_win;
    //global.stage2_win=mus_stage2b_win;
    global.stage3_win=mus_stage3b_win;
    //global.stage4_win=mus_stage4b_win;
    global.stage9_win=mus_stage9b_win;
    //global.stage10_win=mus_stage10b_win;
}
else if global._music_type=2
{
    //global._music[1]=mus_stage1s;
    //global._music[2]=mus_stage2s;
    global._music[3]=mus_stage3s;
    //global._music[4]=mus_stage4s;
    global._music[5]=mus_stage9s_prepare;
    global._music[6]=mus_stage9s;
    
    //global._music[11]=mus_stage10s_prepare;
    //global._music[12]=mus_stage10s;
    
    //global.stage1_win=mus_stage1s_win;
    //global.stage2_win=mus_stage2s_win;
    global.stage3_win=mus_stage3s_win;
    //global.stage4_win=mus_stage4s_win;
    global.stage9_win=mus_stage9s_win;
    //global.stage10_win=mus_stage10s_win;
}
else if global._music_type=3
{
    //global._music[1]=mus_stage1t;
    //global._music[2]=mus_stage2t;
    global._music[3]=mus_stage3t;
    //global._music[4]=mus_stage4t;
    global._music[5]=mus_stage9t_prepare;
    global._music[6]=mus_stage9t;
    
    //global._music[11]=mus_stage10t_prepare;
    //global._music[12]=mus_stage10t;
    
    //global.stage1_win=mus_stage1t_win;
    //global.stage2_win=mus_stage2t_win;
    global.stage3_win=mus_stage3t_win;
    //global.stage4_win=mus_stage4t_win;
    global.stage9_win=mus_stage9t_win;
    //global.stage10_win=mus_stage10t_win;
}
else if global._music_type=4
{
    //global._music[1]=mus_stage1m;
    //global._music[2]=mus_stage2m;
    global._music[3]=mus_stage3m;
    //global._music[4]=mus_stage4m;
    global._music[5]=mus_stage9m_prepare;
    global._music[6]=mus_stage9m;
    
    //global._music[11]=mus_stage10m_prepare;
    //global._music[12]=mus_stage10m;
    
    //global.stage1_win=mus_stage1m_win;
    //global.stage2_win=mus_stage2m_win;
    global.stage3_win=mus_stage3m_win;
    //global.stage4_win=mus_stage4m_win;
    global.stage9_win=mus_stage9m_win;
    //global.stage10_win=mus_stage10m_win;
}
else if global._music_type=5
{
    //global._music[1]=mus_stage18;
    //global._music[2]=mus_stage28;
    global._music[3]=mus_stage38;
    //global._music[4]=mus_stage48;
    global._music[5]=mus_stage98_prepare;
    global._music[6]=mus_stage98;
    
    //global._music[11]=mus_stage108_prepare;
    //global._music[12]=mus_stage108;
    
    //global.stage1_win=mus_stage18_win;
    //global.stage2_win=mus_stage28_win;
    global.stage3_win=mus_stage38_win;
    //global.stage4_win=mus_stage48_win;
    global.stage9_win=mus_stage98_win;
    //global.stage10_win=mus_stage108_win;
}

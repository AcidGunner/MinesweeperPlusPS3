///you_won_sfx();
audio_stop_all();

if type=="single" && global.stage!=0 switch global.stage
{
    case 1: audio_play_sound(global.stage1_win,0,false); break;
    case 2: audio_play_sound(global.stage1_win,0,false); break;
    case 3: audio_play_sound(global.stage2_win,0,false); break;
    case 4: audio_play_sound(global.stage2_win,0,false); break;
    case 5: audio_play_sound(global.stage3_win,0,false); break;
    case 6: audio_play_sound(global.stage3_win,0,false); break;
    case 7: audio_play_sound(global.stage4_win,0,false); break;
    case 8: audio_play_sound(global.stage4_win,0,false); break;
}
else if type=="single" && global.stage==0 switch temp_123
{
    case 1: audio_play_sound(global.stage1_win,0,false); break;
    case 2: audio_play_sound(global.stage2_win,0,false); break;
    case 3: audio_play_sound(global.stage3_win,0,false); break;
    case 4: audio_play_sound(global.stage4_win,0,false); break;
    case 7: audio_play_sound(global.stage5_win,0,false); break;
    case 8: audio_play_sound(global.stage6_win,0,false); break;
    //case 9: audio_play_sound(global.stage7_win,0,false); break;
    //case 10: audio_play_sound(global.stage8_win,0,false); break;
    case 5: audio_play_sound(global.stage9_win,0,false); break;
    case 11: audio_play_sound(global.stage10_win,0,false); break;
    case 99: audio_play_sound(mus_sweeping2,0,false); break;
}
else switch obj_game_1p.temp_111
{
    case 1: audio_play_sound(global.stagevs1_win,0,false); break;
    case 2: audio_play_sound(global.stagevs2_win,0,false); break;
    case 3: audio_play_sound(global.stagevs3_win,0,false); break;
    case 4: audio_play_sound(global.stagevs4_win,0,false); break;
}

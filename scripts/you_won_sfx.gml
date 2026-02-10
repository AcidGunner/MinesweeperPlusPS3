///you_won_sfx();
audio_stop_sound(global._music[1]);
audio_stop_sound(global._music[2]);
audio_stop_sound(global._music[3]);
audio_stop_sound(global._music[4]);
//audio_stop_sound(global._music[7]);
//audio_stop_sound(global._music[8]);
//audio_stop_sound(global._music[9]);
//audio_stop_sound(global._music[10]);
audio_stop_sound(global._music[24]);
audio_stop_sound(global._music[25]);
audio_stop_sound(global._music[26]);
audio_stop_sound(global._music[27]);

if type=="single"
switch global.stage
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
else switch obj_game_1p.temp_111
{
    case 1: audio_play_sound(global.stagevs1_win,0,false); break;
    case 2: audio_play_sound(global.stagevs2_win,0,false); break;
    case 3: audio_play_sound(global.stagevs3_win,0,false); break;
    case 4: audio_play_sound(global.stagevs4_win,0,false); break;
}

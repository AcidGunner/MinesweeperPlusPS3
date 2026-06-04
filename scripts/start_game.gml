///start_game();
global.menu_t=obj_main_menu.menu_music;
if global.episode==2 show_message(global.str[99]);
if global.episode==3
{
    global.stage=11;
    show_message(global.str[116]);
}
audio_stop_all();
audio_play_sound(sfx_game_start,0,false);
setup_field(global.difficulty);
save_game();
obj_menu_adventure.alarm[0]=60;
obj_main_menu.alarm[3]=45;

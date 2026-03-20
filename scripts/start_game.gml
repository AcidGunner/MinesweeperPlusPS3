///start_game();
global.menu_t=obj_main_menu.menu_music;
if global.difficulty>1 show_message("[NOTE!]#The VETERAN and EXPERT difficulties might be nerfed in the future. Please test them properly, because I have a lowkey skill issue. Proceed with caution.");
audio_stop_all();
audio_play_sound(sfx_game_start,0,false);
setup_field(global.difficulty);
save_game();
obj_menu_adventure.alarm[0]=60;

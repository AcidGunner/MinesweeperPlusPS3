///reset_game();
//set everything to default values
global.stage=1;
global.config=global.the_config;
global.hat_type=1;
global._music_type=0;
global.type_input=1;
global.difficulty=1;
global.gamemode=0;
global.mastermode=0;
global.menu_t=1;
global.bg_music=1;
global.lang=0;
global.foughtcirno=0;
global.foughtutsuho=0;
global.episode=1;
global.unlocked=0;
global.route=0;
lives=3;

//only then save!
ini_open("msplus-ps3-save.ini");
ini_write_string("save","current_time","");
ini_close();
save_game();
strings_set();
init_globals_mus();

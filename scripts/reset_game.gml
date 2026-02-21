///reset_game();
//set everything to default values
global.stage=1;
global.config=global.the_config;
global.hat_type=1;
global._music_type=0;
global.type_input=1;
global.menu_t=1;
global.lang=0;
global.foughtcirno=0;
global.foughtutsuho=0;

//only then save!
save_game();
strings_set();
init_globals_mus();

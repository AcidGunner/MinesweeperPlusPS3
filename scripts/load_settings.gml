///load_settings();
ini_open("msplus-ps3-save.ini");
global._music_type=ini_read_real("settings","music",0);
global.type_input=ini_read_real("settings","input",0);
global.menu_t=ini_read_real("settings","menu",1);
global.bg_music=ini_read_real("settings","bg_music",1);
global.lang=ini_read_real("settings","lang",0);
global.unlocked=ini_read_real("secret","unlocked_secret",0);
ini_close();

//check on canceled music types!
if global._music_type>1 global._music_type=1;

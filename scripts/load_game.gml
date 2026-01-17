///load_game();
ini_open("msplus-ps3-save.ini");
global.stage=ini_read_real("save","stage",1);
global.hat_type=ini_read_real("save","hat",1);
global.type_input=ini_read_real("settings","input",1);
global._music_type=ini_read_real("settings","music",0);
ini_close();

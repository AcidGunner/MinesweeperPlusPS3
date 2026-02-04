///load_game();
ini_open("msplus-ps3-save.ini");
global.config=ini_read_real("save","config",0);
global.stage=ini_read_real("save","stage",1);
global.hat_type=ini_read_real("save","hat",1);
global.type_input=ini_read_real("settings","input",1);
global._music_type=ini_read_real("settings","music",0);
global.foughtcirno=ini_read_real("secret","boss9_secret",0);
global.foughtutsuho=ini_read_real("secret","boss10_secret",0);
ini_close();

//wait a second, if we completed the game...
if global.stage==911 global.stage=1;

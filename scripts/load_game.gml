///load_game();
ini_open("msplus-ps3-save.ini");
global.config=ini_read_real("save","config",0);
global.stage=ini_read_real("save","stage",1);
global.hat_type=ini_read_real("save","hat",1);
lives=ini_read_real("save","lives",3);
global.difficulty=ini_read_real("save","difficulty",1);
global.episode=ini_read_real("save","episode",1);
global.route=ini_read_real("save","route",0);
global.gamemode=ini_read_real("save","gamemode",0);
global.mastermode=ini_read_real("save","mastermode",0);
global.type_input=ini_read_real("settings","input",1);
global._music_type=ini_read_real("settings","music",0);
global.menu_t=ini_read_real("settings","menu",1);
global.lang=ini_read_real("settings","lang",0);
global.foughtcirno=ini_read_real("secret","boss9_secret",0);
global.foughtutsuho=ini_read_real("secret","boss10_secret",0);
global.unlocked=ini_read_real("secret","unlocked_secret",0);
ini_close();

//wait a second, if we completed the game...
if global.stage==911
{
    global.stage=1;
    global.foughtcirno=0;
    global.foughtutsuho=0;
}

//check on canceled music types!
if global._music_type>1 global._music_type=1;

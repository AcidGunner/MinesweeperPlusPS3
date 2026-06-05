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
global.show_9_message=ini_read_real("save","show_message_9",1);
global.show_10_message=ini_read_real("save","show_message_10",1);
global.show_11_message=ini_read_real("save","show_message_11",1);
ini_close();

//wait a second, if we completed the game...
if global.stage==911
{
    global.stage=1;
}

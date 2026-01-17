///save_game();
//saves the game, WHAT DO YOU THINK ELSE IT DOES????
ini_open("msplus-ps3-save.ini");
ini_write_real("save","stage",global.stage);
ini_write_real("save","hat",global.hat_type);
ini_write_real("settings","input",global.type_input);
ini_write_real("settings","music",global._music_type);
ini_close();

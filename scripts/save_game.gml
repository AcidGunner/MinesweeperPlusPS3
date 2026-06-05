///save_game();
//saves the game, WHAT DO YOU THINK ELSE IT DOES????
ini_open("msplus-ps3-save.ini");
ini_write_real("save","config",global.config);
ini_write_real("save","stage",global.stage);
ini_write_real("save","hat",global.hat_type);
ini_write_real("save","lives",lives);
ini_write_real("save","difficulty",global.difficulty);
ini_write_real("save","episode",global.episode);
ini_write_real("save","gamemode",global.gamemode);
ini_write_real("save","mastermode",global.mastermode);
ini_write_real("save","route",global.route);
ini_write_real("save","show_message_9",global.show_9_message);
ini_write_real("save","show_message_10",global.show_10_message);
ini_write_real("save","show_message_11",global.show_11_message);
ini_close();

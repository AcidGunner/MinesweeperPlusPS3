///save_settings();
ini_open("msplus-ps3-save.ini");
ini_write_real("settings","input",global.type_input);
ini_write_real("settings","music",global._music_type);
ini_write_real("settings","menu",global.menu_t);
ini_write_real("settings","bg_music",global.bg_music);
ini_write_real("settings","lang",global.lang);
ini_close();

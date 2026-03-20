///unlock_the_secret();
show_message("A new route has been unlocked.")
global.unlocked=1;
ini_open("msplus-ps3-save.ini");
ini_write_real("secret","unlocked_secret",global.unlocked);
ini_close();

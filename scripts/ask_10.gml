///ask_10();
if global.type_input=0
var question = show_question("Would you like to change your input type?#The 10 boss-fight currently supports cursor type only.#So the Cursor type is HIGHLY recommended on this stage.")
else var question = true;

show_debug_message(string(question));
if question==true global.type_input=1;

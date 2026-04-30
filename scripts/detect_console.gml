///detect_console();
if os_type==os_ps3          return "PS3";         // Main edition
else if os_type==os_windows return "PS3";         // Main edition for Debug purposes
else if os_type==os_ps4     return "PS4";         // Possible, but do it yourselves.
else if os_type==os_psvita  return "PSVita";      // Possible, but do it yourselves.
else if os_type==os_wiiu    return "Wii U";       // Holy? Testing currently on Cemu via Cinnamon
else if os_type==os_psp     return "PSP";         // This edition will be on Lua sometime, so ignore.
else if os_type==os_xbox360 return "Xbox 360";    // Please tell me if you manage to run it on Xbox consoles..
else if os_type==os_xboxone return "Xbox One";    // Please tell me if you manage to run it on Xbox consoles..
else return "Undetected";

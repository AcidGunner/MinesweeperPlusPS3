///detect_console();
switch os_type
{
    case os_ps3:     return "PS3";         break; // Main port
    case os_ps4:     return "PS4";         break; // Possible, but do it yourselves.
    case os_psp:     return "PSP";         break; // This port will be on GM8.1, so ignored.
    case os_psvita:  return "PSVita";      break; // Possible, but do it yourselves.
    case os_xbox360: return "Xbox 360";    break; // Please tell me if you manage to run it on Xbox consoles..
    case os_windows: return "PS3";         break; // Main port for Debug
    case os_android: return "UNSUPPORTED"; break; // Unsupported Controls
    case os_xboxone: return "Xbox One";    break; // Please tell me if you manage to run it on Xbox consoles..
}

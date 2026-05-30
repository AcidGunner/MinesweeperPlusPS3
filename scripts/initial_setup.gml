///initial_setup();
audio_channel_num(20);
global.debug=1;
bad_apple_initialize();
randomize();
global.CONTROL=1;
global.invert=0;
global.temp_stage=0;
global.temp_lives=0;
global.smiley_face=0;
global.bg_music=0;
global.if_draw_grid=0;
global.unlock_route1=0;
if os_type==os_windows global.CONTROL=0;

load_game();
strings_set();
message_set();
window_set_caption(global.str[0]+": "+detect_console()+" "+global.str[1]+" ("+ver_show()+")"+check_debug());

global.the_config=1; //< CONFIG VERSION!
if global.the_config!=global.config reset_game();

init_globals_mus();
global.pitch=1;

global.m_g_w=7;
global.m_g_h=11;
global.m_g_m=10;
global.m_g_t=2;

if global.debug=1 show_message(global.str[10]);

// Miscellanious
global.gridw[86]=16;
global.gridh[86]=12;
global.minec[86]=0;

global.secret_active=0;

//if irandom_range(6,10)==7 && global.CONTROL!=2 rsx_failed();

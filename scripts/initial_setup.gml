///initial_setup();
audio_channel_num(20);
window_set_caption("Minesweeper Plus PS3 Port ("+ver_show()+")");
bad_apple_initialize();
randomize();
global.CONTROL=1;
if os_type!=os_ps3 && !gamepad_is_connected(0) global.CONTROL=0;

load_game();

global.stage=9;
init_globals_mus();
global.pitch=1;
global.debug=1;
global.foughtcirno=0;
global.foughtutsuho=0;

// First Chapter setup
global.gridw[1]=6;
global.gridh[1]=6;
global.minec[1]=3;
global.gridw[2]=8;
global.gridh[2]=8;
global.minec[2]=6;
global.gridw[3]=10;
global.gridh[3]=10;
global.minec[3]=10;
global.gridw[4]=9;
global.gridh[4]=12;
global.minec[4]=12;
global.gridw[5]=18;
global.gridh[5]=9;
global.minec[5]=20;
global.gridw[6]=15;
global.gridh[6]=15;
global.minec[6]=30;
global.gridw[7]=18;
global.gridh[7]=12;
global.minec[7]=33;
global.gridw[8]=16;
global.gridh[8]=16;
global.minec[8]=42;
global.gridw[9]=13;
global.gridh[9]=13;
global.minec[9]=21;

// Second Chapter Setup (boss 10 only)
global.gridw[10]=21;
global.gridh[10]=21;
global.minec[10]=60;
global.gridw[910]=9;
global.gridh[910]=9;
global.minec[910]=10;

// Miscellanious
global.gridw[86]=16;
global.gridh[86]=12;
global.minec[86]=0;

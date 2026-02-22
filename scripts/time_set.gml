///time_set();
final_timer=get_timer()-timer;
var f_ts=final_timer div 10000;
var f_ts2=final_timer div 1000000;
var f_ms=f_ts mod 100;
var f_s=f_ts2 mod 60;
var f_m=f_ts2 div 60;

obj_ui.final_time=string(f_m)+":"+string(f_s)+"."+string(f_ms)+"s";

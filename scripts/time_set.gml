///time_set();

obj_timer.active=false;
var final_timer=obj_timer.time;

var f_ts=final_timer div 60;

var f_ms=floor((final_timer/60*100) mod 100);
var f_s=f_ts mod 60;
var f_m=f_ts div 60;

obj_ui.final_time=string(f_m)+":"+string(f_s)+"."+string(f_ms)+"s";

if global.stage==910 obj_chap1_data.time[global.stage]+=final_timer/60
else if global.stage!=0 obj_chap1_data.time[global.stage]=final_timer/60;

if global.stage!=0 obj_chap1_data.alarm[0]=1;

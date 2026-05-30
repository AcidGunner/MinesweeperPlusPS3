///time_set();

obj_timer.active=false;
var final_timer=obj_timer.time;

var f_ts=final_timer div 60;
if global.stage==910 f_ts+=ds_list_find_value(obj_chap1_data.time,ds_list_size(obj_chap1_data.time)-1);

var f_ms=floor((final_timer/60*100) mod 100);
var f_s=f_ts mod 60;
var f_m=f_ts div 60;

obj_ui.final_time=string(f_m)+":"+string(f_s)+"."+string(f_ms)+"s";

if global.stage==910 ds_list_replace(obj_chap1_data.time,ds_list_size(obj_chap1_data.time)-1,f_ts)
else if global.stage!=0 ds_list_add(obj_chap1_data.time,f_ts);

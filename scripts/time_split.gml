///time_split(str, separator)

var str = argument0;
var sep = argument1;

var t=1;

while(string_pos(sep, str) > 0)
{
    var pos = string_pos(sep, str);
    time[t]=string_copy(str, 1, pos - 1);
    str = string_delete(str, 1, pos + string_length(sep) - 1);
    t++;
}

time[t]=str;

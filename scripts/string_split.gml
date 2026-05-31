///string_split(str, separator)

var str = argument0;
var sep = argument1;

var list = ds_list_create();
while(string_pos(sep, str) > 0)
{
    var pos = string_pos(sep, str);
    ds_list_add(list,string_copy(str, 1, pos - 1));
    str = string_delete(str, 1, pos + string_length(sep) - 1);
}

ds_list_add(list, str);
return list;

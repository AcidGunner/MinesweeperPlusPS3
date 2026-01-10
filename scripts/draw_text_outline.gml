///draw_text_outline(x,y,string,incolour,outcolour,border)

var outline = argument[5];
draw_text_colour(argument[0]-outline,argument[1]-outline,argument[2],argument[4],argument[4],argument[4],argument[4],1);
draw_text_colour(argument[0]-outline,argument[1]+outline,argument[2],argument[4],argument[4],argument[4],argument[4],1);
draw_text_colour(argument[0]+outline,argument[1]-outline,argument[2],argument[4],argument[4],argument[4],argument[4],1);
draw_text_colour(argument[0]+outline,argument[1]+outline,argument[2],argument[4],argument[4],argument[4],argument[4],1);
draw_text_colour(argument[0],argument[1],argument[2],argument[3],argument[3],argument[3],argument[3],1);

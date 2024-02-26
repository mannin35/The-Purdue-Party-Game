/// @Stop dice from rolling
image_speed = 0; 
stopped = true;
var player = global.localPlayers[global.currentplayer];
var numSpaces = floor(image_index + 1) ;
move(player, numSpaces);
show_message(Space2);





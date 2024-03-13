/// @Destroy dice and start player movement
var player = global.localPlayers[global.currentplayer];
var numSpaces = floor(image_index + 1) ;
/* note that  numSpaces is one more than you would expect
* due to how player movement was implemented
*/
player.numSpaces = numSpaces + 1;
HideButtons();
instance_destroy();











/// @Destroy dice and start player movement
var player = global.localPlayers[global.currentplayer];
numSpaces += 24//floor(image_index + 1) ;
if (global.doubleDice) {
	//image_speed = 1;
	global.doubleDice = false;
	hasPressed = false;
}
else if (global.slowDice) {
	//image_speed = 1;
	global.slowDice = false;
	hasPressed = false;
	player.numSpaces = numSpaces + 1;
	numSpaces = 0;
	HideButtons();
	instance_destroy();
}
else {
	/* note that  numSpaces is one more than you would expect
	* due to how player movement was implemented
	*/
	player.numSpaces = numSpaces + 1;
	numSpaces = 0;
	HideButtons();
	instance_destroy();
}











/// @Track player position and deal with end of rounds
var player = global.localPlayers[global.currentplayer];
x = player.x;
y = player.y;

if (end_of_round) {
	//TODO: add if condition for if end of game is reached
	
	//set random seed for randomization of minigames
	randomize();
	//randomly select minigame
	minigame = irandom(4);
	//show_debug_message("MINIGAME:");
	//show_debug_message(minigame);
	
	
	//ensure same minigame isnt picked twice
	while (minigame == last_minigame) {
		show_debug_message("loop");
		minigame = irandom(4);	
	}

	//go to corresponding minigame screen
	if(test_case==0) {
		last_minigame = minigame;
	if (minigame == 0) {
		room_goto(RM_BoilermakerExpressInstructions);
	} else if (minigame == 1) {
		room_goto(RM_ElevenFiftyNineInstructions);
	} else if (minigame == 2) {
		room_goto(RM_StateStreetInstructions);
	} else if (minigame == 3) {
		room_goto(RM_TimesUpInstructions);
	} else if (minigame == 4) {
		room_goto(RM_TipsyTunnelInstructions);
	} else {
		show_debug_message("ERROR: Invalid number generated for minigame selection");
	}
	}
	else {
		if(last_minigame==minigame) {
			show_debug_message("ERROR: chose same minigame twice in a row");	
		} else if (minigame < 0 || minigame > 4) {
			show_debug_message("ERROR: Invalid minigame number generated");
		} else {
			show_debug_message("Valid Minigame:");
			show_debug_message(minigame);
		}
		last_minigame = minigame;
	}
}





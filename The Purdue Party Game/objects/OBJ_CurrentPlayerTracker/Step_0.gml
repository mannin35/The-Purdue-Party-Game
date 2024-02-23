/// @description Insert description here
// You can write your code in this editor

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
	last_minigame = minigame;
	
	//go to corresponding minigame screen
	if(test_case==0) {
	if (minigame == 0) {
		room = RM_BoilermakerExpressInstructions;
	} else if (minigame == 1) {
		room = RM_ElevenFiftyNineInstructions;
	} else if (minigame == 2) {
		room = RM_StateStreetInstructions;
	} else if (minigame == 3) {
		room = RM_TimesUpInstructions;
	} else if (minigame == 4) {
		room = RM_TipsyTunnelInstructions;
	} else {
		show_debug_message("ERROR: Invalid number generated for minigame selection");
	}
	}
}





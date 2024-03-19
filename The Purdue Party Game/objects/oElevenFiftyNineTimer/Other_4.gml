/// @description Insert description here
// You can write your code in this editor

aiTimes = [-1,-1,-1,-1]
randomize();
if(global.realPlayerCount<4) {
	if(global.difficultyOne == 0) {
		//easy
		aiTimes[3] = irandom_range(5, 13);
	} else if(global.difficultyOne==1) {
		//medium
		aiTimes[3] = irandom_range(7, 11);
	} else if(global.difficultyOne == 2) {
		//hard
		aiTimes[3] = irandom_range(8, 10);
	}
	//show_debug_message(aiTimes[3]);
	aiTimes[3] = (50+aiTimes[3])%60;
	//show_debug_message(aiTimes[3]);
}
if(global.realPlayerCount<3) {
	if(global.difficultyTwo == 0) {
		//easy
		aiTimes[2] = irandom_range(5, 13);
	} else if(global.difficultyTwo==1) {
		//medium
		aiTimes[2] = irandom_range(7, 11);
	} else if(global.difficultyTwo == 2) {
		//hard
		aiTimes[2] = irandom_range(8, 10);
	}
	//show_debug_message(aiTimes[2]);
	aiTimes[2] = (50+aiTimes[2])%60;
	//show_debug_message(aiTimes[2]);
}
if(global.realPlayerCount<2) {
	if(global.difficultyThree == 0) {
		//easy
		aiTimes[1] = irandom_range(5, 13);
	} else if(global.difficultyThree==1) {
		//medium
		aiTimes[1] = irandom_range(7, 11);
	} else if(global.difficultyThree == 2) {
		//hard
		aiTimes[1] = irandom_range(8, 10);
	}
	//show_debug_message(aiTimes[1]);
	aiTimes[1] = (50+aiTimes[1])%60;
	//show_debug_message(aiTimes[1]);
}
if(global.realPlayerCount<1) {
	if(global.difficultyFour == 0) {
		//easy
		aiTimes[0] = irandom_range(5, 13);
	} else if(global.difficultyFour==1) {
		//medium
		aiTimes[0] = irandom_range(7, 11);
	} else if(global.difficultyFour == 2) {
		//hard
		aiTimes[0] = irandom_range(8, 10);
	}
	//show_debug_message(aiTimes[0]);
	aiTimes[0] = (50+aiTimes[0])%60;
	//show_debug_message(aiTimes[0]);
}





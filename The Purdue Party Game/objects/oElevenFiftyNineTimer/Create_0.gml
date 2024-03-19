/// @description Store timer
// You can write your code in this editor

//_timer = 0;
t_hour = 11
t_min = 59
t_sec = 45
t_msec = 0 // 1/60 of a frame



p_one = global.playerOneIndex;
p_two = global.playerTwoIndex;
p_three = global.playerThreeIndex;
p_four = global.playerFourIndex;

player_one.image_index = p_one;
player_two.image_index = p_two;
player_three.image_index = p_three;
player_four.image_index = p_four;

player_one_hand.image_index = p_one * 2;
player_two_hand.image_index = p_two * 2;
player_three_hand.image_index = p_three * 2;
player_four_hand.image_index = p_four * 2;


//show_debug_message(global.realPlayerCount)
alarm[0] = 1

//generate times for AI to submit
aiTimes = [-1,-1,-1,-1]
if(global.realPlayerCount<4) {
	if(global.difficultyOne == 0) {
		//easy
		aiTimes[3] = irandom_range(0, 13);
	} else if(global.difficultyOne==1) {
		//medium
		aiTimes[3] = irandom_range(5, 11);
	} else if(global.difficultyOne == 2) {
		//hard
		aiTimes[3] = irandom_range(7, 10);
	}
	//show_debug_message(aiTimes[3]);
	aiTimes[3] = (50+aiTimes[3])%60;
	//show_debug_message(aiTimes[3]);
}
if(global.realPlayerCount<3) {
	if(global.difficultyTwo == 0) {
		//easy
		aiTimes[2] = irandom_range(0, 13);
	} else if(global.difficultyTwo==1) {
		//medium
		aiTimes[2] = irandom_range(5, 11);
	} else if(global.difficultyTwo == 2) {
		//hard
		aiTimes[2] = irandom_range(7, 10);
	}
	//show_debug_message(aiTimes[2]);
	aiTimes[2] = (50+aiTimes[2])%60;
	//show_debug_message(aiTimes[2]);
}
if(global.realPlayerCount<2) {
	if(global.difficultyThree == 0) {
		//easy
		aiTimes[1] = irandom_range(0, 13);
	} else if(global.difficultyThree==1) {
		//medium
		aiTimes[1] = irandom_range(5, 11);
	} else if(global.difficultyThree == 2) {
		//hard
		aiTimes[1] = irandom_range(7, 10);
	}
	//show_debug_message(aiTimes[1]);
	aiTimes[1] = (50+aiTimes[1])%60;
	//show_debug_message(aiTimes[1]);
}
if(global.realPlayerCount<1) {
	if(global.difficultyFour == 0) {
		//easy
		aiTimes[0] = irandom_range(0, 13);
	} else if(global.difficultyFour==1) {
		//medium
		aiTimes[0] = irandom_range(5, 11);
	} else if(global.difficultyFour == 2) {
		//hard
		aiTimes[0] = irandom_range(7, 10);
	}
	//show_debug_message(aiTimes[0]);
	aiTimes[0] = (50+aiTimes[0])%60;
	//show_debug_message(aiTimes[0]);
}









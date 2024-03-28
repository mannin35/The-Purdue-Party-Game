// Set current player
currentPlayer = global.localPlayers[global.currentplayer];

if (currentPlayer.isCPU) {
	// CPU "AI"
	var difficulty = global.CPUSettings[global.currentplayer];
	// Determines chances of being correct
	// Difficulties are 0, 1, 2 (E, M, H)
	// Chances are 25%, 50%, 75%
	var minRoll = difficulty + 1;
	var roll = irandom_range(1, 4);
	if (roll <= minRoll) {
		// Correct!
		currentPlayer.boilerBucks += 6;
		OBJ_Points.image_index = 2;
	}
	else {
		// LMAO LOSERRRRR
		currentPlayer.boilerBucks -= 3;
		OBJ_Points.image_index = 1;
	}
	OBJ_Points.x = currentPlayer.x + 6;
	OBJ_Points.y = currentPlayer.y - 26;
	OBJ_Points.visible = true;
	OBJ_Points.alarm[0] = 120;
	currentPlayer.alarm[0] = 120;
	instance_destroy()
}

image_xscale = 1.5;
image_yscale = 1.5;
space = currentPlayer.space;
category = space.category;
info = OBJ_TriviaInfo;
numAsked = 0;
// Count number of questions already asked for category
for (i = 0; i < info.numColumns; i++) {
	if (info.HasAsked[category, i] == 1) {
		numAsked++;
	}
}
if (numAsked == info.numColumns) {
	// Reset HasAsked to all 0s for current category
	for (i = 0; i < info.numColumns; i++) {
		info.HasAsked[category, i] = 0;
	}
}
questionNum = irandom_range(0,9);
while (info.HasAsked[category, questionNum] == 1) {
	questionNum = irandom_range(0,9);
}
questionText = info.TriviaQuestions[category, questionNum];

// Array of answers in order
answersNotRandom = [
	info.TriviaAnswerCorrect[category, questionNum],
	info.TriviaAnswerIncorrectOne[category, questionNum],
	info.TriviaAnswerIncorrectTwo[category, questionNum],
	info.TriviaAnswerIncorrectThree[category, questionNum] ];

// Array with answers in random order
answers = [0, 0, 0, 0]
answerIndex = irandom_range(0,3);
for (i = 0; i < 4; i++) {
	while (answers[answerIndex] != 0) {
		answerIndex = irandom_range(0,3);
	}
	answers[answerIndex] = answersNotRandom[i];
}
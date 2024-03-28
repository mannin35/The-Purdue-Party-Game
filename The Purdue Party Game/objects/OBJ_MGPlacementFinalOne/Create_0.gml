//Temp remove after merge
//global.minigameResults = [2,2,1,4];
//
show_debug_message("PlayerDegree: {0} {1} {2} {3}",OBJ_Player1Local.degrees, OBJ_Player2Local.degrees, OBJ_Player3Local.degrees, OBJ_Player4Local.degrees)
awardsGiven = [0,0,0,0];
indexArray = [global.playerOneIndex, global.playerTwoIndex, global.playerThreeIndex, global.playerFourIndex];
redSpacesArray = [OBJ_Player1Local.redSpaces, OBJ_Player2Local.redSpaces, OBJ_Player3Local.redSpaces, OBJ_Player4Local.redSpaces];
totalBoilerBuckArray = [OBJ_Player1Local.totalBoilerBucks, OBJ_Player2Local.totalBoilerBucks, OBJ_Player3Local.totalBoilerBucks, OBJ_Player4Local.totalBoilerBucks];
totalTriviaArray = [OBJ_Player1Local.triviaCorrect, OBJ_Player2Local.triviaCorrect, OBJ_Player3Local.triviaCorrect, OBJ_Player4Local.triviaCorrect];
boilerBuckArray = [OBJ_Player1Local.boilerBucks, OBJ_Player2Local.boilerBucks, OBJ_Player3Local.boilerBucks, OBJ_Player4Local.boilerBucks];
degreeArray = [OBJ_Player1Local.degrees, OBJ_Player2Local.degrees, OBJ_Player3Local.degrees, OBJ_Player4Local.degrees];
if (!(global.accoladesCalculated)) {
// most wins
for (i = 1; i < 4; i++) {
	if (global.wins[i] > global.wins[global.winIndex]) {
		global.winIndex = i;
	}
}
if (awardsGiven[global.winIndex] < 2) awardsGiven[global.winIndex]++;
// most BB accumulated
for (i = 1; i < 4; i++) {
	if (totalBoilerBuckArray[i] > totalBoilerBuckArray[global.bbIndex]) {
		global.bbIndex = i;
	}
}
if (awardsGiven[global.bbIndex] < 2) awardsGiven[global.bbIndex]++;
// most trivia questions
for (i = 1; i < 4; i++) {
	if (totalTriviaArray[i] > totalTriviaArray[global.triviaIndex]) {
		global.triviaIndex = i;
	}
}
if (awardsGiven[global.triviaIndex] < 2) awardsGiven[global.triviaIndex]++;
// most student loan payment squares
for (i = 1; i < 4; i++) {
	if (redSpacesArray[i] > redSpacesArray[global.loanIndex]) {
		global.loanIndex = i;
	}
}
if (awardsGiven[global.loanIndex] < 2) awardsGiven[global.loanIndex]++;
show_debug_message("awardsGiven: {0} {1} {2} {3}", awardsGiven[0], awardsGiven[1], awardsGiven[2], awardsGiven[3])
// gives bonus degrees to 
OBJ_Player1Local.degrees += awardsGiven[0];
OBJ_Player2Local.degrees += awardsGiven[1];
OBJ_Player3Local.degrees += awardsGiven[2];
OBJ_Player4Local.degrees += awardsGiven[3];
global.accoladesCalculated = true;
}
OBJ_LilPlayerPopUp1.image_index = indexArray[global.winIndex];
OBJ_LilPlayerPopUp2.image_index = indexArray[global.bbIndex];
OBJ_LilPlayerPopUp3.image_index = indexArray[global.triviaIndex];
OBJ_LilPlayerPopUp4.image_index = indexArray[global.loanIndex];
//show_debug_message("PlayerDegree: {0} {1} {2} {3}",OBJ_Player1Local.degrees, OBJ_Player2Local.degrees, OBJ_Player3Local.degrees, OBJ_Player4Local.degrees)
alarm[0] = 60 * 3;
//Sorts array given so we can determine which players will be placed where
//Uses bubble sort
players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
//sort list of players by number of boiler bucks
swapped = false;
for(i=0; i<3; i++) {
	for(j=0; j<3-i;j++) {
		if(players[j].boilerBucks < players[j+1].boilerBucks) {
			temp = players[j];
			players[j] = players[j+1];
			players[j+1] = temp;
			swapped = true;
		}
	}
	if(swapped==false) {
		break;	
	}
}
//sort list of players by number of degrees
swapped = false;
for(i=0; i<3; i++) {
	for(j=0; j<3-i;j++) {
		if(players[j].degrees < players[j+1].degrees) {
			temp = players[j];
			players[j] = players[j+1];
			players[j+1] = temp;
			swapped = true;
		}
	}
	if(swapped==false) {
		break;	
	}
}
	
//set player head indices to reflect positioning
OBJ_PlayerOneMGR.image_index = players[0].image_index;
OBJ_PlayerTwoMGR.image_index = players[1].image_index;
OBJ_PlayerThreeMGR.image_index = players[2].image_index;
OBJ_PlayerFourMGR.image_index = players[3].image_index;
//set placement markers to reflect any ties
OBJ_MGPlacementFinalOne.image_index = 0;
OBJ_MGPlacementFinalTwo.image_index = 1;
OBJ_MGPlacementFinalThree.image_index = 2;
OBJ_MGPlacementFinalFour.image_index = 3;
if (players[1].degrees=players[0].degrees && players[1].boilerBucks == players[0].boilerBucks) {
	OBJ_MGPlacementFinalTwo.image_index = 0;
	if (players[2].degrees=players[0].degrees && players[2].boilerBucks == players[0].boilerBucks) {
		OBJ_MGPlacementFinalThree.image_index = 0;
		if (players[3].degrees=players[0].degrees && players[3].boilerBucks == players[0].boilerBucks) {
			OBJ_MGPlacementFinalFour.image_index = 0;
		}
	}
} else if (players[2].degrees=players[1].degrees && players[2].boilerBucks == players[1].boilerBucks) {
	OBJ_MGPlacementFinalThree.image_index = 1;
	if (players[3].degrees=players[1].degrees && players[3].boilerBucks == players[1].boilerBucks) {
			OBJ_MGPlacementFinalFour.image_index = 1;
		}
} else if (players[3].degrees=players[2].degrees && players[3].boilerBucks == players[2].boilerBucks) {
			OBJ_MGPlacementFinalFour.image_index = 2;
}
/*
playerObjects = [OBJ_PlayerOneMGR, OBJ_PlayerTwoMGR, OBJ_PlayerThreeMGR, OBJ_PlayerFourMGR];
for(i = 0; i < 4; i++) {
	if(players[i] == 1){
		playerObjects[i].image_index = global.playerOneIndex;		
	} else if (players[i] == 2){
		playerObjects[i].image_index = global.playerTwoIndex;	
	} else if (players[i] == 3){
		playerObjects[i].image_index = global.playerThreeIndex;	
	} else{ 
		playerObjects[i].image_index = global.playerFourIndex;	
	}
}
image_index = tempArray[0] - 1;
//OBJ_PlayerOneMGR.image_index = players[0] - 1;
OBJ_MGPlacementTwo.image_index = tempArray[1] - 1;
//OBJ_PlayerTwoMGR.image_index = players[1] - 1;
OBJ_MGPlacementThree.image_index = tempArray[2] - 1;
//OBJ_PlayerThreeMGR.image_index = players[2] - 1;
OBJ_MGPlacementFour.image_index = tempArray[3] - 1;
//OBJ_PlayerFourMGR.image_index = players[3] - 1;

increase = [0,0,0,0];
imageIndexArray = [image_index, tempArray[1] - 1, tempArray[2] - 1, tempArray[3] - 1];
//imageIndexArray = [0,1,2,3];
//show_debug_message("{0} {1} {2} {3}", imageIndexArray[0], imageIndexArray[1], imageIndexArray[2], imageIndexArray[3])
for(k = 0; k < 4; k++){
	//show_debug_message("{0}", imageIndexArray[k])
	if(imageIndexArray[k] == 0){
		increase[k] = 10;
	} else if (imageIndexArray[k] == 1){
		increase[k] = 5;	
	} else if (imageIndexArray[k] == 2){
		increase[k] = 3;
	} else {
		increase[k] = 1;	
	}
}*/
show_debug_message("here");
calculated = true;
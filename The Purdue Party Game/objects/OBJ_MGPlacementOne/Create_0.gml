//Temp remove after merge
global.minigameResults = [2,2,1,4];
//
players = [1,2,3,4];
boilerBuckArray = [OBJ_Player1Local.boilerBucks, OBJ_Player2Local.boilerBucks, OBJ_Player3Local.boilerBucks, OBJ_Player4Local.boilerBucks];
degreeArray = [OBJ_Player1Local.degrees, OBJ_Player2Local.degrees, OBJ_Player3Local.degrees, OBJ_Player4Local.degrees];

for (i = 0; i < 3; i++){
	swapped = false;
	for(j = 0; j < 3-i; j++){
		if(global.minigameResults[j] > global.minigameResults[j+1]){
			temp = 	global.minigameResults[j];
			tempPlayer = players[j];
			tempBuck = boilerBuckArray[j];
			tempDegree = degreeArray[j];
			global.minigameResults[j] = global.minigameResults[j+1];
			global.minigameResults[j+1] = temp;
			players[j] = players[j+1];
			players[j+1] = tempPlayer;
			boilerBuckArray[j] = boilerBuckArray[j+1];
			boilerBuckArray[j+1] = tempBuck;
			degreeArray[j] = degreeArray[j+1];
			degreeArray[j+1] = tempDegree;
			swapped = true;
		}
	}
	if(swapped == false){
		break;
	}
}
image_index = global.minigameResults[0] - 1;
OBJ_PlayerOneMGR.image_index = players[0] - 1;
OBJ_MGPlacementTwo.image_index = global.minigameResults[1] - 1;
OBJ_PlayerTwoMGR.image_index = players[1] - 1;
OBJ_MGPlacementThree.image_index = global.minigameResults[2] - 1;
OBJ_PlayerThreeMGR.image_index = players[2] - 1;
OBJ_MGPlacementFour.image_index = global.minigameResults[3] - 1;
OBJ_PlayerFourMGR.image_index = players[3] - 1;

calculated = true;
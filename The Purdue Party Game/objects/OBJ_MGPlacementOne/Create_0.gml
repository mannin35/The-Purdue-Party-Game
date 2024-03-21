//Temp remove after merge
//global.minigameResults = [2,2,1,4];
//
players = [1,2,3,4];
boilerBuckArray = [OBJ_Player1Local.boilerBucks, OBJ_Player2Local.boilerBucks, OBJ_Player3Local.boilerBucks, OBJ_Player4Local.boilerBucks];
degreeArray = [OBJ_Player1Local.degrees, OBJ_Player2Local.degrees, OBJ_Player3Local.degrees, OBJ_Player4Local.degrees];
tempArray[4] = [0,0,0,0];
for(i = 0; i < 4; i++){
	tempArray[i] = global.minigameResults[i];
}

//Sorts array given so we can determine which players will be placed where
//Uses bubble sort
for (i = 0; i < 3; i++){
	swapped = false;
	for(j = 0; j < 3-i; j++){
		if(tempArray[j] > tempArray[j+1]){
			temp = 	tempArray[j];
			tempPlayer = players[j];
			tempBuck = boilerBuckArray[j];
			tempDegree = degreeArray[j];
			tempArray[j] = tempArray[j+1];
			tempArray[j+1] = temp;
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
playerObjects = [OBJ_PlayerOneMGR, OBJ_PlayerTwoMGR, OBJ_PlayerThreeMGR, OBJ_PlayerFourMGR];
for(i = 0; i < 4; i++){
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
}
calculated = true;
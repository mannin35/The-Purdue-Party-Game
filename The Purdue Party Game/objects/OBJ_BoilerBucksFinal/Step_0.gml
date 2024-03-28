/// @description Insert description here
// You can write your code in this editor

//sort list of players by number of boiler bucks
if(!calculated){
	players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
	playerSprites = [global.playerOneIndex, global.playerTwoIndex, global.playerThreeIndex, global.playerFourIndex];
	swapped = false;
	for(i=0; i<3; i++) {
		for(j=0; j<3-i;j++) {
			if(players[j].boilerBucks < players[j+1].boilerBucks) {
				temp = players[j];
				players[j] = players[j+1];
				players[j+1] = temp;
				tempSprite = playerSprites[j];
				playerSprites[j] = playerSprites[j+1];
				playerSprites[j+1] = tempSprite;
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
				tempSprite = playerSprites[j];
				playerSprites[j] = playerSprites[j+1];
				playerSprites[j+1] = tempSprite;
				swapped = true;
			}
		}
		if(swapped==false) {
			break;	
		}
	}
	
	//set player head indices to reflect positioning
	OBJ_PlayerOneMGR.image_index = playerSprites[0]
	OBJ_PlayerTwoMGR.image_index = playerSprites[1]
	OBJ_PlayerThreeMGR.image_index = playerSprites[2]
	OBJ_PlayerFourMGR.image_index = playerSprites[3]
	//set placement markers to reflect any ties
	OBJ_MGPlacementFinalOne	.image_index = 0;
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
	calculated = true;
}





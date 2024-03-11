/// @description Insert description here
// You can write your code in this editor

if(counterTwo >= 180){
	OBJ_MGPlacementOne.visible = false;	
	OBJ_MGPlacementTwo.visible = false;	
	OBJ_MGPlacementThree.visible = false;	
	OBJ_MGPlacementFour.visible = false;
	OBJ_PlayerOneMGR.visible = false;
	OBJ_PlayerTwoMGR.visible = false;
	OBJ_PlayerThreeMGR.visible = false;
	OBJ_PlayerFourMGR.visible = false;
	OBJ_BoilerBuckTemp.visible = false;	
	OBJ_MinigameDegree.visible = false;
	BJ_MGBoilerBucks.visible = false;
}
if(counterTwo >= 240){
		//calculate current player placements
	players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
	for(p = 0; p < 4; p++){
		if(OBJ_MGPlacementOne.players[p] == 1){
			OBJ_Player1Local.boilerBucks = OBJ_MGPlacementOne.boilerBuckArray[p]
			OBJ_Player1Local.degrees = OBJ_MGPlacementOne.degreeArray[p];
		} else if (OBJ_MGPlacementOne.players[p] == 2){
			OBJ_Player2Local.boilerBucks = OBJ_MGPlacementOne.boilerBuckArray[p]
			OBJ_Player2Local.degrees = OBJ_MGPlacementOne.degreeArray[p];
		} else if( OBJ_MGPlacementOne.players[p] == 3){
			OBJ_Player3Local.boilerBucks = OBJ_MGPlacementOne.boilerBuckArray[p]
			OBJ_Player3Local.degrees = OBJ_MGPlacementOne.degreeArray[p];
		} else {
			OBJ_Player4Local.boilerBucks = OBJ_MGPlacementOne.boilerBuckArray[p]
			OBJ_Player4Local.degrees = OBJ_MGPlacementOne.degreeArray[p];
		}
	}
	show_debug_message("BB: {0} {1} {2} {3}", players[0].boilerBucks, players[1].boilerBucks, players[2].boilerBucks, players[3].boilerBucks)
	show_debug_message("Degrees: {0} {1} {2} {3}", players[0].degrees, players[1].degrees, players[2].degrees, players[3].degrees)
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
	show_debug_message("AFTER")
	show_debug_message("BB: {0} {1} {2} {3}", players[0].boilerBucks, players[1].boilerBucks, players[2].boilerBucks, players[3].boilerBucks)
	show_debug_message("Degrees: {0} {1} {2} {3}", players[0].degrees, players[1].degrees, players[2].degrees, players[3].degrees)
	//set player head indices to reflect positioning
	OBJ_PlayerOneMGR.image_index = players[0].image_index;
	OBJ_PlayerTwoMGR.image_index = players[1].image_index;
	OBJ_PlayerThreeMGR.image_index = players[2].image_index;
	OBJ_PlayerFourMGR.image_index = players[3].image_index;
	//set placement markers to reflect any ties
	OBJ_MGPlacementOne.image_index = 0;
	OBJ_MGPlacementTwo.image_index = 1;
	OBJ_MGPlacementThree.image_index = 2;
	OBJ_MGPlacementFour.image_index = 3;
	if (players[1].degrees=players[0].degrees && players[1].boilerBucks == players[0].boilerBucks) {
		OBJ_MGPlacementTwo.image_index = 0;
		if (players[2].degrees=players[0].degrees && players[2].boilerBucks == players[0].boilerBucks) {
			OBJ_MGPlacementThree.image_index = 0;
			if (players[3].degrees=players[0].degrees && players[3].boilerBucks == players[0].boilerBucks) {
				OBJ_MGPlacementFour.image_index = 0;
			}
		}
	} else if (players[2].degrees=players[1].degrees && players[2].boilerBucks == players[1].boilerBucks) {
		OBJ_MGPlacementThree.image_index = 1;
		if (players[3].degrees=players[1].degrees && players[3].boilerBucks == players[1].boilerBucks) {
				OBJ_MGPlacementFour.image_index = 1;
			}
	} else if (players[3].degrees=players[2].degrees && players[3].boilerBucks == players[2].boilerBucks) {
				OBJ_MGPlacementFour.image_index = 2;
	}
	
	//Sets them to true
	OBJ_MGPlacementOne.visible = true;	
	OBJ_MGPlacementTwo.visible = true;	
	OBJ_MGPlacementThree.visible = true;	
	OBJ_MGPlacementFour.visible = true;	
	OBJ_PlayerOneMGR.visible = true;	
	OBJ_PlayerTwoMGR.visible = true;	
	OBJ_PlayerThreeMGR.visible = true;	
	OBJ_PlayerFourMGR.visible = true;	
	OBJ_BoilerBuckTemp.visible = true;
	OBJ_MinigameDegree.visible = true;	
	BJ_MGBoilerBucks.visible = true;
}



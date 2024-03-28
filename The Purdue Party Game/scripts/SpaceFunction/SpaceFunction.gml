// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.playerObjects = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
function SpaceFunction(type){
	var playerIndex = global.currentplayer;
	var currentPlayer = global.localPlayers[playerIndex];
	var space = currentPlayer.space;
	OBJ_Points.alarm[0] = -1;
	if(type == "store"){

		if(!currentPlayer.isCPU){
			HideButtons()
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_Store;
			}
		} else {
			currentPlayer.alarm[0] = 120;
			//room_goto(RM_Store)
		}
	}
	
	if(type == "blue"){
		//if(global.playercontrollerindices[global.currentplayer] != -1){
			current = currentPlayer;
			OBJ_Points.x = current.x + 6;
			OBJ_Points.y = current.y - 26;
			current.boilerBucks += 3;
			OBJ_Points.image_index = 0;
			OBJ_Points.visible = true;
			/*while (OBJ_Points.image_alpha > 0){
				OBJ_Points.image_alpha -= 0.01;
			}*/
			OBJ_Points.alarm[0] = 120;
			currentPlayer.alarm[0] = 120;
		//}
	}
	if (type == "BlueStriped") {
			current = currentPlayer;
			OBJ_Points.x = current.x + 6;
			OBJ_Points.y = current.y - 26;
			current.boilerBucks += 6;
			OBJ_Points.image_index = 2;
			OBJ_Points.visible = true;
			OBJ_Points.alarm[0] = 120;
			currentPlayer.alarm[0] = 120;
		//}
	}
	if(type == "red"){
		//if(global.playercontrollerindices[global.currentplayer] != -1){
		current = currentPlayer;
		current.redSpaces++;
		OBJ_Points.x = current.x + 6;
		OBJ_Points.y = current.y - 26;
		if(current.boilerBucks >=3){
			current.boilerBucks -= 3;
		} else {
			current.boilerBucks = 0;
		}
			OBJ_Points.image_index = 1;
			OBJ_Points.visible = true;
			/*while (OBJ_Points.image_alpha > 0){
				OBJ_Points.image_alpha -= 0.05;
			}*/
			OBJ_Points.alarm[0] = 120;
			currentPlayer.alarm[0] = 120;
		//}
	}
	if(type == "bus"){
		if(!currentPlayer.isCPU){
			OBJ_BusQuestion.visible = true;
		}
		OBJ_BusQuestion.inUse = true;
	}
	
	if (type == "Trivia") {
		instance_create_layer(currentPlayer.x, currentPlayer.y, OBJ_Scoreboard.layer, OBJ_TriviaQuestion);
	}
	if (type == "Stadium") {
		space.next[0] = space.loopSpace;
		// Move one more space
		currentPlayer.numSpaces = 2;
		// Reset spaces
		space.alarm[0] = 120;
	}
	//Add else statements to help with what you want the space to do and make up your own keywords
	//Set spaceType in each space to represent the type of space you have and in the if, add what you want
	//to happen in the event the player ends on that space
}
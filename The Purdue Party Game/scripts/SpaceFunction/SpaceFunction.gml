// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.playerObjects = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
function SpaceFunction(type){
	var playerIndex = global.currentplayer;
	OBJ_Points.alarm[0] = -1;
	if(type == "store"){
		if(global.playercontrollerindices[playerIndex] != -1 && playerIndex < global.realPlayerCount){
			HideButtons()
			room_goto(RM_Store)	
		} else {
			global.localPlayers[global.currentplayer].alarm[0] = 120;
		}
	} 
	
	if(type == "blue"){
		//if(global.playercontrollerindices[global.currentplayer] != -1){
			current = global.localPlayers[playerIndex];
			OBJ_Points.x = current.x + 6;
			OBJ_Points.y = current.y - 26;
			current.boilerBucks += 3;
			OBJ_Points.image_index = 0;
			OBJ_Points.visible = true;
			/*while (OBJ_Points.image_alpha > 0){
				OBJ_Points.image_alpha -= 0.01;
			}*/
			OBJ_Points.alarm[0] = 120;
		//}
	}
	if(type == "red"){
		//if(global.playercontrollerindices[global.currentplayer] != -1){
		current = global.localPlayers[playerIndex];
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
		//}
	}
	if(type == "bus"){
		if(!global.localPlayers[playerIndex].isCPU){
			OBJ_BusQuestion.visible = true;
		}
		OBJ_BusQuestion.inUse = true;
	}
	//Add else statements to help with what you want the space to do and make up your own keywords
	//Set spaceType in each space to represent the type of space you have and in the if, add what you want
	//to happen in the event the player ends on that space
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
function SpaceFunction(type){
	if(type == "store"){
		if(global.playercontrollerindices[global.currentplayer] != -1 && global.currentplayer < global.realPlayerCount){
			room_goto(RM_Store)	
		}
	} 
	if(type == "blue"){
		if(global.playercontrollerindices[global.currentplayer] != -1){
			players[global.currentplayer].boilerBucks += 3;
			OBJ_Points.image_index = 0;
			OBJ_Points.visible = true;
			while (OBJ_Points.image_alpha > 0){
				OBJ_Points.image_alpha -= 0.05;
			}
			OBJ_Points.visible = false;
			OBJ_Points.image_alpha = 100;
		}
	}
	if(type == "red"){
		if(global.playercontrollerindices[global.currentplayer] != -1){
			players[global.currentplayer].boilerBucks -= 3;
			OBJ_Points.image_index = 1;
			OBJ_Points.visible = true;
			while (OBJ_Points.image_alpha > 0){
				OBJ_Points.image_alpha -= 0.05;
			}
			OBJ_Points.visible = false;
			OBJ_Points.image_alpha = 100;
		}
	}
	//Add else statements to help with what you want the space to do and make up your own keywords
	//Set spaceType in each space to represent the type of space you have and in the if, add what you want
	//to happen in the event the player ends on that space
}
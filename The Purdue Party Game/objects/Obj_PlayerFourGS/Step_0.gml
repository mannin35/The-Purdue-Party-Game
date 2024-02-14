/// @description Insert description here
// You can write your code in this editor

if(!disabled){
	//Triangle button
	var button_y = gamepad_button_check(7,gp_face4);
	if(button_y){
		var newSpriteSet = false;
		global.playersUsed[playerIndex] = 0;
		while(!newSpriteSet){
			playerIndex++;
			if(playerIndex == 8){
				playerIndex	= 0;
			}
			if(global.playersUsed[playerIndex] == 0){
				Obj_PlayerFourGS.image_index = playerIndex;
				global.playersUsed[playerIndex] = 1;
				newSpriteSet = true;	
			}
		}
	}
}

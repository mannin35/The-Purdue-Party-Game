/// @description Insert description here
// You can write your code in this editor
///show_debug_message(disabled)
//show_debug_message(global.playercontrollerindices)
if(!disabled){
	//Triangle button
	var button_y = gamepad_button_check_pressed(global.playercontrollerindices[1], gp_face4);
	//show_debug_message(button_y)
	if(button_y){
		var newSpriteSet = false;
		global.playersUsed[playerIndex] = 0;
		while(!newSpriteSet){
			playerIndex++;
			if(playerIndex == 8){
				playerIndex	= 0;
			}
			if(global.playersUsed[playerIndex] == 0){
				Obj_PlayerTwoGS.image_index = playerIndex;
				global.playersUsed[playerIndex] = 1;
				global.playerTwoIndex = playerIndex;
				newSpriteSet = true;	
			}
		}
	}
}

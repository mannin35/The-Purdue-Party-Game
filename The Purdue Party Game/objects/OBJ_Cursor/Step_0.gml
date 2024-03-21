/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Current player: {0}", global.playercontrollerindices[global.currentplayer])
playerIndex = global.currentplayer;
buttonCircle = gamepad_button_check_pressed(global.playercontrollerindices[playerIndex], gp_face2)
xButton = gamepad_button_check_pressed(global.playercontrollerindices[playerIndex], gp_face1)
right = gamepad_axis_value(global.playercontrollerindices[playerIndex], gp_axislh) > deadzone
left = gamepad_axis_value(global.playercontrollerindices[playerIndex], gp_axislh) < -deadzone
if(buttonCircle){
	room_goto(RM_LocalView);
	global.localPlayers[playerIndex].alarm[0] = 120;
}

//Cursor movement
if(!moved){
	if(x == 284 && right){						//Moving right at swap
		if(OBJ_DoubleStore.visible){			//Goes to double
			x = 354;	
			OBJ_StoreText.image_index = 1
		} else if (OBJ_SlowStore.visible){		//Goes to slow down
			x = 424;
			OBJ_StoreText.image_index = 2
		}
		moved = true;
	} else if (x == 354 && right){				//Moving right at double
		if (OBJ_SlowStore.visible){				//Goes to slow down
			x = 424;
			OBJ_StoreText.image_index = 2
		}
		moved = true
	} else if (x == 424 && left){				//Moving left at slow down
		if(OBJ_DoubleStore.visible){			//Goes to double
			x = 354;
			OBJ_StoreText.image_index = 1
		} else if (OBJ_SwapStore.visible){		//Goes to swap
			x = 284;
			OBJ_StoreText.image_index = 0
		}
		moved = true;
	} else if (x == 354 && left){				//Moving left at double
		if (OBJ_SwapStore.visible){				//Goes to swap
			x = 284;
			OBJ_StoreText.image_index = 0
		}
		moved = true
	}
}

//Purchase processing
if(xButton && x == 284 && players[playerIndex].boilerBucks >= 20){
	OBJ_SwapStore.visible = false;
	players[playerIndex].boilerBucks = players[playerIndex].boilerBucks - 20;
	players[playerIndex].items[0]++;
	OBJ_StoreText.image_index = 3;
} else if(xButton && x == 354 && players[playerIndex].boilerBucks >= 15){
	OBJ_DoubleStore.visible = false;
	players[playerIndex].boilerBucks = players[playerIndex].boilerBucks - 15;
	 players[playerIndex].items[1]++;
	OBJ_StoreText.image_index = 3;
} else if(xButton && x == 424 && players[playerIndex].boilerBucks >= 10){
	OBJ_SlowStore.visible = false;
	players[playerIndex].boilerBucks = players[playerIndex].boilerBucks - 10;
	 players[playerIndex].items[2]++;
	OBJ_StoreText.image_index = 3
}

//Allows reset of movement
if(gamepad_axis_value(global.playercontrollerindices[playerIndex], gp_axislh) < deadzone && gamepad_axis_value(global.playercontrollerindices[playerIndex], gp_axislh) > -deadzone){
	moved = false;
}



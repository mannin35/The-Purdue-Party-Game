/// @description Insert description here
// You can write your code in this editor
players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local]

if(visible || inUse){
	if(!global.localPlayers[global.currentplayer].isCPU){
		if(players[global.currentplayer].boilerBucks < 10){
			image_index = 1;
		} else {
			image_index = 0;	
		}
		x = players[global.currentplayer].x;
		y =  players[global.currentplayer].y;
	
	
		//To Exit
		if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)){
			visible = false;	
			alarm[0] = 180;
			inUse = false;
		}
	
		//To ride bus but only if not broke
		if(image_index == 0){
			if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)){
				visible = false;
				OBJ_BusLocal.visible = true;
				global.localPlayers[global.currentplayer].boilerBucks -= 10;
				OBJ_BusLocal.x = players[global.currentplayer].x-256;
				OBJ_BusLocal.y =  players[global.currentplayer].y;
				inUse = false;
				//Code to ride bus
				//show_debug_message("Ride that bus")
			}
		}
	} else {
		randomize();
		randomInt = irandom_range(1,2);
		if(randomInt == 1 && global.localPlayers[global.currentplayer].boilerBucks >= 10){
				OBJ_BusLocal.visible = true;
				global.localPlayers[global.currentplayer].boilerBucks -= 10;
				OBJ_BusLocal.x = players[global.currentplayer].x-256;
				OBJ_BusLocal.y =  players[global.currentplayer].y;
		} else {
			alarm[0] = 180;
		}
		inUse = false;
	}
	
}






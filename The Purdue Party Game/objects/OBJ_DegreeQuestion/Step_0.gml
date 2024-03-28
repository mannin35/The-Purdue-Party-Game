/// @Prompt for player obtaining degreOBJ_Player.waitForDegree = false;
if (!alarmsSet) {
	if (currentPlayer.boilerBucks < cost) {
		image_index = 1;
	}
	else {
		image_index = buyIndex;	
	}
	if (!currentPlayer.isCPU) {
		//To Exit
		if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)) {
			OBJ_Player.waitForDegree = false;
			instance_destroy();
		}
		//To buy degree but only if not broke
		if (image_index == buyIndex) {
			if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)) {
				alarm[2] = 1;
				alarmsSet = true;
			}
		}
	}
	else {
		if (image_index = 0) {
			// Buy a degree
			alarm[2] = 60;
		}
		else {
			// Exit
			alarm[1] = 60;
		}
		alarmsSet = true;
	}
}





















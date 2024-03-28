/// @Prompt for player obtaining degreOBJ_Player.waitForDegree = false;
if (currentPlayer.boilerBucks < cost) {
	image_index = 1;
}
else {
	image_index = 0;	
}
if (!currentPlayer.isCPU) {
	//To Exit
	if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)) {
		OBJ_Player.waitForDegree = false;
		instance_destroy();
	}
	//To buy degree but only if not broke
	if (image_index == 0) {
		if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)) {
			OBJ_Player.waitForDegree = false;
			// Give degree and subtract BB
			currentPlayer.degrees++;
			currentPlayer.boilerBucks -= cost
			if (!permanent) {
				instance_destroy(OBJ_DegreeLogic.degreeLocal);
				instance_destroy(OBJ_DegreeLogic.degreeFull);
				OBJ_DegreeLogic.createRandomDegree();
			}
			instance_destroy();
		}
	}
}
else if (!alarmsSet) {
	if (image_index = 0) {
		// Buy a degree
		alarm[0] = 60;
	}
	else {
		// Exit
		alarm[1] = 60;
	}
	alarmsSet = true;
}






















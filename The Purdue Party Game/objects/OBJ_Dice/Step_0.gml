/// @Check for input
index = global.currentplayer;
global.isStartOfGame = false;
if (global.slowDice && !hasPressed) {
	image_speed = 0.06;
} else if(!hasPressed){
	image_speed = 1;
}
if (!hasPressed) {
	var button_x = (keyboard_check_pressed(vk_space)) || 
			(gamepad_button_check_pressed(global.playercontrollerindices[index],gp_face1));
	var button_back = gamepad_button_check_pressed(global.playercontrollerindices[index],gp_face2);
	if (button_x) {
		hasPressed = true;
		/// @Stop dice from rolling
		image_speed = 0;
		if(global.doubleDice) {
			alarm[0] = 60;
		} else {
			alarm[0] = 30;
		}
	}
	else if (button_back) {
		instance_destroy();
		OBJ_RollDiceButton.current = true;
	}
}




















// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckButtonState(button){
	//update sprite if current and check for input
	//update sprite to reflect activity
	button.left_key = 0;
	button.right_key = 0;
	if(button.current) {
		button.image_index = 1;	
		//checks for moving to the left and pressing button
		if (!global.delayInput) {
			var index = global.currentplayer;
			var player = global.localPlayers[index];
			var input = global.playercontrollerindices[index];
			// Check if player is cpu or not
			// Player is cpu if playercontrollerinces[index] = -1;
			if (!player.isCPU) {
				button.left_key = (keyboard_check_pressed(vk_left)) || 
					(gamepad_axis_value(input, gp_axislh) < -dead_zone) ;
				button.right_key = (keyboard_check_pressed(vk_right)) ||
					(gamepad_axis_value(input, gp_axislh) > dead_zone);
				if (button != OBJ_ViewScoreboardButton) {
					button.button_x =(keyboard_check_pressed(vk_space)) ||
						(gamepad_button_check_pressed(input, gp_face1));
				}
			}
			else {
				// Initiate cpu rolling dice
				global.delayInput = true;
				// Prevent input for a few seconds
				OBJ_LocalButtonInfo.alarm[0] = 120;
				OBJ_LocalButtonInfo.alarm[1] = 45;
			}
		}
	}
	else {
		button.image_index = 0;	
	}
}
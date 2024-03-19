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
		/*
		TODO FOR ALL INPUT
		CHANGE INDEX 0 TO CURRENT PLAYER
		*/
		show_debug_message(button)
		show_debug_message("Left: {0} Right: {1}", button.left_key, button.right_key)
		if (!global.delayInput) {
			dead_zone = .2
			var index = 0;
			var input = gamepad_axis_value(global.playercontrollerindices[index], gp_axislh);
			button.left_key = (keyboard_check_pressed(vk_left)) || 
				(gamepad_axis_value(global.playercontrollerindices[index], gp_axislh) < -dead_zone) ;
			button.right_key = (keyboard_check_pressed(vk_right)) ||
				(gamepad_axis_value(global.playercontrollerindices[index], gp_axislh) > dead_zone);
			if (button != OBJ_ViewScoreboardButton) {
				button.button_x =(keyboard_check_pressed(vk_space)) ||
					(gamepad_button_check_pressed(global.playercontrollerindices[index],gp_face1));
			}
	
			
		}
	}
	else {
		button.image_index = 0;	
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CheckButtonState(button){
	//update sprite if current and check for input
	//update sprite to reflect activity
	if(button.current) {
		button.image_index = 1;	
		//checks for moving to the left and pressing button
		button.left_key = keyboard_check_pressed(vk_left);
		button.right_key = keyboard_check_pressed(vk_right);
		button.button_x = keyboard_check_pressed(vk_space);
		//var left_key = gamepad_axis_value(4,gp_axislh);
		//var button_x = gamepad_button_check_pressed(4, gp_face1);
	}
	else {
		button.image_index = 0;	
	}

	/*
	TO ADD: ENSURING INPUT ONLY FROM CURRENT PLAYER COUNTS
	*/


}
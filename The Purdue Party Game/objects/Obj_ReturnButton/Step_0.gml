/// @description Checks for Button movement
// You can write your code in this editor
// checks for moving up down, left, and right, and for select button pushes
var dead_zone = .2;
var key_right = (gamepad_axis_value(4, gp_axislh) > dead_zone) || keyboard_check_pressed(vk_right)
var key_left = (gamepad_axis_value(4, gp_axislh) < -dead_zone) || keyboard_check_pressed(vk_left)
var key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone) || keyboard_check_pressed(vk_up)
var key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone) || keyboard_check_pressed(vk_down)
var button_x = (gamepad_button_check_pressed(4,gp_face1)) || keyboard_check_pressed(vk_space);


//Go to the next CPU difficulty
if(room == RM_CPUSettings){
if((Obj_ReturnButton.current) && key_up && global.realPlayerCount == 4){
	current = false;
	image_index--;
	Obj_LeftArrow.current = true;
	Obj_LeftArrow.image_index++;
} else if(key_up && Obj_ReturnButton.current && (global.realPlayerCount != 4)){
		global.isMoving = true;
		current = false;
		image_index--;
		Obj_PlayerOneHard.current = true;
		Obj_PlayerOneHard.image_index = 5;
}
} else if (room == RM_About && button_x) {
	room_goto(RM_Title);
} else if (room == RM_Settings && button_x && Obj_ReturnButton.current) {
	room_goto(RM_Title);
} else {
	if(key_up && Obj_ReturnButton.current){
		current = false;
		image_index--;
		Obj_LeftArrow.current = true;
		Obj_LeftArrow.image_index++;
	}
}
//show_debug_message("{0}\n", button_x);
//Moves to continue button
if((Obj_ReturnButton.current) && (key_right)){
	image_index = 0;
	Obj_ContinueButton.current = true;
	Obj_ContinueButton.image_index = 1;
	Obj_ReturnButton.current = false;
}


//Return is pressed and goes back to main menu
	if ((Obj_ReturnButton.current) && button_x) {
		if(room == RM_CPUSettings){
			room_goto(RM_Title);
		} else if(room == RM_GameSettings){
			room_goto(RM_CPUSettings);	
		}
		Obj_ReturnButton.current = false;
	}

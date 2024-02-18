/// @description Checks for Button movement
// You can write your code in this editor
//Checks for moving to the right
var right_key = (gamepad_axis_value(4, gp_axislh) > dead_zone);
//Checks for moving up
var up_key = (gamepad_axis_value(4, gp_axislv) < -dead_zone);
var button_x = (gamepad_button_check_pressed(4,gp_face1));


//Go to the next CPU difficulty
if(room == RM_CPUSettings){
if((Obj_ReturnButton.current) && up_key && global.realPlayerCount == 4){
	current = false;
	image_index--;
	Obj_LeftArrow.current = true;
	Obj_LeftArrow.image_index++;
} else if(up_key && Obj_ReturnButton.current && (global.realPlayerCount != 4)){
		global.isMoving = true;
		current = false;
		image_index--;
		Obj_PlayerOneHard.current = true;
		Obj_PlayerOneHard.image_index = 5;
}
} else{
	if(up_key && Obj_ReturnButton.current){
		current = false;
		image_index--;
		Obj_LeftArrow.current = true;
		Obj_LeftArrow.image_index++;
	}
}
//show_debug_message("{0}\n", button_x);
//Moves to continue button
if((Obj_ReturnButton.current) && (right_key)){
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

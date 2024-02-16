/// @description Checks for Button movement
// You can write your code in this editor
//Checks for moving to the right
var right_key = (gamepad_axis_value(4, gp_axislh) > dead_zone);
//Checks for moving up
var up_key = (gamepad_axis_value(4, gp_axislv) < -dead_zone);
var button_x = (gamepad_button_check_pressed(4,gp_face1));


//Go to the next CPU difficulty

if((Obj_ReturnButton.current) && up_key && global.realPlayerCount == 4){
	current = false;
	image_index--;
	Obj_LeftArrow.current = true;
	Obj_LeftArrow.image_index++;
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
show_debug_message("CanReturn: {0}", current);
	if ((Obj_ReturnButton.current) && button_x) {
		if(room == RM_CPUSettings){
			room_goto(RM_Title);
		} else if(room == RM_GameSettings){
			room_goto(RM_CPUSettings);	
		}
		Obj_ReturnButton.current = false;
	}

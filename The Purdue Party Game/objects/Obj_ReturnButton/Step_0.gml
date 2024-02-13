/// @description Checks for Button movement
// You can write your code in this editor
//Checks for moving to the right
var right_key = (gamepad_axis_value(4, gp_axislh) > dead_zone);
//Checks for moving up
var up_key = (gamepad_axis_value(4, gp_axislv) > dead_zone);
var button_x = (gamepad_button_check(4,gp_face1));


//Go to the next CPU difficulty
if((Obj_ReturnButton.current) && up_key){

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
//show_debug_message("CanReturn: {0}", canReturn);
if(canReturn){
	if ((Obj_ReturnButton.current) && button_x) {
		room_goto(RM_Title);
		Obj_ReturnButton.current = false;
	}
}
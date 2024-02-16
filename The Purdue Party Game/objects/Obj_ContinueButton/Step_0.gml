/// @description Checks for movement
// You can write your code in this editor
var dead_zone = .2;

//Checks for moving to the left
var left_key = (gamepad_axis_value(4, gp_axislh) < -dead_zone);
//Checks for moving up
var up_key = (gamepad_axis_value(4, gp_axislv) < -dead_zone);

var button_x = (gamepad_button_check_pressed(4,gp_face1));

if(up_key  && Obj_ContinueButton.current && (global.realPlayerCount == 4)){
	show_debug_message("going up")
	current = false;
	image_index--;
	Obj_RightArrow.current = true;
	Obj_RightArrow.image_index++;
}

if(left_key && Obj_ContinueButton.current){
	//Return Button
	Obj_ReturnButton.current = true;
	image_index = 0;
	Obj_ReturnButton.image_index = 1;
	Obj_ContinueButton.current = false;
}

if(button_x  && Obj_ContinueButton.current){
		if(room == RM_CPUSettings){
			Obj_ReturnButton.current = true;
			room_goto(RM_GameSettings);
		} else if(room == RM_GameSettings){
			room_goto(RM_LocalView);	
		}
		Obj_ReturnButton.current = false;
}



/// @description Insert description here
// You can write your code in this editor

var key_right = (gamepad_axis_value(4, gp_axislh) > dead_zone)
var button_x = (gamepad_button_check_pressed(4,gp_face1));
var key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)

//Checks if more players can be removed, if so, cheanges UI
if(current && button_x && (global.realPlayerCount != 0) && room == RM_CPUSettings){
	global.realPlayerCount--;
	Obj_PlayerNumber.image_index--;
}

if(current && button_x && room == RM_GameSettings && (global.turns != 10)){
	global.turns -= 5;
	Obj_TurnNumber.image_index--;
}
//Moves down to return button/CPU settings
if(room == RM_CPUSettings){
if((global.realPlayerCount == 4) && key_down && current){
	current = false;
	image_index--;
	Obj_ReturnButton.image_index++;
	Obj_ReturnButton.current = true;
} else if (key_down && current){
	current = false;
	image_index--;
	Obj_PlayerOneEasy.current = true;
	Obj_PlayerOneEasy.image_index = 1;
	global.isMoving = true;
}
} else {
	if(key_down && current){
		current = false;
		image_index--;
		Obj_ReturnButton.image_index++;
		Obj_ReturnButton.current = true;
	}
}

//Shifts to right arrow
if(current && key_right){
	image_index = 0;
	Obj_RightArrow.image_index++;
	current = false;
	Obj_RightArrow.current = true;
}

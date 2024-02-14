/// @description Insert description here
// You can write your code in this editor

var key_right = (gamepad_axis_value(4, gp_axislh) > dead_zone)
var button_x = (gamepad_button_check(4,gp_face1));

//Checks if more players can be removed, if so, cheanges UI
if(current && button_x && (global.realPlayerCount != 0)){
	global.realPlayerCount++;
	Obj_PlayerNumber.image_index--;

}

//Shifts to right arrow
if(current && key_right){
	image_index = 0;
	Obj_RightArrow.image_index++;
	current = false;
	Obj_RightArrow.current = true;
}

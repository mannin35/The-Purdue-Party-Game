/// @description Insert description here
// You can write your code in this editor

var key_left = (gamepad_axis_value(4, gp_axislh) < -dead_zone)
var button_x = (gamepad_button_check(4,gp_face1));

//Checks if more players can be added, if so, cheanges UI

if(current && button_x && (global.realPlayerCount != 4)){
	global.realPlayerCount--;
	Obj_PlayerNumber.image_index--;
}

//Shifts to left arrow
if(canIncrease){
if(current && key_left){
	canIncrease = false
	image_index = 0;
	Obj_LeftArrow.image_index++;
	current = false;
	Obj_LeftArrow.current = true;
	alarm_set(0,15);
}
}

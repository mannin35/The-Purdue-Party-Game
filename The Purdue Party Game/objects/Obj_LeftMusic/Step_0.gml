/// @description Insert description here
// You can write your code in this editor
var dead_zone = .2;
var key_right = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone)
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));
var key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone)

//Change music volume
if (!global.isMoving) {
	if(current && button_x) {
	
	}

	if(key_down && current){
		current = false;
		image_index--;
		Obj_LeftSFX.image_index++;
		Obj_LeftSFX.current = true;
		global.isMoving = true;
	}

	//Shifts to right arrow
	if(current && key_right){
		image_index--;
		Obj_RightMusic.image_index++;
		current = false;
		Obj_RightMusic.current = true;
		global.isMoving = true;
	}
}

if(gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislv) > -dead_zone
&& gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > -dead_zone){
	global.isMoving = false;	
}
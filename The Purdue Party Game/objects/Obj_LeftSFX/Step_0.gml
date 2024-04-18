/// @description Insert description here
// You can write your code in this editor
var dead_zone = .2;
var key_right = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone)
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));
var key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone)
var key_up = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone)

if (!global.isMoving) {
	//Change music volume
	if(current && button_x) {
		if(OBJ_SFXVol.image_index > 0) {
			OBJ_SFXVol.image_index--;
			global.SFX_volume-=5;
		}
	}

	if(key_down && current){
		current = false;
		image_index--;
		Obj_ReturnButton.image_index++;
		Obj_ReturnButton.current = true;
		global.isMoving = true;
	}
	if(key_up && current) {
		current = false;
		image_index--;
		Obj_LeftMusic.image_index++;
		Obj_LeftMusic.current = true;
		global.isMoving = true;
	}

	//Shifts to right arrow
	if(current && key_right){
		image_index = 0;
		Obj_RightSFX.image_index++;
		current = false;
		Obj_RightSFX.current = true;
		global.isMoving = true;
	}
}

if(gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislv) > -dead_zone
&& gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > -dead_zone){
	global.isMoving = false;	
}
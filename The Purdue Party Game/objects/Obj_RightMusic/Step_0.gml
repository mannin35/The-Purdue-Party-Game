
/// @description Insert description here
// You can write your code in this editor
var dead_zone = .2;
var key_left = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone)
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));
var key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone);

if (!global.isMoving) {
	//Change sfx volume
	if(current && button_x) {
		if(OBJ_MusicVol.image_index < 20) {
			OBJ_MusicVol.image_index++;
			global.music_volume+=5;
			audio_group_set_gain(audiogroup_default, global.music_volume * .01, 0 )
		}
	}

	if(key_down && current){
		current = false;
		image_index--;
		Obj_RightSFX.image_index++;
		Obj_RightSFX.current = true;
		global.isMoving = true;
	}

	//Shifts to right arrow
	if(current && key_left){
		image_index--;
		Obj_LeftMusic.image_index++;
		current = false;
		Obj_LeftMusic.current = true;
		global.isMoving = true;
	}
}

if(gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislv) > -dead_zone
&& gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > -dead_zone){
	global.isMoving = false;	
}
/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1) 
	|| gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face2)
	|| gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face3)
	|| gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face4)
	|| gamepad_button_check_pressed(global.playercontrollerindices[1],gp_face1) 
	|| gamepad_button_check_pressed(global.playercontrollerindices[1],gp_face2)
	|| gamepad_button_check_pressed(global.playercontrollerindices[1],gp_face3)
	|| gamepad_button_check_pressed(global.playercontrollerindices[1],gp_face4)
	|| gamepad_button_check_pressed(global.playercontrollerindices[2],gp_face1) 
	|| gamepad_button_check_pressed(global.playercontrollerindices[2],gp_face2)
	|| gamepad_button_check_pressed(global.playercontrollerindices[2],gp_face3)
	|| gamepad_button_check_pressed(global.playercontrollerindices[2],gp_face4)
	|| gamepad_button_check_pressed(global.playercontrollerindices[3],gp_face1) 
	|| gamepad_button_check_pressed(global.playercontrollerindices[3],gp_face2)
	|| gamepad_button_check_pressed(global.playercontrollerindices[3],gp_face3)
	|| gamepad_button_check_pressed(global.playercontrollerindices[3],gp_face4)) {
	audio_play_sound(SFX_Select, 0, false, global.SFX_volume / 100);
	}



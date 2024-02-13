/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

key_right = (gamepad_axis_value(4, gp_axislh) > 0)
if key_right {
	Obj_PlayGameButton.current = false
	image_index = 0;
	Obj_AboutButton.current = true;
	Obj_AboutButton.image_index = 1;
}
if (Obj_PlayGameButton.current) && (gamepad_button_check(4,gp_face1)) {
	goto(RM_CPUSettings)
}


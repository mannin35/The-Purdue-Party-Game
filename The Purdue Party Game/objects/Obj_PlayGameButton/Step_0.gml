/// @description Checks for button movement

var dead_zone = .2;
var key_right = (gamepad_axis_value(4, gp_axislh) > dead_zone)
var button_x = (gamepad_button_check_pressed(4,gp_face1));

//show_debug_message("{0} {1}\n", button_x, Obj_PlayGameButton.current);

if key_right {
	Obj_PlayGameButton.current = false;
	image_index = 0;
	Obj_AboutButton.current = true;
	Obj_AboutButton.image_index = 1;
}

if ((Obj_PlayGameButton.current) && button_x) {
	Obj_PlayGameButton.current = false;
	room_goto(RM_CPUSettings);
}




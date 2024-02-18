/// @description Checks for button movement

// checks for moving up down, left, and right, and for select button pushes
var dead_zone = .2;
var key_right = (gamepad_axis_value(4, gp_axislh) > dead_zone) || keyboard_check_pressed(vk_right)
var key_left = (gamepad_axis_value(4, gp_axislh) < -dead_zone) || keyboard_check_pressed(vk_left)
var key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone) || keyboard_check_pressed(vk_up)
var key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone) || keyboard_check_pressed(vk_down)
var button_x = (gamepad_button_check(4,gp_face1)) || keyboard_check_pressed(vk_space);

//show_debug_message("{0} {1}\n", button_x, Obj_PlayGameButton.current);

if Obj_SettingsButton.current {
if key_right {
	Obj_SettingsButton.current = false;
	image_index = 0;
	Obj_ExitButton.current = true;
	Obj_ExitButton.image_index = 1;
}
else if key_up {
	Obj_SettingsButton.current = false;
	image_index = 0;
	Obj_PlayGameButton.current = true;
	Obj_PlayGameButton.image_index = 1;
}
/*else if key_right && key_up {
	Obj_SettingsButton.current = false;
	image_index = 0;
	Obj_AboutButton.current = true;
	Obj_AboutButton.image_index = 1;
}*/
if ((Obj_SettingsButton.current) && button_x) {
	Obj_SettingsButton.current = false;
	room_goto(RM_Settings);
}
}


/// @description Checks for button movement

// checks for moving up down, left, and right, and for select button pushes
var dead_zone = .2;
var key_right = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone) || keyboard_check_pressed(vk_right)
var key_left = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone) || keyboard_check_pressed(vk_left)
var key_up = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone) || keyboard_check_pressed(vk_up)
var key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone) || keyboard_check_pressed(vk_down)
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1)) || keyboard_check_pressed(vk_space);

//show_debug_message("{0} {1}\n", button_x, Obj_PlayGameButton.current);
if Obj_AboutButton.current {
if key_left {
	Obj_AboutButton.current = false;
	image_index = 0;
	Obj_PlayGameButton.current = true;
	Obj_PlayGameButton.image_index = 1;
}
else if key_down {
	Obj_AboutButton.current = false;
	image_index = 0;
	Obj_ExitButton.current = true;
	Obj_ExitButton.image_index = 1;
}
/*else if key_left && key_down {
	Obj_AboutButton.current = false;
	image_index = 0;
	Obj_SettingsButton.current = true;
	Obj_SettingsButton.image_index = 1;
}*/
if ((Obj_AboutButton.current) && button_x) {
	Obj_AboutButton.current = false;
	room_goto(RM_About);
}
}


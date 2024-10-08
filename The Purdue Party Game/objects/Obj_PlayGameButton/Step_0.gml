/// @description Checks for button movement

// checks for moving up down, left, and right, and for select button pushes
var dead_zone = .2;
var key_right = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone) || keyboard_check_pressed(vk_right)
var key_left = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone) || keyboard_check_pressed(vk_left)
var key_up = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone) || keyboard_check_pressed(vk_up)
var key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone) || keyboard_check_pressed(vk_down)
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1)) || keyboard_check_pressed(vk_space);
var button_start = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_start)) 
if (button_start) {
	show_message("YAY");
}
//show_debug_message("{0} {1}\n", button_x, Obj_PlayGameButton.current);
if (Obj_PlayGameButton.current) {
	if key_right {
		Obj_PlayGameButton.current = false;
		image_index = 0;
		Obj_AboutButton.current = true;
		Obj_AboutButton.image_index = 1;
	}
	else if key_down {
		Obj_PlayGameButton.current = false;
		image_index = 0;
		Obj_SettingsButton.current = true;
		Obj_SettingsButton.image_index = 1;
	}
	/*else if key_right && key_down {
		Obj_PlayGameButton.current = false;
		image_index = 0;
		Obj_ExitButton.current = true;
		Obj_ExitButton.image_index = 1;
	}*/
}
if (Obj_PlayGameButton.current && button_x) {
	if(file_exists("save.txt")){
		//Prompt
		current = false;
		OBJ_LoadPrompt.visible = true;
	} else {
		Obj_PlayGameButton.current = false;
		//transition to RM_CPUSettings
		//room_goto(RM_CPUSettings);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_CPUSettings;
		}	
	}
}





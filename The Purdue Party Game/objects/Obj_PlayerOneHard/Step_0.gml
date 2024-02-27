/// @description Insert description here
// You can write your code in this editor
dead_zone = .2;
key_up = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));
key_right = (gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > dead_zone)


if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerOneMed.current = true;
		Obj_PlayerOneHard.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneMed.image_index = 3
	} else if(key_down){
		current = false;
		Obj_ReturnButton.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_ReturnButton.image_index++;
	} else if(key_right && Obj_PlayerTwoHard.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerTwoHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoHard.image_index = 5;
	}
	if(button_x){
		selected = true;
		Obj_PlayerOneEasy.selected = false;
		Obj_PlayerOneEasy.image_index = 0;
		Obj_PlayerOneMed.selected = false;
		Obj_PlayerOneMed.image_index = 2;
		global.difficultyOne = 2;
	}
}
if(gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislv) > -dead_zone
&& gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > -dead_zone){
	global.isMoving = false;	
}




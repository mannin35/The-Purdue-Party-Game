dead_zone = .2;
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_right = (gamepad_axis_value(4,gp_axislh) > dead_zone)
key_left = (gamepad_axis_value(4,gp_axislh) < -dead_zone)


if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerThreeMed.current = true;
		Obj_PlayerThreeHard.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeMed.image_index = 3
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerTwoHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoHard.image_index = 5;
	} else if(key_down){
		current = false;
		Obj_ContinueButton.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_ContinueButton.image_index++;
	} else if(key_right && Obj_PlayerFourHard.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerFourHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerFourHard.image_index = 5;
	}
	if(button_x){
		selected = true;
		Obj_PlayerThreeEasy.selected = false;
		Obj_PlayerThreeEasy.image_index = 0;
		Obj_PlayerThreeMed.selected = false;
		Obj_PlayerThreeMed.image_index = 2;
		global.difficultyThree = 2;
	}
}
if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}

dead_zone = .2;
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_right = (gamepad_axis_value(4,gp_axislh) > dead_zone)
key_left = (gamepad_axis_value(4,gp_axislh) < -dead_zone)


if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerTwoMed.current = true;
		Obj_PlayerTwoHard.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoMed.image_index = 3
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerOneHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneHard.image_index = 5;
	} else if(key_down){
		current = false;
		Obj_ReturnButton.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_ReturnButton.image_index++;
	} else if(key_right && Obj_PlayerThreeHard.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerThreeHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeHard.image_index = 5;
	}
	if(button_x){
		selected = true;
		Obj_PlayerTwoEasy.selected = false;
		Obj_PlayerTwoEasy.image_index = 0;
		Obj_PlayerTwoMed.selected = false;
		Obj_PlayerTwoMed.image_index = 2;
		global.difficultyTwo = 2;
	}
}
if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}




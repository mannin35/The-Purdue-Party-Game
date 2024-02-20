/// @description Insert description here
// You can write your code in this editor
dead_zone = .2
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_right = (gamepad_axis_value(4,gp_axislh) > dead_zone)
key_left = (gamepad_axis_value(4,gp_axislh) < -dead_zone)

if(current && !global.isMoving){
	if(key_up){
		Obj_RightArrow.current = true;
		Obj_PlayerThreeEasy.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_RightArrow.image_index++;
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerTwoEasy.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoEasy.image_index = 1;
	} else if(key_down){
		current = false;
		global.isMoving = true;
		Obj_PlayerThreeMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeMed.image_index = 3;
	} else if(key_right && Obj_PlayerFourEasy.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerFourEasy.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerFourEasy.image_index = 1;
	}
	
	if(button_x){
		selected = true;
		Obj_PlayerThreeMed.selected = false;
		Obj_PlayerThreeMed.image_index = 2;
		Obj_PlayerThreeHard.selected = false;
		Obj_PlayerThreeHard.image_index = 4;
		global.difficultyThree = 0;
	}
}

if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}


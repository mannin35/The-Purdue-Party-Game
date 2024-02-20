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
		Obj_LeftArrow.current = true;
		Obj_PlayerTwoEasy.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_LeftArrow.image_index++;
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerOneEasy.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneEasy.image_index = 1;
	} else if(key_down){
		current = false;
		global.isMoving = true;
		Obj_PlayerTwoMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoMed.image_index = 3;
	} else if(key_right && Obj_PlayerThreeEasy.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerThreeEasy.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeEasy.image_index = 1;
	}
	
	if(button_x){
		selected = true;
		Obj_PlayerTwoMed.selected = false;
		Obj_PlayerTwoMed.image_index = 2;
		Obj_PlayerTwoHard.selected = false;
		Obj_PlayerTwoHard.image_index = 4;
		global.difficultyTwo = 0;
	}
}

if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}


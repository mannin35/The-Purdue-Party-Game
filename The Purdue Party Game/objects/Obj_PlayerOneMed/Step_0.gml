/// @description Insert description here
// You can write your code in this editor
dead_zone = .2;
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone);
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone);
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_right = (gamepad_axis_value(4,gp_axislh) > dead_zone);


if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerOneEasy.current = true;
		Obj_PlayerOneMed.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneEasy.image_index = 1;
	} else if(key_right && Obj_PlayerTwoMed.visible){
		current = false;
		global.isMoving = true;
		Obj_PlayerTwoMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoMed.image_index = 3;
	} else if(key_down){
		current = false;
		global.isMoving = true;
		Obj_PlayerOneHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneHard.image_index = 5;
	}
	
	if(button_x){
		selected = true;
		Obj_PlayerOneEasy.selected = false;
		Obj_PlayerOneEasy.image_index = 0;
		Obj_PlayerOneHard.selected = false;
		Obj_PlayerOneHard.image_index = 4;
		global.difficultyOne = 1;
	}
}
if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}

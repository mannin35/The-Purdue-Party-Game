/// @description Insert description here
// You can write your code in this editor
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_right = (gamepad_axis_value(4,gp_axislh) > dead_zone)

if(current && !global.isMoving){
	if(key_up){
		Obj_LeftArrow.current = true;
		Obj_PlayerOneEasy.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_LeftArrow.image_index++;
	} else if(key_right && Obj_PlayerTwoEasy.visible){
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
		Obj_PlayerOneMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneMed.image_index = 3;
	}
	
	if(button_x){
		selected = true;
		Obj_PlayerOneMed.selected = false;
		Obj_PlayerOneMed.image_index = 2;
		Obj_PlayerOneHard.selected = false;
		Obj_PlayerOneHard.image_index = 4;
		global.difficultyOne = 0;
	}
}
if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}

/// @description Insert description here
// You can write your code in this editor
dead_zone = .2
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_left = (gamepad_axis_value(4,gp_axislh) < -dead_zone)

if(current && !global.isMoving){
	if(key_up){
		Obj_RightArrow.current = true;
		Obj_PlayerFourEasy.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_RightArrow.image_index++;
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerThreeEasy.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeEasy.image_index = 1;
	} else if(key_down){
		current = false;
		global.isMoving = true;
		Obj_PlayerFourMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerFourMed.image_index = 3;
	}
	if(button_x){
		selected = true;
		Obj_PlayerFourMed.selected = false;
		Obj_PlayerFourMed.image_index = 2;
		Obj_PlayerFourHard.selected = false;
		Obj_PlayerFourHard.image_index = 4;
		global.difficultyFour = 0;
	}
}

if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}


/// @description Insert description here
// You can write your code in this editor
dead_zone = .2
key_up = (gamepad_axis_value(4, gp_axislv) < -dead_zone)
key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone)
button_x = (gamepad_button_check_pressed(4,gp_face1));
key_left = (gamepad_axis_value(4,gp_axislh) < -dead_zone)

if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerFourEasy.current = true;
		Obj_PlayerFourMed.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerFourEasy.image_index = 1;
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerThreeMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerThreeMed.image_index = 3;
	} else if(key_down){
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
		Obj_PlayerFourEasy.selected = false;
		Obj_PlayerFourEasy.image_index = 0;
		Obj_PlayerFourHard.selected = false;
		Obj_PlayerFourHard.image_index = 4;
		global.difficultyFour = 1;
	}
}

if(gamepad_axis_value(4, gp_axislv) < dead_zone && gamepad_axis_value(4,gp_axislv) > -dead_zone
&& gamepad_axis_value(4, gp_axislh) < dead_zone && gamepad_axis_value(4,gp_axislh) > -dead_zone){
	global.isMoving = false;	
}


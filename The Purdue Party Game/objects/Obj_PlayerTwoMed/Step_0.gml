/// @description Insert description here
// You can write your code in this editor
dead_zone = .2;
key_up = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone);
key_down = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone);
button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));
key_right = (gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > dead_zone);
key_left = (gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) < -dead_zone);

if(current && !global.isMoving){
	if(key_up){
		global.isMoving = true;
		Obj_PlayerTwoEasy.current = true;
		Obj_PlayerTwoMed.current = false;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoEasy.image_index = 1;
	} else if(key_left){
		current = false;
		global.isMoving = true;
		Obj_PlayerOneMed.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerOneMed.image_index = 3;	
	} else if(key_right && Obj_PlayerThreeMed.visible){
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
		Obj_PlayerTwoHard.current = true;
		if(!selected){
			image_index--;	
		}
		Obj_PlayerTwoHard.image_index = 5;
	}
	
	if(button_x){
		selected = true;
		Obj_PlayerTwoEasy.selected = false;
		Obj_PlayerTwoEasy.image_index = 0;
		Obj_PlayerTwoHard.selected = false;
		Obj_PlayerTwoHard.image_index = 4;
		global.difficultyTwo = 1;
	}
}
if(gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislv) > -dead_zone
&& gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < dead_zone && gamepad_axis_value(global.playercontrollerindices[0],gp_axislh) > -dead_zone){
	global.isMoving = false;	
}


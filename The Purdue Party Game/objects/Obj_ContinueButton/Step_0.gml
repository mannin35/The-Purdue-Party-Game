/// @description Checks for movement
// You can write your code in this editor
var dead_zone = .2;

//Checks for moving to the left
var left_key = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone);
//Checks for moving up
var up_key = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone);

var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1));

if(room == RM_CPUSettings){
	if(up_key  && Obj_ContinueButton.current && (global.realPlayerCount == 4)){
		current = false;
		image_index--;
		Obj_RightArrow.current = true;
		Obj_RightArrow.image_index++;
	} else if(up_key && Obj_ContinueButton.current){
		global.isMoving = true;
		current = false;
		image_index--;
		if(global.realPlayerCount == 3){
			Obj_PlayerOneHard.current = true;
			Obj_PlayerOneHard.image_index = 5;
		} else if(global.realPlayerCount == 2){
			Obj_PlayerTwoHard.current = true;
			Obj_PlayerTwoHard.image_index = 5;	
		} else if (global.realPlayerCount == 1){
			Obj_PlayerThreeHard.current = true;
			Obj_PlayerThreeHard.image_index = 5;		
		} else {
			Obj_PlayerFourHard.current = true;
			Obj_PlayerFourHard.image_index = 5;		
		}
		
	}
} else {
	if(up_key && Obj_ContinueButton.current){
		current = false;
		image_index--;
		Obj_RightArrow.current = true;
		Obj_RightArrow.image_index++;
	}
}

if(left_key && Obj_ContinueButton.current){
	//Return Button
	Obj_ReturnButton.current = true;
	image_index = 0;
	Obj_ReturnButton.image_index = 1;
	Obj_ContinueButton.current = false;
}

if(button_x  && Obj_ContinueButton.current) {
	if(room == RM_CPUSettings){
		global.CPUSettings = [-1, -1, -1, -1];
		if(global.realPlayerCount == 3) {
			global.CPUSettings[3] = global.difficultyOne;
		}
		if(global.realPlayerCount == 2) {
			global.CPUSettings[2] = global.difficultyOne;
			global.CPUSettings[3] = global.difficultyTwo;
		}
		if(global.realPlayerCount == 1) {
			global.CPUSettings[1] = global.difficultyOne;
			global.CPUSettings[2] = global.difficultyTwo;
			global.CPUSettings[3] = global.difficultyThree;
		}
		if(global.realPlayerCount == 0) {
			global.CPUSettings[0] = global.difficultyOne;
			global.CPUSettings[1] = global.difficultyTwo;
			global.CPUSettings[2] = global.difficultyThree;
			global.CPUSettings[3] = global.difficultyFour;
		}
		Obj_ReturnButton.current = true;
		//transition to RM_GameSettings
		//room_goto(RM_GameSettings);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_GameSettings;
		}
	} else if(room == RM_GameSettings) {
		global.turns = 10 + (5 * Obj_TurnNumber.image_index);
		//transition to RM_LocalView
		//room_goto(RM_LocalView);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_LocalView
		}
	}
	Obj_ReturnButton.current = false;
}



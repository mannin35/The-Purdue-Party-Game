
/// @description Insert description here
// You can write your code in this editor

var key_left = (gamepad_axis_value(4, gp_axislh) < -dead_zone)
var button_x = (gamepad_button_check_pressed(4,gp_face1));
var key_down = (gamepad_axis_value(4, gp_axislv) > dead_zone);

//Checks if more players can be added, if so, cheanges UI

if(current && button_x && (global.realPlayerCount != 4) && room == RM_CPUSettings){
	global.realPlayerCount++;
	Obj_PlayerNumber.image_index++;
}

if(current && button_x && room == RM_GameSettings && (global.turns != 30)){
	global.turns += 5;
	Obj_TurnNumber.image_index++;
}

if(room == RM_CPUSettings){
	if((global.realPlayerCount == 4) && key_down && current){
		current = false;
		image_index--;
		Obj_ReturnButton.image_index++;
		Obj_ReturnButton.current = true;
	} else if (key_down && current){
		current = false;
		image_index--;
		if(global.realPlayerCount == 3){
			Obj_PlayerOneEasy.current = true;
			Obj_PlayerOneEasy.image_index = 1;
		} else if(global.realPlayerCount == 2){
			Obj_PlayerTwoEasy.current = true;
			Obj_PlayerTwoEasy.image_index = 1;	
		} else if (global.realPlayerCount == 1){
			Obj_PlayerThreeEasy.current = true;
			Obj_PlayerThreeEasy.image_index = 1;		
		} else {
			Obj_PlayerFourEasy.current = true;
			Obj_PlayerFourEasy.image_index = 1;		
		}
		global.isMoving = true;
	}
} else {
	if(key_down && current){
		current = false;
		image_index--;
		Obj_ReturnButton.image_index++;
		Obj_ReturnButton.current = true;
	}
}

//Goes down to CPU settings/Return button
if(room == RM_CPUSettings){
if((global.realPlayerCount == 4) && key_down && current){
	current = false;
	image_index--;
	Obj_ContinueButton.image_index++;
	Obj_ContinueButton.current = true;
}
} else {
	if(key_down && current) {
		current = false;
		image_index--;
		Obj_ContinueButton.image_index++;
		Obj_ContinueButton.current = true;
	}
}


//Shifts to left arrow
if(current && key_left){
	image_index = 0;
	Obj_LeftArrow.image_index++;
	current = false;
	Obj_LeftArrow.current = true;
}

//Makes CPU invisible
if(room == RM_CPUSettings){
if(global.realPlayerCount == 0){
	Obj_CPUOneTitle.visible = true;
	Obj_PlayerOneEasy.visible = true
	Obj_PlayerOneMed.visible = true
	Obj_PlayerOneHard.visible = true
	
	Obj_CPUTwoTitle.visible = true;
	Obj_PlayerTwoEasy.visible = true
	Obj_PlayerTwoMed.visible = true
	Obj_PlayerTwoHard.visible = true
	
	Obj_CPUThreeTitle.visible = true;
	Obj_PlayerThreeEasy.visible = true
	Obj_PlayerThreeMed.visible = true
	Obj_PlayerThreeHard.visible = true
	
	Obj_CPUFourTitle.visible = true;
	Obj_PlayerFourEasy.visible = true
	Obj_PlayerFourMed.visible = true
	Obj_PlayerFourHard.visible = true
} else if(global.realPlayerCount == 3){
	Obj_CPUOneTitle.visible = true;
	Obj_PlayerOneEasy.visible = true
	Obj_PlayerOneMed.visible = true
	Obj_PlayerOneHard.visible = true
	
	Obj_CPUTwoTitle.visible = false;
	Obj_PlayerTwoEasy.visible = false
	Obj_PlayerTwoMed.visible = false
	Obj_PlayerTwoHard.visible = false
	
	Obj_CPUThreeTitle.visible = false;
	Obj_PlayerThreeEasy.visible = false
	Obj_PlayerThreeMed.visible = false
	Obj_PlayerThreeHard.visible = false
	
	
	Obj_CPUFourTitle.visible = false;
	Obj_PlayerFourEasy.visible = false
	Obj_PlayerFourMed.visible = false
	Obj_PlayerFourHard.visible = false
} else if(global.realPlayerCount == 2){
	Obj_CPUOneTitle.visible = true;
	Obj_PlayerOneEasy.visible = true
	Obj_PlayerOneMed.visible = true
	Obj_PlayerOneHard.visible = true
	
	Obj_CPUTwoTitle.visible = true;
	Obj_PlayerTwoEasy.visible = true
	Obj_PlayerTwoMed.visible = true
	Obj_PlayerTwoHard.visible = true
	
	Obj_CPUThreeTitle.visible = false;
	Obj_PlayerThreeEasy.visible = false
	Obj_PlayerThreeMed.visible = false
	Obj_PlayerThreeHard.visible = false
	
	Obj_CPUFourTitle.visible = false;
	Obj_PlayerFourEasy.visible = false
	Obj_PlayerFourMed.visible = false
	Obj_PlayerFourHard.visible = false
} else if(global.realPlayerCount == 1){
	Obj_CPUOneTitle.visible = true;
	Obj_PlayerOneEasy.visible = true
	Obj_PlayerOneMed.visible = true
	Obj_PlayerOneHard.visible = true
	
	Obj_CPUTwoTitle.visible = true;
	Obj_PlayerTwoEasy.visible = true
	Obj_PlayerTwoMed.visible = true
	Obj_PlayerTwoHard.visible = true
	
	Obj_CPUThreeTitle.visible = true;
	Obj_PlayerThreeEasy.visible = true
	Obj_PlayerThreeMed.visible = true
	Obj_PlayerThreeHard.visible = true
	
	Obj_CPUFourTitle.visible = false;
	Obj_PlayerFourEasy.visible = false
	Obj_PlayerFourMed.visible = false
	Obj_PlayerFourHard.visible = false
} else {
	Obj_CPUOneTitle.visible = false;
	Obj_PlayerOneEasy.visible = false
	Obj_PlayerOneMed.visible = false
	Obj_PlayerOneHard.visible = false
	
	Obj_CPUTwoTitle.visible = false;
	Obj_PlayerTwoEasy.visible = false
	Obj_PlayerTwoMed.visible = false
	Obj_PlayerTwoHard.visible = false
	
	Obj_CPUThreeTitle.visible = false;
	Obj_PlayerThreeEasy.visible = false
	Obj_PlayerThreeMed.visible = false
	Obj_PlayerThreeHard.visible = false
	
	Obj_CPUFourTitle.visible = false;
	Obj_PlayerFourEasy.visible = false
	Obj_PlayerFourMed.visible = false
	Obj_PlayerFourHard.visible = false
}
}


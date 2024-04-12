/// @description Insert description here
// You can write your code in this editor

//check if player finished
if (place_meeting(x, y, OBJ_BMEFinish) && !over) {
	over = true;
	global.minigameResults[id.playerNum-1] = OBJ_BMEFinish.pos;
	show_debug_message("player " + string(id.playerNum ) +  " pos = " + string(OBJ_BMEFinish.pos));
	OBJ_BMEFinish.pos++;
} else if (OBJ_BMEFinish.started && !over){
	//check if current instance is real player
	if(!global.localPlayers[id.playerNum-1].isCPU) {

		//get current instance's player number, set in instance create event
		controller = global.playercontrollerindices[id.playerNum-1];


		//get current button input
		left_input = gamepad_button_check_pressed(controller, gp_face3);
		right_input = gamepad_button_check_pressed(controller, gp_face2);
		up_input = gamepad_button_check_pressed(controller, gp_face4);
		down_input = gamepad_button_check_pressed(controller, gp_face1);
	
		lastButton = currentButton;
		valid = false;
		if(up_input && !left_input && !right_input && !down_input) {
			valid = true;
			currentButton = 0;
		} else if (!up_input && left_input && !right_input && !down_input) {
			valid = true;
			currentButton = 3;
		} else if (!up_input && !left_input && right_input && !down_input) {
			valid = true;
			currentButton = 1;
		} else if (!up_input && !left_input && !right_input && down_input) {
			valid = true;
			currentButton = 2;
		}
		if(valid) {
			if(OBJ_Buttons.buttonCombo == 1) {
				if((lastButton == 0 && currentButton == 1) || (lastButton == 1 && currentButton == 0)) {
					x = x+5;
				}
			} else if (OBJ_Buttons.buttonCombo == 2) {
				if((lastButton == 0 && currentButton == 2) || (lastButton == 2 && currentButton == 0)) {
					x = x+5;
				}
			} else if (OBJ_Buttons.buttonCombo == 3) {
				if((lastButton == 0 && currentButton == 3) || (lastButton == 3 && currentButton == 0)) {
					x = x+5;
				}
			} else if (OBJ_Buttons.buttonCombo == 4) {
				if((lastButton == 1 && currentButton == 2) || (lastButton == 2 && currentButton == 1)) {
					x = x+5;
				}
			} else if (OBJ_Buttons.buttonCombo == 5) {
				if((lastButton == 1 && currentButton == 3) || (lastButton == 3 && currentButton == 1)) {
					x = x+5;
				}
			} else if (OBJ_Buttons.buttonCombo == 6) {
				if((lastButton == 3 && currentButton == 2) || (lastButton == 2 && currentButton == 3)) {
					x = x+5;
				}
			}
		}
	} else {
		//CPU stuff
		player = id.playerNum-1;
		if(CPUMoved == 0){
			CPUMoved = 1;
			BMECPU(global.CPUSettings[player]);
		}
	}
}
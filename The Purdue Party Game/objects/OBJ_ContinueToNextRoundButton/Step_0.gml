/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;

//var button_x = gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face1);
var button_x = 0;
if(BJ_MGBoilerBucks.counterTwo > 240){
button_x = gamepad_button_check_pressed(0, gp_face1);
}
if (button_x && room == RM_MinigameResults) {
	
	if (global.turns == 1) {
		//room = RM_FinalResults;
		//room_goto(RM_FinalResults);
		//transition to RM_FinalResults
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_FinalResults;
		}
	} else if (global.turns > 1) {
		global.turns--;
		OBJ_PlayerInfo.end_of_round = false;
		OBJ_PlayerInfo.occured = false;
		//room = RM_LocalView;
		//room_goto(RM_LocalView
		OBJ_Player.visible = true;
		//transition to RM_LocalView
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_LocalView;
		}
	}
} else if (button_x && room == RM_FinalResultsDraft) {
	if(!instance_exists(OBJ_Transition)) {
		var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
		inst.target_rm = RM_Title;
	}
}

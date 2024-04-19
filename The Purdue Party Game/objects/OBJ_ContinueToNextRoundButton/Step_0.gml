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
button_x = 0;
if(BJ_MGBoilerBucks.counterTwo > 240){
button_x = gamepad_button_check_pressed(0, gp_face1);
if(global.realPlayerCount == 0){
	if(!xSet){
		button_x = 0;
	} else {
		button_x = 1	
	}
	if(notSet){
		alarm[0] = 120
		notSet = false
	}
}
}
if (button_x && room == RM_MinigameResults) {
	
	if (global.turns == 1) {
		//room = RM_FinalResults;
		//room_goto(RM_FinalResults);
		//transition to RM_FinalResults
		audio_pause_all()
		audio_play_sound(SOUND_Results, 1, false);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_FinalResults;
		}
	} else if (global.turns > 1) {
		//show_debug_message("Turns: {0}", global.turns)
		global.turns = newTurn
		OBJ_PlayerInfo.end_of_round = false;
		OBJ_PlayerInfo.occured = false;
		//room = RM_LocalView;
		//room_goto(RM_LocalView
		OBJ_Player.visible = true;
		//transition to RM_LocalView
		audio_pause_all()
		audio_play_sound(SOUND_Map,1, true)
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

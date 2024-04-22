/// @description Insert description here
// You can write your code in this editor

if(global.minigameOver == 1){
	global.minigameOver = 0
	visible = false;
	if(global.isDemo == 1){
		visible = false;
		if(room == RM_TipsyTunnel){
			//room_goto(RM_TipsyTunnelInstructions)
			//transition to RM_TipsyTunnelInstructions
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_TipsyTunnelInstructions;
			}
		} else if (room == RM_BoilermakerExpress){
			//room_goto(RM_BoilermakerExpressInstructions)
			//transition to RM_BoilerMakerExpressInstructions
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_BoilermakerExpressInstructions;
			}
		} else if (room == RM_ElevenFiftyNine){
			//room_goto(RM_ElevenFiftyNineInstructions);
			//transition to RM_ElevenFiftyNineInstructions
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_ElevenFiftyNineInstructions;
			}
		} else if (room == RM_TimesUp){
			//room_goto(RM_TimesUpInstructions);
			//transition to RM_TimesUpInstructions
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_TimesUpInstructions;
			}
		} else {
			//room_goto(RM_StateStreetInstructions);
			//transition to RM_StateStreetInstructions
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_StateStreetInstructions;
			}
		}
	} else {
		//OBJ_PlayerInfo.end_of_round = false;
		//OBJ_PlayerInfo.occured = false;
		//room_goto(RM_MinigameResults);	
		//transition to RM_MinigameResults
		audio_pause_all()
		audio_play_sound(SOUND_Results, 1, false)
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_MinigameResults;
		}
	}
}


/// @description Insert description here
// You can write your code in this editor

if(global.minigameOver = 1){
	global.minigameOver = 0
	if(global.isDemo = 1){
		visible = false;
		if(room == RM_TipsyTunnel){
			room_goto(RM_TipsyTunnelInstructions)
		} else if (room == RM_BoilermakerExpress){
			room_goto(RM_BoilermakerExpressInstructions)
		} else if (room == RM_ElevenFiftyNine){
			room_goto(RM_ElevenFiftyNineInstructions);
		} else if (room == RM_TimesUp){
			room_goto(RM_TimesUpInstructions);
		} else {
			room_goto(RM_StateStreetInstructions);	
		}
	} else {
		room_goto(RM_MinigameResults);	
	}
}


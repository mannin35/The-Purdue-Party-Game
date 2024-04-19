/// @description Insert description here
// You can write your code in this editor
var key_right = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone) || keyboard_check_pressed(vk_right);
var button_x = (gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face1)) || keyboard_check_pressed(vk_space);

if(global.realPlayerCount == 0){
	key_right = 0;
	button_x = 0;
}

if(current){
	if(key_right){
		current = false;
		Obj_PlayButton.current = true
		Obj_DemoButton.image_index--;
		Obj_PlayButton.image_index++;
	}
	if(button_x){
		global.isDemo = 1;
			if(room == RM_TipsyTunnelInstructions){
				//room_goto(RM_TipsyTunnel);
				//transition to RM_TipsyTunnel
				audio_pause_all()
				audio_play_sound(SOUND_TTT, 1, 0);
				if(!instance_exists(OBJ_Transition)) {
					var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
					inst.target_rm = RM_TipsyTunnel;
				}
			} else if (room == RM_BoilermakerExpressInstructions){
				//room_goto(RM_BoilermakerExpress);
				//transition to RM_BoilermakerExpress
				audio_pause_all()
				audio_play_sound(SOUND_Boilermaker, 1, 0);
				if(!instance_exists(OBJ_Transition)) {
					var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
					inst.target_rm = RM_BoilermakerExpress;
				}
			} else if (room == RM_ElevenFiftyNineInstructions){
				//room_goto(RM_ElevenFiftyNine);
				//transition to RM_ElevenFiftyNine
				audio_pause_all()
				audio_play_sound(SOUND_ElevenFiftyNine, 1, 0);
				if(!instance_exists(OBJ_Transition)) {
					var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
					inst.target_rm = RM_ElevenFiftyNine;
				}
			} else if (room == RM_TimesUpInstructions){
				//room_goto(RM_TimesUp);
				//transition to RM_TimesUp
				audio_pause_all()
				audio_play_sound(SOUND_TimesUp, 1, 0);
				if(!instance_exists(OBJ_Transition)) {
					var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
					inst.target_rm = RM_TimesUp;
				}
			} else {
				//room_goto(RM_StreetMinigame);
				//transition to RM_StreetMinigame
				audio_pause_all()
				audio_play_sound(SOUND_SSS, 1, 0);
				if(!instance_exists(OBJ_Transition)) {
					var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
					inst.target_rm = RM_StreetMinigame;
				}	
			}
	}
}


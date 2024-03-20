/// @description Insert description here
// You can write your code in this editor
var key_right = gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone;
var button_x = gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face1);



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
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_TipsyTunnel;
			}
		} else if (room == RM_BoilermakerExpressInstructions){
			//room_goto(RM_BoilermakerExpress);
			//transition to RM_BoilermakerExpress
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_BoilermakerExpress;
			}
		} else if (room == RM_ElevenFiftyNineInstructions){
			//room_goto(RM_ElevenFiftyNine);
			//transition to RM_ElevenFiftyNine
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_ElevenFiftyNine;
			}
		} else if (room == RM_TimesUpInstructions){
			//room_goto(RM_TimesUp);
			//transition to RM_TimesUp
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_TimesUp;
			}
		} else {
			//room_goto(RM_StreetMinigame);
			//transition to RM_StreetMinigame
			if(!instance_exists(OBJ_Transition)) {
				var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
				inst.target_rm = RM_StreetMinigame;
			}	
		}
	}
}


/// @description Insert description here
// You can write your code in this editor


if(visible){
	if(gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face1)){
		global.needLoaded = true;
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_LocalView;
		}
	} else if (gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face2)){ //Circle
		file_delete("save.txt")
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_CPUSettings;
		}
	}
}




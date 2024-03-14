/// @description Insert description here
// You can write your code in this editor

//update sprite to reflect activity
if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;

/*
TO ADD: ENSURING INPUT ONLY FROM CURRENT PLAYER COUNTS
*/
var current_player_index = global.playercontrollerindices[0];

//checks for pressing button
//var button_x = keyboard_check_pressed(vk_space);
var button_x = gamepad_button_check_pressed(current_player_index, gp_face1);

//return to local view of map if button pressed
if(button_x && OBJ_ReturnToLocalButton.current){
	if(room == RM_MainMap) {
		OBJ_ReturnToLocalButton.current = false;
		//transition to RM_LocalView
		//room_goto(RM_LocalView);
		if(!instance_exists(OBJ_Transition)) {
			var inst = instance_create_depth(0,0,-9999, OBJ_Transition);
			inst.target_rm = RM_LocalView;
		}
	}
}






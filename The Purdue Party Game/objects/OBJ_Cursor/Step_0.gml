/// @description Insert description here
// You can write your code in this editor

//show_debug_message("Current player: {0}", global.playercontrollerindices[global.currentplayer])
buttonCircle = gamepad_button_check_pressed(global.playercontrollerindices[0], gp_face2)

if(buttonCircle){
	room_goto(RM_LocalView);	
}




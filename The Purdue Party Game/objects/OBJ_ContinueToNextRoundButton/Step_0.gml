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
var button_x = gamepad_button_check_pressed(0, gp_face1);

if (button_x && room == RM_MinigameResults && BJ_MGBoilerBucks.done) {
	if (global.turns == 0) {
		room = RM_FinalResults;
		room_goto(RM_FinalResults);
	} else if (global.turns > 0) {
		room = RM_LocalView;
		room_goto(RM_LocalView);
	}
}

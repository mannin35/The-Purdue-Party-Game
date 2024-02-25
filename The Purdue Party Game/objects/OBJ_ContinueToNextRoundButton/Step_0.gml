/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;

var button_x = gamepad_button_check_pressed(4, gp_face1);

if (button_x && room == RM_MinigameResults) {
	if (global.turns == 0) {
		room_goto(RM_FinalResults);
	} else if (global.turns > 0) {
		room_goto(RM_LocalView);
	}
}

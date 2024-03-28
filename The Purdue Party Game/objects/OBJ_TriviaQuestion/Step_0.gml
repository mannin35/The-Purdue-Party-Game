/// Ask trivia question
var controller = global.playercontrollerindices[global.currentplayer];
response = -1;
// X
if (gamepad_button_check_pressed(controller, gp_face1)) {
	response = 2
}
// Circle
if (gamepad_button_check_pressed(controller, gp_face2)) {
	response = 1;
}
// Triangle
if (gamepad_button_check_pressed(controller, gp_face3)) {
	response = 3;
}
// Square
if (gamepad_button_check_pressed(controller, gp_face4)) {
	response = 0;
}
if (response == -1) {
	exit;
}
if (answers[response] == answersNotRandom[0]) {
	// Correct!
	currentPlayer.boilerBucks += 6;
	OBJ_Points.image_index = 2;
}
else {
	// LMAO LOSERRRRR
	currentPlayer.boilerBucks -= 3;
	OBJ_Points.image_index = 1;
}
OBJ_Points.x = currentPlayer.x + 6;
OBJ_Points.y = currentPlayer.y - 26;
OBJ_Points.visible = true;
OBJ_Points.alarm[0] = 120;
currentPlayer.alarm[0] = 120;
instance_destroy()
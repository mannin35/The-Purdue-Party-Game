/// @description Insert description here
// You can write your code in this editor

if (current_player == 0) {
	x = OBJ_Player1Local.x - 30;
	y = OBJ_Player1Local.y - 55;
	image_blend = global.playerColors[global.playerOneIndex];
}
else if (current_player == 1) {
	x = OBJ_Player2Local.x - 30;
	y = OBJ_Player2Local.y - 55;
	image_blend = global.playerColors[global.playerTwoIndex];
}
else if (current_player == 2) {
	x = OBJ_Player3Local.x - 30;
	y = OBJ_Player3Local.y - 55;
	image_blend = global.playerColors[global.playerThreeIndex];
}
else if (current_player == 3) {
	x = OBJ_Player4Local.x - 30;
	y = OBJ_Player4Local.y - 55;
	image_blend = global.playerColors[global.playerFourIndex];
}





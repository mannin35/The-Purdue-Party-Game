/// @description Insert description here
// You can write your code in this editor

if (current_player == 1) {
	x = OBJ_Player1Local.x - 20;
	y = OBJ_Player1Local.y - 42;
	image_blend = global.playerColors[global.playerOneIndex];
}
else if (current_player == 2) {
	x = OBJ_Player2Local.x - 20;
	y = OBJ_Player2Local.y - 42;
	image_blend = global.playerColors[global.playerTwoIndex];
}
else if (current_player == 3) {
	x = OBJ_Player3Local.x - 20;
	y = OBJ_Player3Local.y - 42;
	image_blend = global.playerColors[global.playerThreeIndex];
}
else if (current_player == 4) {
	x = OBJ_Player4Local.x - 20;
	y = OBJ_Player4Local.y - 42;
	image_blend = global.playerColors[global.playerFourIndex];
}





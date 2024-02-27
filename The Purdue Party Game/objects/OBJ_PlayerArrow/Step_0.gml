/// @description Insert description here
// You can write your code in this editor

if (current_player == 1) {
	x = global.player1position[0] - 17;
	y = global.player1position[1] - 42;
	image_blend = global.playerColors[global.playerOneIndex];
}
else if (current_player == 2) {
	x = global.player2position[0] - 17;
	y = global.player2position[1] - 42;
	image_blend = global.playerColors[global.playerTwoIndex];
}
else if (current_player == 3) {
	x = global.player3position[0] - 17;
	y = global.player3position[1] - 42;
	image_blend = global.playerColors[global.playerThreeIndex];
}
else if (current_player == 4) {
	x = global.player4position[0] - 17;
	y = global.player4position[1] - 42;
	image_blend = global.playerColors[global.playerFourIndex];
}





/// @description Insert description here
// You can write your code in this editor

//update with current player
current_player = 4;

if (current_player == 1) {
	x = global.player1x - 17;
	y = global.player1y - 42;
	image_blend = global.player1color;
}
else if (current_player == 2) {
	x = global.player2x - 17;
	y = global.player2y - 42;
	image_blend = global.player2color;
}
else if (current_player == 3) {
	x = global.player3x - 17;
	y = global.player3y - 42;
	image_blend = global.player3color;
}
else if (current_player == 4) {
	x = global.player4x - 17;
	y = global.player4y - 42;
	image_blend = global.player4color;
}

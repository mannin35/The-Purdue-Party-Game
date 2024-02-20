/// @description Insert description here
// You can write your code in this editor

//update with current player
current_player = global.currentplayer;

if (current_player == 1) {
	x = global.player1position[0] - 17;
	y = global.player1position[1] - 42;
	image_blend = global.player1color;
}
else if (current_player == 2) {
	x = global.player2position[0] - 17;
	y = global.player2position[1] - 42;
	image_blend = global.player2color;
}
else if (current_player == 3) {
	x = global.player3position[0] - 17;
	y = global.player3position[1] - 42;
	image_blend = global.player3color;
}
else if (current_player == 4) {
	x = global.player4position[0] - 17;
	y = global.player4position[1] - 42;
	image_blend = global.player4color;
}

/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 2) {
	visible = true;
	x = global.player2position[0] - 2;
	y = global.player2position[1] + 7;
	image_blend = global.playerColors[global.playerTwoIndex];
} else {
	visible = false;	
}





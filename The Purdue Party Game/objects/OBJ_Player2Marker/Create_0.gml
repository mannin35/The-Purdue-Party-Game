/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 2) {
	visible = true;
	x = OBJ_Player2Full.x - 2;
	y = OBJ_Player2Full.y + 7;
	image_blend = global.playerColors[global.playerTwoIndex];
} else {
	visible = false;	
}





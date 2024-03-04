/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 2) {
	visible = true;
	x = OBJ_Player2Local.x - 15;
	y =OBJ_Player2Local.y - 15;
	image_blend = global.playerColors[global.playerTwoIndex];
} else {
	visible = false;	
}





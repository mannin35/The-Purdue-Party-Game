/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 1) {
	visible = true;
	x = OBJ_Player1Full.x - 2;
	y = OBJ_Player1Full.y + 7;
	image_blend = global.playerColors[global.playerOneIndex];
} else {
	visible = false;	
}





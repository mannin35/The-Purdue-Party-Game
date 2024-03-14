/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 0) {
	visible = true;
	x = OBJ_Player1Local.x - 15;
	y =OBJ_Player1Local.y - 15;
	image_blend = global.playerColors[global.playerOneIndex];
} else {
	visible = false;	
}





/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 3) {
	visible = true;
	x = OBJ_Player3Full.x - 2;
	y = OBJ_Player3Full.y + 7;
	image_blend = global.playerColors[global.playerThreeIndex];
} else {
	visible = false;	
}





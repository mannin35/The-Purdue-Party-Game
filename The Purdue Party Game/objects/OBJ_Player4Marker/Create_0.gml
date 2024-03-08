/// @description Insert description here
// You can write your code in this editor


if(OBJ_PlayerArrow.current_player != 4) {
	visible = true;
	x = OBJ_Player4Local.x - 15;
	y =OBJ_Player4Local.y - 15;
	image_blend = global.playerColors[global.playerFourIndex];
} else {
	visible = false;	
}





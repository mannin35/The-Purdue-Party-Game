/// @description Insert description here
// You can write your code in this editor

//TEMP
playerSprite1 = 0;

if(OBJ_PlayerArrow.current_player != 1) {
	visible = true;
	x = global.player1position[0] - 2;
	y = global.player1position[1] + 7;
	image_blend = global.playerColors[playerSprite1];
} else {
	visible = false;	
}





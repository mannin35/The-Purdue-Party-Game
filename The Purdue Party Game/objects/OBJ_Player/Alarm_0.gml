/// @description Insert description here
// You can write your code in this editor
if (room == RM_LocalView) {
	global.currentplayer = (global.currentplayer + 1) % 4;
	isMoving = false;
	if(object_get_name(object_index) == "OBJ_Player4Local"){
		OBJ_PlayerInfo.end_of_round = true;
	}
	ResetButtons(global.currentplayer);
	ShowButtons();
}
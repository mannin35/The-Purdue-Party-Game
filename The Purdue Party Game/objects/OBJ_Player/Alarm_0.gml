/// @description Insert description here
// You can write your code in this editor
if (room == RM_LocalView) {
	//show_debug_message(global.currentplayer)
	global.currentplayer = (global.currentplayer + 1) % 4;
	isMoving = false;
	if(global.currentplayer = 0){
	//if(object_get_name(object_index) == "OBJ_Player4Local"){
		OBJ_PlayerInfo.end_of_round = true;
		OBJ_PlayerTurn.visible = false;
		global.delayInput = true;
		OBJ_LocalButtonInfo.alarm[0] = 60;
	}
	OBJ_Player.degreeCollided = false;
	ResetButtons(global.currentplayer);
	ShowButtons();
}
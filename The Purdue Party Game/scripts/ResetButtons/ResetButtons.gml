// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function ResetButtons(playerIndex){
	current = global.localPlayers[playerIndex];
	buttonY = current.y;
	rollX = current.x - 224;
	useX = rollX + 98;
	mapX = useX + 98;
	scoreX = mapX+ 98;
	OBJ_RollDiceButton.x = rollX;
	OBJ_RollDiceButton.y = buttonY;
	OBJ_UseItemButton.x = useX;
	OBJ_UseItemButton.y = buttonY;
	OBJ_ViewMapButton.x =mapX;
	OBJ_ViewMapButton.y = buttonY;
	OBJ_ViewScoreboardButton.x = scoreX;
	OBJ_ViewScoreboardButton.y = buttonY;
}
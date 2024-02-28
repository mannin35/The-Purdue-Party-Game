/// @Camera which will track current player
cam = view_current;
current = OBJ_Player1Local;

function resetButtons() {
	buttonY = current.y - 32;
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

function hideButtons() {
	OBJ_RollDiceButton.visible = false;
	OBJ_UseItemButton.visible = false;
	OBJ_ViewMapButton.visible = false;
	OBJ_ViewScoreboardButton.visible = false;
}

function showButtons() {
	OBJ_RollDiceButton.visible = true;
	OBJ_UseItemButton.visible = true;
	OBJ_ViewMapButton.visible = true;
	OBJ_ViewScoreboardButton.visible = true;
}









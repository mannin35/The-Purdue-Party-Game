/// @description Insert description here
// You can write your code in this editor

if (room == RM_FinalResults) {
	localPlayersPlacement = global.localPlayers;
	var swapped = true;
	while (swapped) {
		swapped = false;
		for (var i = 0; i < array_length(localPlayersPlacement); i++) {
			if (localPlayersPlacement[i - 1].degrees < localPlayersPlacement[i].degrees) {
				var temp = localPlayersPlacement[i - 1];
				localPlayersPlacement[i - 1] = localPlayersPlacement[i];
				localPlayersPlacement[i] = temp;
				swapped = true;
			}
		}
		for (var i = 0; i < array_length(localPlayersPlacement); i++) {
			if (localPlayersPlacement[i - 1].boilerBucks < localPlayersPlacement[i].boilerBucks) {
				var temp = localPlayersPlacement[i - 1];
				localPlayersPlacement[i - 1] = localPlayersPlacement[i];
				localPlayersPlacement[i] = temp;
				swapped = true;
			}
		}
	}
	image_index = localPlayersPlacement[0].index;
	OBJ_Player2nd.image_index = localPlayersPlacement[1].index;
	OBJ_Player3rd.image_index = localPlayersPlacement[2].index;
	OBJ_Player4th.image_index = localPlayersPlacement[3].index;
} else {
	visible = false;

	x = OBJ_Scoreboard.x + 30;
	y = OBJ_Scoreboard.y + 12;
}
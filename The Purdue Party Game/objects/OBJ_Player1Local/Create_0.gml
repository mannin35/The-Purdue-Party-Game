/// @Local Player 1
event_inherited();
if(global.needLoaded){
	//show_debug_message("Loading")
load_game()	
//show_debug_message("Loaded")
//global.needLoaded = false;
}

self.space = OBJ_PlayerInfo.playerSpaces[0];
x = space.x;
y = space.y;
isCPU = (global.realPlayerCount <= 0);
ResetButtons(0);

//image_index = global.playersUsed[0];
global.player1position[0] = x;
global.player1position[1] = y;
startIndex = global.playerOneIndex;
global.playerColors = [c_red, c_aqua, c_purple, c_fuchsia, c_dkgray, c_yellow, c_white, c_blue];
color = global.playerColors[startIndex];
image_index = startIndex;
walkingIndex = startIndex * 3;
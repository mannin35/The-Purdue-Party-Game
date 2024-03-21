/// @Local Player 1
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[0];
x = space.x;
y = space.y;
isCPU = (global.realPlayerCount <= 0);
ResetButtons(0);

//image_index = global.playersUsed[0];
global.player1position[0] = x;
global.player1position[1] = y;
startIndex = global.playerOneIndex;
color = global.playerColors[startIndex];
image_index = startIndex;
walkingIndex = startIndex * 3;
boilerBucks = 0;
degrees = 0;

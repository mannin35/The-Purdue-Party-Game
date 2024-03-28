/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[1];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[1];
x = space.x;
y = space.y;
isCPU = (global.realPlayerCount <= 1);

global.player2position[0] = x;
global.player2position[1] = y;
startIndex = global.playerTwoIndex;
color = global.playerColors[startIndex];
image_index = startIndex;
walkingIndex = startIndex * 3;
redSpaces = 0;
/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[1];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[1];
x = space.x;
y = space.y;
color = c_aqua;
isCPU = (global.realPlayerCount <= 1);

global.player2position[0] = x;
global.player2position[1] = y;
startIndex = global.playerTwoIndex;
image_index = startIndex;
walkingIndex = startIndex * 3;
boilerBucks = 0;
degrees = 0;

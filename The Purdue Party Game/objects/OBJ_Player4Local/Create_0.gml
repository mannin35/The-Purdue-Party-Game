/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[3];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[3];
x = space.x;
y = space.y;
isCPU = (global.realPlayerCount <= 3);

global.player4position[0] = x;
global.player4position[1] = y;
startIndex = global.playerFourIndex;
color = global.playerColors[startIndex];
image_index = startIndex;
walkingIndex = startIndex * 3;
redSpaces = 0;
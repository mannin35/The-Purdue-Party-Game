/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[2];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[2];
x = space.x;
y = space.y;
isCPU = (global.realPlayerCount <= 2);

global.player3position[0] = x;
global.player3position[1] = y;
startIndex = global.playerThreeIndex;
color = global.playerColors[startIndex];
image_index = startIndex;
walkingIndex = startIndex * 3;
redSpaces = 0;

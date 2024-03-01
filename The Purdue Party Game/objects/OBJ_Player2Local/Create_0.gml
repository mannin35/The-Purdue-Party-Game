/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[1];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[1];
x = space.x;
y = space.y;
color = c_aqua;

global.player2position[0] = x;
global.player2position[1] = y;
image_index = global.playerTwoIndex;
walkingIndex = image_index * 2;
boilerBucks = 10;
degrees = 2;

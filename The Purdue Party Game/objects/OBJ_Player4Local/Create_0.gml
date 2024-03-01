/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[3];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[3];
x = space.x;
y = space.y;
color = c_fuchsia;

global.player4position[0] = x;
global.player4position[1] = y;
image_index = global.playerFourIndex;
walkingIndex = image_index * 2;
boilerBucks = 0;
degrees = 5;

/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[2];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[2];
x = space.x;
y = space.y;
color = c_purple;

global.player3position[0] = x;
global.player3position[1] = y;
image_index = global.playerThreeIndex;
walkingIndex = image_index * 2;
boilerBucks =  0;
degrees =  0;

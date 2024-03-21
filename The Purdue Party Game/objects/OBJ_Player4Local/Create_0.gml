/// @description Insert description here
// You can write your code in this editor

//image_index = global.playersUsed[3];
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[3];
x = space.x;
y = space.y;
color = c_fuchsia;
isCPU = (global.realPlayerCount <= 3);

global.player4position[0] = x;
global.player4position[1] = y;
startIndex = global.playerFourIndex;
image_index = startIndex;
walkingIndex = startIndex * 3;
boilerBucks = 0;
degrees = 5;
//show_debug_message("{0} {1} {2} {3}", global.playercontrollerindices[0],  global.playercontrollerindices[1], global.playercontrollerindices[2],  global.playercontrollerindices[3])
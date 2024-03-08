/// @Local Player 1
event_inherited();
self.space = OBJ_PlayerInfo.playerSpaces[0];
x = space.x;
y = space.y;
color = c_red;
ResetButtons(0);

//image_index = global.playersUsed[0];
global.player1position[0] = x;
global.player1position[1] = y;
image_index = global.playerOneIndex;
walkingIndex = image_index * 2;
boilerBucks = 0;
degrees = 10;

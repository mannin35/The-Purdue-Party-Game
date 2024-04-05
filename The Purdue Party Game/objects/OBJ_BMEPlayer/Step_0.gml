/// @description Insert description here
// You can write your code in this editor

if(start == true) {
	x = -5;
	y = id.tracking.y + 40;
	start = false;
}
if(visible == true) {
	playerNums = [global.playerOneIndex, global.playerTwoIndex, global.playerThreeIndex, global.playerFourIndex];
	image_index = playerNums[id.tracking.playerNum-1];
	x = x+.2;
}
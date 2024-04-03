/// @description Insert description here
// You can write your code in this editor

if(id.tracking.over) {
	visible = false;
} else {
	if(OBJ_BMEFinish.started) {
		visible = true;
	}
	x = id.tracking.x - 17;
	y = id.tracking.y - 7;

	//set color mask
	playerNums = [global.playerOneIndex, global.playerTwoIndex, global.playerThreeIndex, global.playerFourIndex];
	image_blend = merge_color(global.playerColors[playerNums[id.tracking.playerNum-1]], c_white, 75);
}
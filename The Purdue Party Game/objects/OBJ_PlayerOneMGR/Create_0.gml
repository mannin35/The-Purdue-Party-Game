/// @description Insert description here
// You can write your code in this editor
global.playerOneIndex = 0;
global.playerTwoIndex = 1;
global.playerThreeIndex = 2;
global.playerFourIndex = 3;
global.minigameResults=[1,2,4,3];
switch(global.minigameResults[0]){
	case 1:
		image_index = global.playerOneIndex;
	break;
	case 2:
		image_index = global.playerTwoIndex;
	break;
	case 3:
		image_index = global.playerThreeIndex;
	break;
	case 4:
		image_index = global.playerFourIndex;
	break;
}




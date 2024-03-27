/// @description Insert description here
// You can write your code in this editor

player_one_TTT.dizzy.visible = false; // disable dizzy particles
player_two_TTT.dizzy.visible = false;
player_three_TTT.dizzy.visible = false;
player_four_TTT.dizzy.visible = false;

if(global.localPlayers[0].isCPU) {
	if(global.CPUSettings[0]==0) {
		player_one_TTT.walksp = 1.5;	
	} else {
		player_one_TTT.walksp = 2;
	}
}
if(global.localPlayers[1].isCPU) {
	if(global.CPUSettings[1]==0) {
		player_two_TTT.walksp = 1.5;	
	} else {
		player_two_TTT.walksp = 2;	
	}
}
if(global.localPlayers[2].isCPU) {
	if(global.CPUSettings[2]==0) {
		player_three_TTT.walksp = 1.5;	
	} else {
		player_three_TTT.walksp = 2;
	}
}
if(global.localPlayers[3].isCPU) {
	if(global.CPUSettings[3]==0) {
		player_four_TTT.walksp = 1.5;	
	} else {
		player_four_TTT.walksp = 2;
	}
}







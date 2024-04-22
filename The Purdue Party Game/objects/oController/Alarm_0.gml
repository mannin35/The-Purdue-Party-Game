/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if !(global.minigameOver) { // does the dizzy effect and control swap
	alarm[1] = 180;
}

if !(player_one_TTT.over) { // these 4 make the dizziness visible 
	player_one_TTT.dizzy.visible = true;
	if(global.localPlayers[0].isCPU) {
		if(global.CPUSettings[0] == 0) {
			player_one_TTT.walksp = 0;
		}
		if(global.CPUSettings[0] == 1) {
			player_one_TTT.walksp = 1;
		}
	}
}
if !(player_two_TTT.over) {
	player_two_TTT.dizzy.visible = true;
	if(global.localPlayers[1].isCPU) {
		if(global.CPUSettings[1] == 0) {
			player_two_TTT.walksp = 0;	
		}
		if(global.CPUSettings[1] == 1) {
			player_two_TTT.walksp = 1;
		}
	}
}
if !(player_three_TTT.over) {
	player_three_TTT.dizzy.visible = true;
	if(global.localPlayers[2].isCPU) {
		if(global.CPUSettings[2] == 0) {
			player_three_TTT.walksp = 0;
		}
		if(global.CPUSettings[2] == 1) {
			player_three_TTT.walksp = 1;
		}
	}
}
if !(player_four_TTT.over) {
	player_four_TTT.dizzy.visible = true;
	if(global.localPlayers[3].isCPU){
		if(global.CPUSettings[3] == 0) {
			player_four_TTT.walksp = 0;
		}
		if(global.CPUSettings[3] == 1) {
			player_four_TTT.walksp = 1;
		}
	}
}
while (cn_swap = swap_prev) { // makes sure same roll cant happen twice
	cn_swap = irandom_range(0, 3);
}
//show_debug_message(string(cn_swap));
swap_prev = cn_swap; // save prev swap

alarm[0] = irandom_range(300, 600);














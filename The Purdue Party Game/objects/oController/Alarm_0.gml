/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor

if !(global.minigameOver) { // does the dizzy effect and control swap
	alarm[1] = 180;
}

if !(player_one_TTT.over) { // these 4 make the dizziness visible 
	player_one_TTT.dizzy.visible = true;	
}
if !(player_two_TTT.over) {
	player_two_TTT.dizzy.visible = true;	
}
if !(player_three_TTT.over) {
	player_three_TTT.dizzy.visible = true;	
}
if !(player_four_TTT.over) {
	player_four_TTT.dizzy.visible = true;	
}
while (cn_swap = swap_prev) { // makes sure same roll cant happen twice
	cn_swap = irandom_range(0, 3);
}
show_debug_message(string(cn_swap));
swap_prev = cn_swap; // save prev swap

alarm[0] = irandom_range(300, 600);














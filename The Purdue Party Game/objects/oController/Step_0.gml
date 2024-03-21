/// @description Insert description here
// You can write your code in this editor

player_one_TTT.dizzy.x = player_one_TTT.x - 10; // summon all 4 dizzy particles
player_one_TTT.dizzy.y = player_one_TTT.y - 25;
player_two_TTT.dizzy.x = player_two_TTT.x - 10;
player_two_TTT.dizzy.y = player_two_TTT.y - 25;
player_three_TTT.dizzy.x = player_three_TTT.x - 10;
player_three_TTT.dizzy.y = player_three_TTT.y - 25;
player_four_TTT.dizzy.x = player_four_TTT.x - 10;
player_four_TTT.dizzy.y = player_four_TTT.y - 25;

player_one_TTT.timer.x = player_one_TTT.x - 20; // timer visuals
player_one_TTT.timer.y = player_one_TTT.y - 25;
player_two_TTT.timer.x = player_two_TTT.x - 20;
player_two_TTT.timer.y = player_two_TTT.y - 25;
player_three_TTT.timer.x = player_three_TTT.x - 20;
player_three_TTT.timer.y = player_three_TTT.y - 25;
player_four_TTT.timer.x = player_four_TTT.x - 20;
player_four_TTT.timer.y = player_four_TTT.y - 25;

if (!timer_active && (player_one_TTT.over || player_two_TTT.over || player_three_TTT.over || player_four_TTT.over)) {
	alarm[2] = 1;
	timer_active = true;
}

if (player_one_TTT.over && player_two_TTT.over && player_three_TTT.over && player_four_TTT.over) { // end game
	global.minigameOver = 1;	
}





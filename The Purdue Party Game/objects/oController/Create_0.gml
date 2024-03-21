/// @description Insert description here
// You can write your code in this editor

p_one = global.playerOneIndex;
p_two = global.playerTwoIndex;
p_three = global.playerThreeIndex;
p_four = global.playerFourIndex;

player_one_TTT.image_index = p_one;
player_two_TTT.image_index = p_two;
player_three_TTT.image_index = p_three;
player_four_TTT.image_index = p_four;

cn_swap = 0; // random swap for controls
swap_prev = 0; // keeps track of previous swap

place = 0;

alarm[0] = irandom_range(300, 600);

timer_active = false; // if timer has begun
timer = 15; // final timer for remaining players

global.minigameResults = [4, 4, 4, 4];
pos = 1; // position to play for
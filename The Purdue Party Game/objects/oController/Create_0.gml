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

mazes = [SP_MazeOne, SP_MazeTwo, SP_MazeThree, SP_MazeFour]; // array of maze sprites
maze = irandom_range(0, 3); // rolling for random maze

//maze = 2;
player_one_maze.sprite_index = mazes[maze];
player_two_maze.sprite_index = mazes[maze];
player_three_maze.sprite_index = mazes[maze];
player_four_maze.sprite_index = mazes[maze];
if (maze = 2) { // maze 3, finish on bottom left
	player_one_finish_TTT.x -= 570;
	player_two_finish_TTT.x -= 570;
	player_three_finish_TTT.x -= 570;
	player_four_finish_TTT.x -= 570;
} else if (maze = 3) { // maze 4, finish on top right
	player_one_finish_TTT.y -= 510;
	player_two_finish_TTT.y -= 510;
	player_three_finish_TTT.y -= 510;
	player_four_finish_TTT.y -= 510;
}

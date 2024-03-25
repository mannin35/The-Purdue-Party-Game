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

global.localPlayers[0].visible = false; // bugfix!!!
global.localPlayers[1].visible = false;
global.localPlayers[2].visible = false;
global.localPlayers[3].visible = false;

cn_swap = 0; // random swap for controls
swap_prev = 0; // keeps track of previous swap

place = 0;

alarm[0] = irandom_range(300, 600);

timer_active = false; // if timer has begun
timer = 15; // final timer for remaining players

global.minigameResults = [4, 4, 4, 4];
pos = 1; // position to play for

mazes = [SP_MazeOne, SP_MazeTwo, SP_MazeThree, SP_MazeFour, SP_MazeFive, SP_MazeSix, SP_MazeSeven, SP_MazeEight, SP_MazeNine, SP_MazeTen]; // array of maze sprites
maze = irandom_range(0, 9); // rolling for random maze

//maze =;
player_one_maze.sprite_index = mazes[maze];
player_two_maze.sprite_index = mazes[maze];
player_three_maze.sprite_index = mazes[maze];
player_four_maze.sprite_index = mazes[maze];

// finish spawns
if (maze = 2 || maze = 9) { // maze 3/10, finish on bottom left
	player_one_finish_TTT.x -= 540;
	player_two_finish_TTT.x -= 540;
	player_three_finish_TTT.x -= 540;
	player_four_finish_TTT.x -= 540;
} else if (maze = 3 || maze = 4) { // maze 4/5, finish on top right
	player_one_finish_TTT.y -= 480;
	player_two_finish_TTT.y -= 480;
	player_three_finish_TTT.y -= 480;
	player_four_finish_TTT.y -= 480;
} else if (maze = 5) { // maze 6, finish in middle
	player_one_finish_TTT.y -= 240;
	player_two_finish_TTT.y -= 240;
	player_three_finish_TTT.y -= 240;
	player_four_finish_TTT.y -= 240;
} else if (maze = 7 || maze = 8) { // maze 8/9, finish in bottom middle
	player_one_finish_TTT.x -= 270;
	player_two_finish_TTT.x -= 270;
	player_three_finish_TTT.x -= 270;
	player_four_finish_TTT.x -= 270;
	
	player_one_finish_TTT.y += 30;
	player_two_finish_TTT.y += 30;
	player_three_finish_TTT.y += 30;
	player_four_finish_TTT.y += 30;
}

// player spawns
if (maze = 4) { // maze 5, player spawns on bottom right
	player_one_TTT.y += 480;
	player_two_TTT.y += 480;
	player_three_TTT.y += 480;
	player_four_TTT.y += 480;
} else if (maze = 5) { // maze 6, player spawns in middle
	player_one_TTT.y += 240;
	player_two_TTT.y += 240;
	player_three_TTT.y += 240;
	player_four_TTT.y += 240;	
} else if (maze = 7 || maze = 8) { // maze 8, player spawns in top middle
	//player_one_start_TTT.image_index++; // this is heinous
	//player_two_start_TTT.image_index++; // removes original spawn block
	//player_three_start_TTT.image_index++;
	//player_four_start_TTT.image_index++;
	
	player_one_TTT.x += 270;
	player_two_TTT.x += 270;
	player_three_TTT.x += 270;
	player_four_TTT.x += 270;
	
	player_one_TTT.y -= 30;
	player_two_TTT.y -= 30;
	player_three_TTT.y -= 30;
	player_four_TTT.y -= 30;
	
	player_one_maze.x += 30; // maze adjustment
	player_two_maze.x += 30;
	player_three_maze.x += 30;
	player_four_maze.x += 30;
	
	player_one_maze.y -= 30;
	player_two_maze.y -= 30;
	player_three_maze.y -= 30;
	player_four_maze.y -= 30;
} else if (maze = 9) { // maze 10 player spawns on right side
	player_one_TTT.x += 540;
	player_two_TTT.x += 540;
	player_three_TTT.x += 540;
	player_four_TTT.x += 540;
}

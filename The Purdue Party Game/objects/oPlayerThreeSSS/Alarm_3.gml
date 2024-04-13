/// @description Insert description here
// You can write your code in this editor

// incoming doozy, going to check if someone is in grab box
if ((player_three_grab.x == player_two_SSS.x) && (player_three_grab.y == player_two_SSS.y) && !hit && !player_two_SSS.grabbed) { // P3 > P2
	//show_debug_message("touched!");
	player_two_SSS.grabbed = true;
	player_two_SSS.x = player_three_grab.x;
	player_two_SSS.y = player_three_grab.y;
	//player_two_SSS.grabbed = true;
	grabbedWho = 2

} else if ((player_three_grab.x == player_one_SSS.x) && (player_three_grab.y == player_one_SSS.y) && !hit && !player_one_SSS.grabbed) { // P3 > P1
	//show_debug_message("touched!");
	player_one_SSS.grabbed = true;
	player_one_SSS.x = player_three_grab.x;
	player_one_SSS.y = player_three_grab.y;
	grabbedWho = 1
} else if ((player_three_grab.x == player_four_SSS.x) && (player_three_grab.y == player_four_SSS.y) && !hit && !player_four_SSS.grabbed) { // P1 > P4
	//show_debug_message("touched!");
	player_four_SSS.grabbed = true;
	player_four_SSS.x = player_three_grab.x;
	player_four_SSS.y = player_three_grab.y;
	grabbedWho = 4
}
alarm[4] = 29;











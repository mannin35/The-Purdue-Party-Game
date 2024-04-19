/// @description Insert description here
// You can write your code in this editor

// incoming doozy, going to check if someone is in grab box
if (grabbedWho == -1) {
	if ((player_one_grab.x == player_two_SSS.x) && (player_one_grab.y == player_two_SSS.y) && !hit && !player_two_SSS.grabbed) { // P1 > P2
		//show_debug_message("touched!");
		player_two_SSS.grabbed = true;
		player_two_SSS.x = player_one_grab.x;
		player_two_SSS.y = player_one_grab.y;
		//player_two_SSS.grabbed = true;
		grabbedWho = 2

	} else if ((player_one_grab.x == player_three_SSS.x) && (player_one_grab.y == player_three_SSS.y) && !hit && !player_three_SSS.grabbed) { // P1 > P3
		//show_debug_message("touched!");
		player_three_SSS.grabbed = true;
		player_three_SSS.x = player_one_grab.x;
		player_three_SSS.y = player_one_grab.y;
		grabbedWho = 3
	} else if ((player_one_grab.x == player_four_SSS.x) && (player_one_grab.y == player_four_SSS.y) && !hit && !player_four_SSS.grabbed) { // P1 > P4
		//show_debug_message("touched!");
		player_four_SSS.grabbed = true;
		player_four_SSS.x = player_one_grab.x;
		player_four_SSS.y = player_one_grab.y;
		grabbedWho = 4
	}
}
if (grabTimer < 8) {
	grabTimer++;
	alarm[3] = 1;
} else {
	alarm[4] = 1;
}











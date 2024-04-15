/// @description Insert description here
// You can write your code in this editor

// incoming doozy, going to check if someone is in grab box
if (grabbedWho == -1) {
	if ((player_two_grab.x == player_one_SSS.x) && (player_two_grab.y == player_one_SSS.y) && !hit && !player_one_SSS.grabbed) { // P2 > P1
		//show_debug_message("touched!");
		player_one_SSS.grabbed = true;
		player_one_SSS.x = player_two_grab.x;
		player_one_SSS.y = player_two_grab.y;
		//player_two_SSS.grabbed = true;
		grabbedWho = 1

	} else if ((player_two_grab.x == player_three_SSS.x) && (player_two_grab.y == player_three_SSS.y) && !hit && !player_three_SSS.grabbed) { // P2 > P3
		//show_debug_message("touched!");
		player_three_SSS.grabbed = true;
		player_three_SSS.x = player_two_grab.x;
		player_three_SSS.y = player_two_grab.y;
		grabbedWho = 3
	} else if ((player_two_grab.x == player_four_SSS.x) && (player_two_grab.y == player_four_SSS.y) && !hit && !player_four_SSS.grabbed) { // P2 > P4
		//show_debug_message("touched!");
		player_four_SSS.grabbed = true;
		player_four_SSS.x = player_two_grab.x;
		player_four_SSS.y = player_two_grab.y;
		grabbedWho = 4
	}
}
if (grabTimer < 7) {
	grabTimer++;
	alarm[3] = 1;
} else {
	alarm[4] = 15;
}











/// @description Insert description here
// You can write your code in this editor

// incoming doozy, going to check if someone is in grab box
if (grabbedWho == -1) {
	if ((player_four_grab.x == player_two_SSS.x) && (player_four_grab.y == player_two_SSS.y) && !hit && !player_two_SSS.grabbed) { // P4 > P2
		//show_debug_message("touched!");
		player_two_SSS.grabbed = true;
		player_two_SSS.x = player_four_grab.x;
		player_two_SSS.y = player_four_grab.y;
		//player_two_SSS.grabbed = true;
		grabbedWho = 2

	} else if ((player_four_grab.x == player_three_SSS.x) && (player_four_grab.y == player_three_SSS.y) && !hit && !player_three_SSS.grabbed) { // P4 > P3
		//show_debug_message("touched!");
		player_three_SSS.grabbed = true;
		player_three_SSS.x = player_four_grab.x;
		player_three_SSS.y = player_four_grab.y;
		grabbedWho = 3
	} else if ((player_four_grab.x == oPlayerOneSSS.x) && (player_four_grab.y == oPlayerOneSSS.y) && !hit && !oPlayerOneSSS.grabbed) { // P4 > P1
		//show_debug_message("touched!");
		oPlayerOneSSS.grabbed = true;
		oPlayerOneSSS.x = player_four_grab.x;
		oPlayerOneSSS.y = player_four_grab.y;
		grabbedWho = 1
	}
}
if (grabTimer < 7) {
	grabTimer++;
	alarm[3] = 1;
} else {
	alarm[4] = 15;
}











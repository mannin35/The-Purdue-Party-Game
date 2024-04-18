/// @description Insert description here
// You can write your code in this editor

tempX = player_two_SSS.x;
tempY = player_two_SSS.y;
if (!hit && !oPlayerOneSSS.hit && grabbedWho == 1) { // P2 > P1
	if (dir = 0) { // facing left
		player_two_SSS.sprite_index = SP_PlayerRightSSS;
		oPlayerOneSSS.sprite_index = SP_PlayerLeftSSS;
	} else if (dir = 1) { // facing right
		player_two_SSS.sprite_index = SP_PlayerLeftSSS;
		oPlayerOneSSS.sprite_index = SP_PlayerRightSSS;
	} else if (dir = 2) { // facing up
		player_two_SSS.sprite_index = SP_PlayerDownSSS;
		oPlayerOneSSS.sprite_index = SP_PlayerUpSSS;
	} else if (dir = 3) { // facing down
		player_two_SSS.sprite_index = SP_PlayerUpSSS;
		oPlayerOneSSS.sprite_index = SP_PlayerDownSSS;
	}
	player_two_SSS.x = oPlayerOneSSS.x;
	player_two_SSS.y = oPlayerOneSSS.y;
	oPlayerOneSSS.x = tempX;
	oPlayerOneSSS.y = tempY;
	oPlayerOneSSS.grabbed = false
} else if (!hit && !player_three_SSS.hit && grabbedWho == 3) { // P2 > P3
	if (dir = 0) { // facing left
		player_two_SSS.sprite_index = SP_PlayerRightSSS;
		player_three_SSS.sprite_index = SP_PlayerLeftSSS;
	} else if (dir = 1) { // facing right
		player_two_SSS.sprite_index = SP_PlayerLeftSSS;
		player_three_SSS.sprite_index = SP_PlayerRightSSS;
	} else if (dir = 2) { // facing up
		player_two_SSS.sprite_index = SP_PlayerDownSSS;
		player_three_SSS.sprite_index = SP_PlayerUpSSS;
	} else if (dir = 3) { // facing down
		player_two_SSS.sprite_index = SP_PlayerUpSSS;
		player_three_SSS.sprite_index = SP_PlayerDownSSS;
	}
	player_two_SSS.x = player_three_SSS.x;
	player_two_SSS.y = player_three_SSS.y;
	player_three_SSS.x = tempX;
	player_three_SSS.y = tempY;
	player_three_SSS.grabbed = false
} else if (!hit && !player_four_SSS.hit && grabbedWho == 4) { // P2 > P4
	if (dir = 0) { // facing left
		player_two_SSS.sprite_index = SP_PlayerRightSSS;
		player_four_SSS.sprite_index = SP_PlayerLeftSSS;
	} else if (dir = 1) { // facing right
		player_two_SSS.sprite_index = SP_PlayerLeftSSS;
		player_four_SSS.sprite_index = SP_PlayerRightSSS;
	} else if (dir = 2) { // facing up
		player_two_SSS.sprite_index = SP_PlayerDownSSS;
		player_four_SSS.sprite_index = SP_PlayerUpSSS;
	} else if (dir = 3) { // facing down
		player_two_SSS.sprite_index = SP_PlayerUpSSS;
		player_four_SSS.sprite_index = SP_PlayerDownSSS;
	}
	player_two_SSS.x = player_four_SSS.x;
	player_two_SSS.y = player_four_SSS.y;
	player_four_SSS.x = tempX;
	player_four_SSS.y = tempY;
	player_four_SSS.grabbed = false
}
if (dir = 0 && grabbedWho == -1) {
	sprite_index = SP_PlayerLeftSSS;
} else if (dir = 1 && grabbedWho == -1) {
	sprite_index = SP_PlayerRightSSS;
} else if (dir = 2 && grabbedWho == -1) {
	sprite_index = SP_PlayerUpSSS;
} else if (dir = 3 && grabbedWho == -1) {
	sprite_index = SP_PlayerDownSSS;
}
player_two_grab.x = -112;
grab = false;
grabbedWho = -1;
dir = -1;
grabTimer = 0;










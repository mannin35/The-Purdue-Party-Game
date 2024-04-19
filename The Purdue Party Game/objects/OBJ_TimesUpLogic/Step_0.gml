finished = true;
for (i = 0; i <4; i++) {
	if (players[i].y <= 100) {
		if (!players[i].over) {
			players[i].over = true;
			global.minigameResults[i] = place;
			updated = true;
		}
	}
	else {
		finished = false;
	}
	// Update timers
	var playerSide = players[i].sprite - 1;
	deltaX = 5;
	if (playerSide == 2) {
		deltaX *= -1;
	}
	players[i].timer.x = players[i].x + deltaX; // timer visuals
	players[i].timer.y = players[i].y;
	if (!timer_active && (players[i].over)) { // start timer visuals if someone is done
		alarm[2] = 1;
		timer_active = true;
	}
	// CPU movement
	if (global.localPlayers[i].isCPU) {
		if (i == 0 && global.playerOneTU) {
			exit;
		}
		if (i == 1 && global.playerTwoTU) {
			exit;
		}
		if (i == 2 && global.playerThreeTU) {
			exit;
		}
		if (i == 3 && global.playerFourTU) {
			exit;
		}
		if (i == 3) {
			show_debug_message("PLayer 4");
		}
		// Easy = 0, Med = 1, Hard = 2
		var chance = 1;
		if (global.CPUSettings[i] == 0) {
			chance = 0.85;
		}
		else if (global.CPUSettings[i] == 1) {
			chance = 0.90;
		}
		else if (global.CPUSettings[i] == 2) {
			chance = .99;
		}
		// Easy =85%, Med = 90%, Hard = 95%
		var correctChoice = 0;
		
		// Check collisions with a line
		//collision_line(x1, y1, x2, y2, obj, prec, notme);
		
		// deltaX compensates for sprite origin being topleft
		deltaX = 24;
		deltaY = 80;
		ySize = 12;
		with (players[i]) {
			if (playerSide == 2) {
				collision =  collision_line(x - other.deltaX, y, x - other.deltaX, y - other.deltaY,  OBJ_FallingClock, false, true);
			}
			else {
				collision = collision_line(x + other.deltaX, y, x + other.deltaX, y - other.deltaY,  OBJ_FallingClock, false, true);
			}
			if (collision != noone) {
				// There is an incoming collision above
				if (playerSide == 0) {
						// Don't move if moving will cause you to hit a clock
						if (!collision_line(x + 2 * other.deltaX, y - other.ySize, x + 2 * other.deltaX, y + other.ySize,  OBJ_FallingClock, false, true) != noone)  {
							correctChoice = 1; // Go right if on left edge
						}
				}
				else if (playerSide == 2)  {
					// Don't move if moving will cause you to hit a clock
					if (!collision_line(x - 3 * other.deltaX, y - other.ySize, x - 3 * other.deltaX, y + other.ySize,  OBJ_FallingClock, false, true) != noone)  {
						correctChoice = -1; // Go left if on right edge
					}
				}
				else {
					// Player is in the middle
					var leftCollision = collision_line(x - other.deltaX, y, x - other.deltaX, y - other.deltaY,  OBJ_FallingClock, false, true);
					var rightCollision =  collision_line(x + 3 * other.deltaX, y, x + 3 * other.deltaX, y - other.deltaY,  OBJ_FallingClock, false, true);
					var rightCollideWhenMoving = collision_line(x + 3 * other.deltaX, y - other.ySize, x + 3 * other.deltaX, y + other.ySize,  OBJ_FallingClock, false, true);
					var leftCollideWhenMoving = collision_line(x - 2 * other.deltaX, y - other.ySize, x - 2 * other.deltaX, y + other.ySize,  OBJ_FallingClock, false, true);
					if (leftCollision == noone) {
						// There is not an incoming collision to the left
						// Don't move if moving will cause you to hit a clock
						if (leftCollideWhenMoving == noone)  {
							correctChoice = -1; // Go left
						}
					}
					else if (rightCollision == noone)  {
						// There is not an incoming collision to the right
						// Don't move if moving will cause you to hit a clock
						if (rightCollideWhenMoving == noone)  {
							correctChoice = 1; // Go right
						}
					}
					else if (leftCollision != noone && rightCollision != noone)  {
						// There are collisions on left and right
						if (leftCollision.y > rightCollision.y) {
							// Left collision is closer than right collision
							if (rightCollideWhenMoving == noone) {
								correctChoice = 1; // Go right
							}
						}
						else {
							// Right collision is closer than left collsion
							if (leftCollideWhenMoving == noone) {
								correctChoice = -1; // Go left
							}
						}
					}
				}
			}
		}
		var randomChoice = random(1);
		if (randomChoice > chance) {
			// Make wrong choice
			// Make correct choice the opposite direction
			correctChoice *= -1;
		}
		// Move according to choice
		if (correctChoice = 1) {
			players[i].cpuRight = true;
		}
		else if (correctChoice = -1) {
			players[i].cpuLeft = true;
		}
	}
}
if (updated) {
	place++;
	updated = false;
}
if (finished) {
	endGame();
}


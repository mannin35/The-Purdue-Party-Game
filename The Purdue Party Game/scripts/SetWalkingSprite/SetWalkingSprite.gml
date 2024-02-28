// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SetWalkingSprite(player, xDiff, yDiff) {
	var up = false;
	var down = false;
	var right = false;
	var left = false;
	if (xDiff > 0) {
		right = true;
	}
	else if (xDiff < 0) {
		left = true;
	}
	if (yDiff > 0) {
		down = true;
	}
	else if (yDiff < 0) {
		up = true;	
	}
			
	// TODO set sprites
	if (right) {
		if (up) {
		// UpRight
		}
		else if (down) {
			// DownRight
		}
		else {
			// Right
		}
	}
	else if (left) {
		if (up) {
			// UpLeft
		}
		else if (down) {
			// DownLeft
		}
		else {
			// Left
		}
	}
	else {
		if (up) {
			// Up
		}
		else  {
			// Down
		}
	}
}
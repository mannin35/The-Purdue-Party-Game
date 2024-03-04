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
	xDiff = abs(xDiff);
	yDiff = abs(yDiff);
	// TODO set sprites
	if (right) {
		if (up) {
		// UpRight
			if (xDiff > yDiff) {
				// Right
				object_set_sprite(player, SP_PlayerRight);
			}
			else {
				// Up
				object_set_sprite(player, SP_PlayerUp);
			}
		}
		else if (down) {
			// DownRight
			if (xDiff > yDiff) {
				// Right
				object_set_sprite(player, SP_PlayerRight);
			}
			else {
				// Down
				object_set_sprite(player, SP_PlayersDown);
			}
		}
		else {
			// Right
			object_set_sprite(player, SP_PlayerRight);
		}
	}
	else if (left) {
		if (up) {
			// UpLeft
			if (xDiff > yDiff) {
				// Left
				object_set_sprite(player, SP_PlayerLeft);
			}
			else {
				// Up
				object_set_sprite(player, SP_PlayerUp);
			}
		}
		else if (down) {
			// DownLeft
			if (xDiff > yDiff) {
				// Left
				object_set_sprite(player, SP_PlayerLeft);
			}
			else {
				// Down
				object_set_sprite(player, SP_PlayersDown);
			}
		}
		else {
			// Left
			object_set_sprite(player, SP_PlayerLeft);
		}
	}
	else {
		if (up) {
			// Up
			object_set_sprite(player, SP_PlayerUp)
		}
		else  {
			// Down
			object_set_sprite(player, SP_PlayersDown)
		}
	}
}
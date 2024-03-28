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
				player.sprite_index =  SP_PlayerRight;
			}
			else {
				// Up
				player.sprite_index =  SP_PlayerUp;
			}
		}
		else if (down) {
			// DownRight
			if (xDiff > yDiff) {
				// Right
				player.sprite_index =  SP_PlayerRight;
			}
			else {
				// Down
				player.sprite_index =  SP_PlayersDown;
			}
		}
		else {
			// Right
			player.sprite_index =  SP_PlayerRight;
		}
	}
	else if (left) {
		if (up) {
			// UpLeft
			if (xDiff > yDiff) {
				// Left
				player.sprite_index =  SP_PlayerLeft;
			}
			else {
				// Up
				player.sprite_index =  SP_PlayerUp;
			}
		}
		else if (down) {
			// DownLeft
			if (xDiff > yDiff) {
				// Left
				player.sprite_index =  SP_PlayerLeft;
			}
			else {
				// Down
				player.sprite_index =  SP_PlayersDown;
			}
		}
		else {
			// Left
			player.sprite_index = SP_PlayerLeft;
		}
	}
	else {
		if (up) {
			// Up
			player.sprite_index = SP_PlayerUp;
		}
		else  {
			// Down
			player.sprite_index = SP_PlayersDown;
		}
	}
}
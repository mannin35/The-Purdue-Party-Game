/// @ Update player position as needed
if (numSpaces > 0) {
	if (!isMoving) {
		// TODO change space.next[0] to player decision
		index = 0;
		if (array_length(space.next) > 1) {
			if (space == SpaceFountain) {
				numSpaces++;
			}
		}
		nextSpace = space.next[index];
		// Variables for determining where to move
		xFinal = nextSpace.x;
		yFinal = nextSpace.y;
		xDiff = xFinal - x;
		yDiff = yFinal - y;
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
		isMoving = true;
		numSpaces--;
		if (numSpaces == 0) {
			OBJ_RollDiceButton.is_next = true;
			global.currentplayer = (global.currentplayer + 1) % 4;
			isMoving = false;
		}
	}
	else if (point_distance(x, y, xFinal, yFinal) > 5) {
    move_towards_point(xFinal, yFinal, speedMultiplier);
	}
	else { 
		if (numSpaces == 1) {
			speed = 0;
		}
		isMoving = false;
		space = nextSpace;
	}
	
	/*
	else
		if (xCurrent < abs(xDiff)) {
			xCurrent += abs(xSpeed);
			x += xSpeed;
		}
		else {
			isMoving = false;
		}
		if (yCurrent < abs(yDiff)) {
			yCurrent += abs(ySpeed);
			y+= ySpeed;
			isMoving = true;
		}
		*/
}









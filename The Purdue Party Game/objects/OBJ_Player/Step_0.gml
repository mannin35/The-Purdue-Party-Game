/// @ Update player position as needed
pathChosen = false;
index = 0;
// Check for input
if (awaitingInput) {
	var left_key = keyboard_check_pressed(vk_left);
	var right_key = keyboard_check_pressed(vk_right);
	var up_key = keyboard_check_pressed(vk_up);
	var down_key = keyboard_check_pressed(vk_down);
	var button_x = keyboard_check_pressed(vk_space);
	// Confirm path if space is pressed
	if (button_x) {
		pathChosen = true;
		awaitingInput = false;
		activeArrow.visible = false;
		activeArrow.image_index = 0;
		inactiveArrow.visible = false;
		// Get path index
		if (activeArrow == arrows[0]) {
			index = 0;
		}
		else {
			index = 1;
		}
	}
	// Else change active arrow if any arrow is pressed
	else if (left_key || right_key || up_key || down_key) {
		temp = activeArrow;
		activeArrow = inactiveArrow;
		inactiveArrow = temp;
		activeArrow.image_index = 1;
		inactiveArrow.image_index = 0;
	}
}

// Move only if number of spaces to go is at least one
if (numSpaces > 0 && !awaitingInput) {
	if (!isMoving) {
		// Get player decision if there is a branching path
		if ((array_length(space.next) > 1) && (!pathChosen)) {
			if (numSpaces > 1) {
				speed = 0;
				// Fountain space isn't a real space, just a placeholder to get player decision
				if (space == SpaceFountain) {
					// Make player move one more space
					numSpaces++;
				}
				arrows = space.arrows;
				// Default path is arrows[0]
				activeArrow = arrows[0];
				inactiveArrow = arrows[1];
				activeArrow.image_index = 1;
				activeArrow.visible = true;
				inactiveArrow.visible = true;
				awaitingInput = true;
			}
			// If landing on space which branches, continue to execution for ending player turn
			else {
				pathChosen = true;
			}
		}
		// Path is chosen if there is only one space to go 
		else if (array_length(space.next) ==1) {
			pathChosen = true;
		}
		// If the next space has been determined
		if (pathChosen) {
			nextSpace = space.next[index];
			// Variables for determining where to move
			xFinal = nextSpace.x;
			yFinal = nextSpace.y;
			xDiff = xFinal - x;
			yDiff = yFinal - y;
			// Set the correct walking sprite
			//SetWalkingSprite(self, xDiff, yDiff);
			isMoving = true;
			numSpaces--;
			// Stop moving if reached final space
			if (numSpaces == 0) {
				OBJ_RollDiceButton.is_next = true;
				global.currentplayer = (global.currentplayer + 1) % 4;
				isMoving = false;
				ResetButtons(global.currentplayer);
				ShowButtons();
			}
		}
	}
	else if (point_distance(x, y, xFinal, yFinal) > 5) {
    move_towards_point(xFinal, yFinal, speedMultiplier);
	}
	else { 
		// Set speed to 0 when reaching final space (numSpaces == 1)
		if (numSpaces == 1) {
			speed = 0;
		}
		isMoving = false;
		space = nextSpace;
	}
}









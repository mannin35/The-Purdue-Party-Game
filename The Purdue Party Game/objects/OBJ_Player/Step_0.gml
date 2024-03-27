/// @ Update player position as needed
pathChosen = false;
index = 0;
currentPlayer = global.localPlayers[global.currentplayer];
if (waitForDegree) {
	exit;
}
// Check for input
if (awaitingInput) {
	currentPlayer.image_speed = 0;
	/*
	 * Current CPU path decision
	 */
	 var path = -1;
	 if (isCPU) {
		 button_x = true;
		 path = ceil(random_range(0, 1));
	 }
	 else {
		var controllerIndex = global.currentplayer;
		var controller = global.playercontrollerindices[index];
		var left_key = (keyboard_check_pressed(vk_left)) || 
			(gamepad_axis_value(controller, gp_axislh) <  -dead_zone) ;
		var right_key = (keyboard_check_pressed(vk_right)) ||
			(gamepad_axis_value(controller, gp_axislh) >  dead_zone);
		var up_key = (keyboard_check_pressed(vk_up))| 
			(gamepad_axis_value(controller, gp_axislv) < -dead_zone);
		var down_key = (keyboard_check_pressed(vk_down)) || 
			(gamepad_axis_value(controller, gp_axislv) > dead_zone);
		var button_x =(keyboard_check_pressed(vk_space)) || 
			(gamepad_button_check_pressed(controller, gp_face1));
	 }
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
		if (path != -1) {
			index = path;
		}
	}
	// Else change active arrow if any direction is pressed
	else if (left_key || right_key || up_key || down_key) {
		if (!global.delayInput) {
			temp = activeArrow;
			activeArrow = inactiveArrow;
			inactiveArrow = temp;
			activeArrow.image_index = 1;
			inactiveArrow.image_index = 0;
			global.delayInput = true;
			OBJ_LocalButtonInfo.alarm[0] = 15;
		}
	}
}
// Move only if number of spaces to go is at least one
if (numSpaces > 0 && !awaitingInput) {
	if (!isMoving) {
		// Get player decision if there is a branching path
		if ((array_length(space.next) > 1) && (!pathChosen)) {
			// Fountain space isn't a real space, just a placeholder to get player decision
			if (space == SpaceFountain) {
				// Make player move one more space
				numSpaces++;
			}
			if (numSpaces > 1) {
				speed = 0;
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
			SetWalkingSprite(currentPlayer, xDiff, yDiff);
			sprite_set_speed(sprite_index, walkAnimationSpeed, spritespeed_framespersecond);
			currentPlayer.image_speed = 1;
			currentPlayer.image_index = walkingIndex;
			isMoving = true;
			numSpaces--;
			// Stop moving if reached final space
			if (numSpaces == 0) {
				//Calls function using spaceType on last space where the type is a string to dictate what to do
				OBJ_RollDiceButton.is_next = true;
				currentPlayer.image_speed = 0;
				sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
				SpaceFunction(string(space.spaceType));
				if (space.object_index != OBJ_ShopSpace && space.object_index != OBJ_BusSpace) {
					alarm[0] = 120;
				}
			}
		}
	}
	// Keep moving if distance to next space is more than 5 pixels
	else if (point_distance(x, y, xFinal, yFinal) > 5) {
	    move_towards_point(xFinal, yFinal, speedMultiplier);
		// Change sprite walking index
		if ((currentPlayer.image_index + 2*increasePerFrame) >= walkingIndex + 3) {
			sprite_set_speed(sprite_index, -1 * walkAnimationSpeed, spritespeed_framespersecond);
		}
		else if ((currentPlayer.image_index - 2*increasePerFrame) <= walkingIndex ) {
						sprite_set_speed(sprite_index, walkAnimationSpeed, spritespeed_framespersecond);
		}
	}
	else { 
		// Set speed to 0 when reaching final space (numSpaces == 1)
		if (numSpaces == 1) {
			speed = 0;
		}
		isMoving = false;
		space = nextSpace;
		// Check if there is a degree on current space
		show_debug_message(object_get_name(space.object_index));
		if ((object_get_name(space.object_index) == "OBJ_DegreeSpace") && (space.hasDegree)) {
			speed = 0;
			OBJ_DegreeLogic.passDegree(currentPlayer);
		}
	}
}









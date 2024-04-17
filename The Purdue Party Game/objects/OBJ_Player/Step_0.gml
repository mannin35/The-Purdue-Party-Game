/// @ Update player position as needed
pathChosen = false;
index = 0;
var controller = global.playercontrollerindices[global.currentplayer];
button_start = (gamepad_button_check_released(controller, gp_start));
currentPlayer = global.localPlayers[global.currentplayer];

	// Confirm path if space is pressed
	//show_debug_message("{0} {1} {2}", button_start, OBJ_SavePrompt.visible, global.hasPressed)
if(numSpaces == 0 && room == RM_LocalView){
	if(button_start && OBJ_SavePrompt.visible == false && (global.hasPressed == false)){
		HideButtons()
		global.hasPressed = true;
		OBJ_SavePrompt.alarm[0] = 15;
		OBJ_SavePrompt.visible = true;
		OBJ_SavePrompt.x = global.localPlayers[global.currentplayer].x;
		OBJ_SavePrompt.y = global.localPlayers[global.currentplayer].y;
	}
}
if (waitForDegree) {
	exit;
}
if (previousBoilerBucks < boilerBucks) {
	totalBoilerBucks += boilerBucks - previousBoilerBucks;
	previousBoilerBucks = boilerBucks;
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
			 path = space.toNearestDegree[OBJ_DegreeLogic.degreeIndex];
	 }
	 else {
		var controllerIndex = global.currentplayer;
		var controller = global.playercontrollerindices[controllerIndex];
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
				if (!currentPlayer.isCPU) {
					// Default path is arrows[0]
					activeArrow = arrows[0];
					inactiveArrow = arrows[1];
					activeArrow.image_index = 1;
					activeArrow.visible = true;
					inactiveArrow.visible = true;
				}
				awaitingInput = true;
			}
			// If landing on space which branches, continue to execution for ending player turn
			else {
				pathChosen = true;
			}
		}
		// Path is chosen if there is only one space to go 
		else if (array_length(space.next) ==1) {
			if (space.isDegreeSpace) {
				numSpaces++;
			}
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
			sprite_set_speed(sprite_index, lastImageSpeed, spritespeed_framespersecond);
			if (image_index < currentPlayer.walkingIndex || image_index > currentPlayer. walkingIndex + numWalkingFrames) {
				image_index = walkingIndex;
			}
			if (image_speed == 0) {
				image_speed = 1;
			}
			isMoving = true;
			numSpaces--;
			// Stop moving if reached final space
			if (numSpaces == 0) {
				//Calls function using spaceType on last space where the type is a string to dictate what to do
				OBJ_RollDiceButton.is_next = true;
				isMoving = false;
				currentPlayer.image_speed = 0;
				currentPlayer.image_index = currentPlayer.walkingIndex + numWalkingFrames;
				sprite_set_speed(sprite_index, 0, spritespeed_framespersecond);
				SpaceFunction(string(space.spaceType));
			}
		}
	}
	// Keep moving if distance to next space is more than 5 pixels
	else if (point_distance(x, y, xFinal, yFinal) > 5) {
	    move_towards_point(xFinal, yFinal, speedMultiplier);
		// Change sprite walking index
		if ((currentPlayer.image_index + 3*increasePerFrame) >= currentPlayer.walkingIndex + numWalkingFrames) {
			sprite_set_speed(sprite_index, -1 * walkAnimationSpeed, spritespeed_framespersecond);
			lastImageSpeed = -1 * walkAnimationSpeed;
		}
		else if ((currentPlayer.image_index - 3*increasePerFrame) <= currentPlayer.walkingIndex ) {
			sprite_set_speed(sprite_index, walkAnimationSpeed, spritespeed_framespersecond);
			lastImageSpeed = walkAnimationSpeed;
		}
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









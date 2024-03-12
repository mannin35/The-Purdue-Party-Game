/// @ Update player position as needed
pathChosen = false;
index = 0;
// Check for input
if (awaitingInput) {
	//TODO CHANGE TO CURRENT PLAYER
	var controllerIndex = 0;
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
			SetWalkingSprite(global.localPlayers[global.currentplayer], xDiff, yDiff);
			isMoving = true;
			numSpaces--;
			// Stop moving if reached final space
			if (numSpaces == 0) {
				show_debug_message("{0}", string(space.spaceType))
				SpaceFunction(string(space.spaceType));
				OBJ_RollDiceButton.is_next = true;
				image_index = walkingIndex / 2;
				global.currentplayer = (global.currentplayer + 1) % 4;
				isMoving = false;
				if(object_get_name(object_index) == "OBJ_Player4Local"){
					OBJ_PlayerInfo.end_of_round = true;
				}
				ResetButtons(global.currentplayer);
				ShowButtons();
			}
		}
	}
	// Keep moving if distance to next space is more than 5 pixels
	else if (point_distance(x, y, xFinal, yFinal) > 5) {
	    move_towards_point(xFinal, yFinal, speedMultiplier);
		// Change sprite walking index
		if (image_index > walkingIndex) {
			image_index = walkingIndex;
		}
		else {
			image_index++;
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









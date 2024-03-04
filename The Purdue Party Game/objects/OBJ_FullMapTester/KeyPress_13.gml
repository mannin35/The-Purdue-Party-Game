/// @description Insert description here
// You can write your code in this editor

//varibale margin of error for all tests
var moe = 5;

show_debug_message("Results of test for correct game board state: ");
show_debug_message("_____________________________________________\n");

//TEST: that player characters are in correct position
show_debug_message("Character Location Tests: ");
if (abs(OBJ_Player1Full.x - OBJ_Player1Local.x) < moe
	&& abs(OBJ_Player1Full.y - OBJ_Player1Local.y) < moe) {
	show_debug_message("\tPlayer 1 character in correct location");
} else {
	show_debug_message("\tPlayer 1 character NOT in correct location");
}
if (abs(OBJ_Player2Full.x - OBJ_Player2Local.x) < moe
	&& abs(OBJ_Player2Full.y - OBJ_Player2Local.y) < moe) {
	show_debug_message("\tPlayer 2 character in correct location");
} else {
	show_debug_message("\tPlayer 2 character NOT in correct location");
}
if (abs(OBJ_Player3Full.x - OBJ_Player3Local.x) < moe
	&& abs(OBJ_Player3Full.y - OBJ_Player1Local.y) < moe) {
	show_debug_message("\tPlayer 3 character in correct location");
} else {
	show_debug_message("\tPlayer 3 character NOT in correct location");
}
if (abs(OBJ_Player4Full.x - OBJ_Player4Local.x) < moe
	&& abs(OBJ_Player4Full.y - OBJ_Player1Local.y) < moe) {
	show_debug_message("\tPlayer 4 character in correct location");
} else {
	show_debug_message("\tPlayer 4 character NOT in correct location");
}

//TEST: that arrow is above correct player
show_debug_message("Current Player Arrow Test: ");
if (OBJ_PlayerArrow.current_player == 1) {
	if (abs(OBJ_PlayerArrow.x - (OBJ_Player1Full.x - 30)) < moe
	&& abs(OBJ_PlayerArrow.y - (OBJ_Player1Full.y - 55)) < moe) {
		show_debug_message("\tArrow correctly pointing at current Player 1");
	} else {
		show_debug_message("\tArrow NOT pointing at current Player 1");
	}
} else if (OBJ_PlayerArrow.current_player == 2) {
	if (abs(OBJ_PlayerArrow.x - (OBJ_Player2Full.x - 30)) < moe
	&& abs(OBJ_PlayerArrow.y - (OBJ_Player2Full.y - 55)) < moe) {
		show_debug_message("\tArrow correctly pointing at current Player 2");
	} else {
		show_debug_message("\tArrow NOT pointing at current Player 2");
	}
} else if (OBJ_PlayerArrow.current_player == 3) {
	if (abs(OBJ_PlayerArrow.x - (OBJ_Player3Full.x - 30)) < moe
	&& abs(OBJ_PlayerArrow.y - (OBJ_Player3Full.y - 55)) < moe) {
		show_debug_message("\tArrow correctly pointing at current Player 3");
	} else {
		show_debug_message("\tArrow NOT pointing at current Player 3");
	}
} else if (OBJ_PlayerArrow.current_player == 4) {
	if (abs(OBJ_PlayerArrow.x - (OBJ_Player4Full.x - 30)) < moe
	&& abs(OBJ_PlayerArrow.y - (OBJ_Player4Full.y - 55)) < moe) {
		show_debug_message("\tArrow correctly pointing at current Player 4");
	} else {
		show_debug_message("\tArrow NOT pointing at current Player 4");
	}
} else {
	show_debug_message("\tCurrent player is invalid");
}

//TEST: that non-current player markers are in the right place
show_debug_message("Non-current Player Marker Tests: ");
if (OBJ_PlayerArrow.current_player != 1) {
	if (abs(OBJ_Player1Marker.x - (OBJ_Player1Full.x - 15)) < moe
		&& abs(OBJ_Player1Marker.y - (OBJ_Player1Full.y -15)) < moe){
		show_debug_message("\tMarker correctly on non-current Player 1");
	} else {
		show_debug_message("\tMarker NOT on non-current Player 1");
	}
}
if (OBJ_PlayerArrow.current_player != 2) {
	if (abs(OBJ_Player2Marker.x - (OBJ_Player2Full.x - 15)) < moe
		&& abs(OBJ_Player2Marker.y - (OBJ_Player2Full.y -15)) < moe){
		show_debug_message("\tMarker correctly on non-current Player 2");
	} else {
		show_debug_message("\tMarker NOT on non-current Player 2");
	}
}
if (OBJ_PlayerArrow.current_player != 3) {
	if (abs(OBJ_Player3Marker.x - (OBJ_Player3Full.x - 15)) < moe
		&& abs(OBJ_Player3Marker.y - (OBJ_Player3Full.y -15)) < moe){
		show_debug_message("\tMarker correctly on non-current Player 3");
	} else {
		show_debug_message("\tMarker NOT on non-current Player 3");
	}
}
if (OBJ_PlayerArrow.current_player != 4) {
	if (abs(OBJ_Player4Marker.x - (OBJ_Player4Full.x - 15)) < moe
		&& abs(OBJ_Player4Marker.y - (OBJ_Player4Full.y -15)) < moe){
		show_debug_message("\tMarker correctly on non-current Player 4");
	} else {
		show_debug_message("\tMarker NOT on non-current Player 4");
	}
}

//TEST: that degree marker is placed in right location
show_debug_message("Degree Location Tests: ");
if (abs(OBJ_DegreeFull.x - (global.degreeposition[0] - 3)) < moe 
	&& abs(OBJ_DegreeFull.y - global.degreeposition[1]) < moe) {
	show_debug_message("\tDegree marker correctly shows current degree location");
} else {
	show_debug_message("\tDegree marker NOT in correct location");	
}


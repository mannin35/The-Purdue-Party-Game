/// @description Insert description here
// You can write your code in this editor

//update sprite to reflect activity
if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

/*
TO ADD: ENSURING INPUT ONLY FROM CURRENT PLAYER COUNTS
*/

var dead_zone = .2;
var current_player_index = global.playercontrollerindices[0];

//checks for moving to the right and pressing button
//var right_key = keyboard_check_pressed(vk_right);
//var button_x = keyboard_check_pressed(vk_space);
var right_key = gamepad_axis_value(current_player_index,gp_axislh);
var button_x = gamepad_button_check(current_player_index, gp_face1);


//display scoreboard if button pressed
if(button_x && OBJ_ViewScoreboardButton.current){
	if(room == RM_LocalView) {
		//set scoreboard display to visible, trigger rank calculation
		//in scoreboard object
		OBJ_Scoreboard.visible = true;
	}
} else {
	OBJ_Scoreboard.visible = false;	
}

if(right_key > dead_zone && OBJ_ViewMapButton.current) {
	//switch active button to view scoreboard
	//set this button as active
	OBJ_ViewMapButton.current = false;
	image_index = 1
	OBJ_ViewMapButton.image_index = 0;
	OBJ_ViewScoreboardButton.current = true;
}

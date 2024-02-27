/// @description Insert description here
// You can write your code in this editor

//update sprite to reflect activity
if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;
var current_player_index = global.playercontrollerindices[0];

/*
TO ADD: ENSURING INPUT ONLY FROM CURRENT PLAYER COUNTS
*/

//checks for moving to the left and pressing button
//var left_key = -1*keyboard_check_pressed(vk_left);
//var button_x = keyboard_check_pressed(vk_space);
var left_key = gamepad_axis_value(current_player_index,gp_axislh);
var button_x = gamepad_button_check_pressed(current_player_index, gp_face1);

//change rooms to full map view if button pressed
if(button_x && OBJ_ViewMapButton.current){
	OBJ_ViewScoreboardButton.current = false;
	OBJ_ViewMapButton.current = false;
	room_goto(RM_MainMap);
}

if(left_key <(-1*dead_zone) && OBJ_ViewScoreboardButton.current) {
	//switch active button to view map
	//set this button as active
	OBJ_ViewScoreboardButton.current = false;
	image_index = 1
	OBJ_ViewScoreboardButton.image_index = 0;
	OBJ_ViewMapButton.current = true;
}
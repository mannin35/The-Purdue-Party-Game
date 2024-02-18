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

//checks for moving to the right and pressing button
//var right_key = keyboard_check_pressed(vk_right);
//var button_x = keyboard_check_pressed(vk_space);
var right_key = gamepad_axis_value(4,gp_axislh);
var button_x = gamepad_button_check_pressed(4, gp_face1);


//display scoreboard if button pressed
if(button_x && OBJ_ViewScoreboardButton.current){
	if(room == RM_LocalView) {
		show_message("Pressed");
	}
} 

if(right_key > dead_zone && OBJ_ViewMapButton.current) {
	//switch active button to view scoreboard
	//set this button as active
	OBJ_ViewMapButton.current = false;
	image_index = 1
	OBJ_ViewMapButton.image_index = 0;
	OBJ_ViewScoreboardButton.current = true;
}

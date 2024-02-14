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
var right_key = keyboard_check_pressed(vk_right);
var button_x = keyboard_check_pressed(vk_space);

//switch active button to view scoreboard
if(right_key && OBJ_ViewMapButton.current) {
	//set this button as active
	OBJ_ViewScoreboardButton.current = true;
	image_index = 1
	OBJ_ViewMapButton.image_index = 0;
	OBJ_ViewMapButton.current = false;
}

//display scoreboard if button pressed
if(button_x && OBJ_ViewScoreboardButton.current){
	if(room == RM_LocalView) {
		show_message("Pressed");
	}
} 



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

/*
TO ADD: ENSURING INPUT ONLY FROM CURRENT PLAYER COUNTS
*/

//checks for moving to the left and pressing button
var left_key = keyboard_check_pressed(vk_left);
var button_x = keyboard_check_pressed(vk_space);

//switch active button to view map
if(left_key && OBJ_ViewScoreboardButton.current) {
	//set this button as active
	OBJ_ViewMapButton.current = true;
	image_index = 1
	OBJ_ViewScoreboardButton.image_index = 0;
	OBJ_ViewScoreboardButton.current = false;
}

//change rooms to full map view if button pressed
if(button_x && OBJ_ViewMapButton.current){
	if(room == RM_LocalView) {
		OBJ_ViewMapButton.current = false;
		room_goto(RM_MainMap)
	}
}


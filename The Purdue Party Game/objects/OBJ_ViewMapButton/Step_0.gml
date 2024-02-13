/// @description Insert description here
// You can write your code in this editor

if(current) {
	image_index = 1;	
}
else {
	image_index = 0;	
}

var dead_zone = .2;

//checks for moving to the left
var left_key = keyboard_check_pressed(vk_left);
var button_x = keyboard_check_pressed(vk_space);

if(left_key && OBJ_ViewScoreboardButton.current) {
	//set this button as active
	OBJ_ViewMapButton.current = true;
	image_index = 1
	OBJ_ViewScoreboardButton.image_index = 0;
	OBJ_ViewScoreboardButton.current = false;
}

if(button_x && OBJ_ViewMapButton.current){
	if(room == RM_LocalView) {
		room_goto(RM_MainMap)	
	}
	OBJ_ViewMapButton.current = false;
}


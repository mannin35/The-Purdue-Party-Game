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


//checks for pressing button
//var button_x = keyboard_check_pressed(vk_space);
var button_x = gamepad_button_check_pressed(0, gp_face1);

//return to local view of map if button pressed
if(button_x && OBJ_ReturnToLocalButton.current){
	if(room == RM_MainMap) {
		OBJ_ReturnToLocalButton.current = false;
		room_goto(RM_LocalView);
	}
}






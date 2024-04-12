/// @description Insert description here
// You can write your code in this editor

left_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[0], gp_padl); // left
up_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[0], gp_padu)); // up
right_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[0], gp_padr); // right
down_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[0], gp_padd)); // down

//show_debug_message(alarm_get(0));
/*if (up_input) {
	if (alarm[0] < 0) {
		vsp = -walksp;
		alarm[0] = 8;
	}
}*/

//hsp = (right_input - left_input) * walksp;
//vsp = (down_input - up_input) * walksp;

/*if (left_input) {
	hsp = -walksp;
} else if (right_input) {
	hsp = walksp;
} else if (up_input) {
	vsp = -walksp;
	//image_index = 
} else if (down_input) {
	vsp = walksp;
} else {
	hsp = 0;
	vsp = 0;
}

if (x + hsp <= 32 || x + hsp >= 

x += hsp;
y += vsp;
*/


if (left_input) { // if left or right are pressed
	if (alarm_get(0) < 0) {
		hsp = -walksp;
		alarm[0] = 8;
	}
} else if (right_input) {
	if (alarm_get(0) < 0) {
		hsp = walksp;
		alarm[0] = 8;
	}
} else if (up_input) {
	if (alarm_get(0) < 0) {
		vsp = -walksp;
		alarm[0] = 8;
	}
}
 else if (down_input) {
	if (alarm_get(0) < 0) {
		vsp = walksp;
		alarm[0] = 8;
	}
}

if (place_meeting(x + hsp * 8, y, oBorder)) { // horiz border col
	hsp = 0;	
}
if (place_meeting(x, y + vsp * 8, oBorder)) { // vert border col
	vsp = 0;	
}

x += hsp;
y += vsp;
	//moving = true;
	
	//x += hsp;
	//hsp = 0
	
	/*hsp = (right_input - left_input) * walksp;
	x += hsp;
	moving = true;
	alarm[2] = 30; // horiz
	
	
} else if ((down_input || up_input) && hsp == 0) { // if up or down are pressed
	vsp = (down_input - up_input) * walksp;
	alarm[1] = 1
	//moving = true;
	/*for (i = 0; i < 30; i++) {
		y += vsp;
	}
	vsp = 0
	/*y += vsp;
	moving = true;
	alarm[2] = 30; // vert
}*/








/// @description Insert description here
// You can write your code in this editor
if !(over) {
	if (TTT_Controller.cn_swap = 0) { // controller swap
		left_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) < -dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padl); // left
		up_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) < -dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padu)); // up
		right_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) > dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padr); // right
		down_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) > dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padd)); // down
	} else if (TTT_Controller.cn_swap = 1) { 
		left_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) > dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padd)); // down
		up_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) < -dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padl); // left
		right_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) < -dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padu)); // up
		down_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) > dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padr); // right
	} else if (TTT_Controller.cn_swap = 2) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) > dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padr); // right
		up_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) > dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padd)); // down
		right_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) < -dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padl); // left
		down_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) < -dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padu)); // up 
	}  else if (TTT_Controller.cn_swap = 3) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) < -dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padu)); // up 
		up_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) > dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padr); // right
		right_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislv) > dead_zone || gamepad_button_check(global.playercontrollerindices[2], gp_padd)); // down
		down_input = (gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) < -dead_zone) || gamepad_button_check(global.playercontrollerindices[2], gp_padl); // left
	}
	hsp = (right_input - left_input) * walksp;
	vsp = (down_input - up_input) * walksp;

	if (left_input) {
		//image_xscale = -1.5;
	}
	if (right_input) {
		//image_xscale = 1.5;
	}
	if (up_input) {
		//image_xscale = -1;
	}
	if (down_input) {
		//image_xscale = -1;
	}
} else {
	walksp = hsp = vsp = 0;		
}
if place_meeting(x + hsp, y, oMaze) {	
	hsp = 0;	
}
if place_meeting(x, y + vsp, oMaze) {
	vsp = 0;	
}
if place_meeting(x, y, oFinish) {
	if !(over) {
		global.minigameResults[2] = oController.pos;
		show_debug_message("player 1 pos = " + string(oController.pos));
		oController.pos++;
		timer.visible = false;
	}
	over = true;
}

//hsp = moveH * walksp;
//vsp = moveV * walksp;

/*if (left_input && !place_meeting(x + sign(hsp) - 1, y, oMaze)) { // input
	hsp = -walksp;
	vsp = 0;
} else if (right_input && !place_meeting(x + sign(hsp) + 1, y, oMaze)) {
	hsp = walksp;
	vsp = 0;
} else if (up_input && !place_meeting(x, y + sign(hsp) - 1, oMaze)) {
	hsp = 0;
	vsp = -walksp;
} else if (down_input && !place_meeting(x, y + sign(hsp) + 1, oMaze)) {
	hsp = 0;
	vsp = walksp;
}*/

x += hsp; // the parts that go each direction
y += vsp;

// Horizontal Collision
/*if (place_meeting(x + hsp, y ,oMaze))
{
	hsp = 0;
}

// Vertical Collision
if (place_meeting(x, y + vsp, oMaze))
{
	vsp = 0;
}*/




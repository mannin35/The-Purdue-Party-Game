/// @description Insert description here
// You can write your code in this editor
if !(over) {
	if (TTT_Controller.cn_swap = 0) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) < -dead_zone);
		right_input =(gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) > dead_zone); 
		up_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) < -dead_zone);
		down_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) > dead_zone);
	} else if (TTT_Controller.cn_swap = 1) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) > dead_zone);
		right_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) < -dead_zone);
		up_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) > dead_zone); 
		down_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) < -dead_zone);
	} else if (TTT_Controller.cn_swap = 2) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) < -dead_zone);
		right_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) > dead_zone);
		up_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) < -dead_zone);
		down_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) > dead_zone); 
	}  else if (TTT_Controller.cn_swap = 3) {
		left_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) > dead_zone); 
		right_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) < -dead_zone);
		up_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) > dead_zone);
		down_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) < -dead_zone);
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
	hsp = vsp = 0;	
}
if place_meeting(x + hsp, y, oMaze) {	
	hsp = 0;	
}
if place_meeting(x, y + vsp, oMaze) {
	vsp = 0;	
}
if place_meeting(x, y, oFinish) {
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




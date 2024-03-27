/// @description Insert description here
// You can write your code in this editor
if(global.localPlayers[3].isCPU) {
	//CODE FOR CPU PLAYER
	
	if(walksp!=0) {
		//see if at finish line
		if place_meeting(x, y, oFinish) {
			if !(over) {
				global.minigameResults[3] = oController.pos;
				show_debug_message("player 4 pos = " + string(oController.pos));
				oController.pos++;
				timer.visible = false;
			}
			walksp = 0;
			over = true;
		} else {
			//calc distance to finish
			dist_to_fin = point_distance(x,y,player_four_finish_TTT.x, player_four_finish_TTT.y);
			
			//check if close enough for direct route
			if((dist_to_fin<250 && global.CPUSettings[3]==1) || (dist_to_fin<400 && global.CPUSettings[3]==2)) {
				direct_path = true;	
			}
			if(!direct_path) {
				//decide next direction
				choices = [];
				number_of_choices = 0;

				if(direction!=270) {
					if(place_meeting(x, y-2, oMaze) == false) {
						choices[number_of_choices] = 90;
						number_of_choices++;
					}
				}

				if(direction!=90) {
					if(place_meeting(x, y+2, oMaze) == false) {
						choices[number_of_choices] = 270;
						number_of_choices++;
					}
				}


				if(direction!=0) {
					if(place_meeting(x-8, y, oMaze) == false) {
						choices[number_of_choices] = 180;
						number_of_choices++;
					}
				}


				if(direction!=180) {
					if(place_meeting(x+8, y, oMaze) == false) {
						choices[number_of_choices] = 0;
						number_of_choices++;
					}
				}

				if(number_of_choices==0) {
					direction = (direction+180)%360;
					move_contact_solid(direction, walksp);
				} else {
					new_direction = choices[irandom(number_of_choices-1)];
					direction = new_direction;
					move_contact_solid(direction, walksp);
				}
			}
		}
	}
	
} else {
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
			global.minigameResults[3] = oController.pos;
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
}



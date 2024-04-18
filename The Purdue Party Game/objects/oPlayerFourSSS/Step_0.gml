/// @description Insert description here
// You can write your code in this editor

left_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislh) < -dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padl); // left
up_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislv) < -dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padu)); // up
right_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislh) > dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padr); // right
down_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislv) > dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padd)); // down

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

if(global.localPlayers[3].isCPU) {
	//CODE FOR CPU PLAYER
	
	if(walksp>0) {
		//see if at finish line
		if (y <= 16) {
			if !(over) {
				global.minigameResults[3] = oSSSControl.pos++;
				show_debug_message("player 4 pos = " + global.minigameResults[3]);
				oSSSControl.pos++;
				sprite_index = SP_PlayerDownSSS;
				image_index = index * 3 + 2;
			}
			walksp = 0;
			over = true;
		} else {
			//calc distance to finish
			dist_to_fin = y - 16;
			if (global.CPUSettings[3]==0) {
				direction = 90;
			} else {
			//check if close enough for direct route
			if((dist_to_fin<250 && global.CPUSettings[3]==1) || (dist_to_fin<400 && global.CPUSettings[3]==2)) {
			    direct_path = true;	
			}
			if(!direct_path) {
				//decide next direction
				choices = [];
				number_of_choices = 0;

				if(direction!=270) {
					if(place_meeting(x, y-20, oVehicle) == false) {
						choices[number_of_choices] = 90;
						number_of_choices++;
					}
				}

				if(direction!=90) {
					if(place_meeting(x, y+20, oVehicle) == false) {
						choices[number_of_choices] = 270;
						number_of_choices++;
					}
				}


				if(direction!=0) {
					if(place_meeting(x-80, y, oVehicle) == false) {
						choices[number_of_choices] = 180;
						number_of_choices++;
					}
				}


				if(direction!=180) {
					if(place_meeting(x+80, y, oVehicle) == false) {
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
	}
	
} else {
if (!over && !hit && !grab && !grabbed) {
	if (left_input) { // if left or right are pressed
		if (alarm_get(0) < 0) {
			moving = true
			sprite_index = SP_PlayerLeftSSS;
			image_index = index * 3 + irandom(1);
			//alarm[1] = 4;
			//image_xscale = -1.6;
			//hsp = -walksp;
			if ((x - player_two_SSS.x < 64 && x - player_two_SSS.x >= 0 && y == player_two_SSS.y) || (x - player_three_SSS.x < 64 && x - player_three_SSS.x >= 0 && y == player_three_SSS.y) || (x - player_one_SSS.x < 64 && x - player_one_SSS.x >= 0 && y == player_one_SSS.y)) {
				hsp = 0;
			} else {
				hsp = -walksp;
			}
			alarm[0] = 8;
		}
	} else if (right_input) {
		if (alarm_get(0) < 0) {
			moving = true
			sprite_index = SP_PlayerRightSSS;
			image_index = index * 3 + irandom(1);
			//alarm[1] = 4;
			//image_xscale = 1.6;
			//hsp = walksp;
			if ((x - player_two_SSS.x > -64 && x - player_two_SSS.x <= 0 && y == player_two_SSS.y) || (x - player_one_SSS.x > -64 && x - player_one_SSS.x <= 0 && y == player_one_SSS.y) || (x - player_three_SSS.x > -64 && x - player_three_SSS.x <= 0 && y == player_three_SSS.y)) {
				hsp = 0;
			} else {
				hsp = walksp;
			}
			alarm[0] = 8;
		}
	} else if (up_input) {
		if (alarm_get(0) < 0) {
			moving = true
			sprite_index = SP_PlayerUpSSS;
			image_index = index * 3 + irandom(1);
			//alarm[1] = 4;
			//image_xscale = 1.6;
			//vsp = -walksp;
			if ((y - player_two_SSS.y < 64 && y - player_two_SSS.y >= 0 && x == player_two_SSS.x) || (y - player_one_SSS.y < 64 && y - player_one_SSS.y >= 0 && x == player_one_SSS.x) || (y - player_three_SSS.y < 64 && y - player_three_SSS.y >= 0 && x == player_three_SSS.x)) {
				vsp = 0;
			} else {
				vsp = -walksp;	
			} 
			alarm[0] = 8;
		}
	}
	 else if (down_input) {
		if (alarm_get(0) < 0) {
			moving = true
			sprite_index = SP_PlayerDownSSS;
			image_index = index * 3 + irandom(1);
			//alarm[1] = 4;
			//image_xscale = 1.6;
			if ((y - player_two_SSS.y > -64 && y - player_two_SSS.y <= 0 && x == player_two_SSS.x) || (y - player_one_SSS.y > -64 && y - player_one_SSS.y <= 0 && x == player_one_SSS.x) || (y - player_three_SSS.y > -64 && y - player_three_SSS.y <= 0 && x == player_three_SSS.x)) {
				vsp = 0;
			} else {
				vsp = walksp;	
			}
			alarm[0] = 8;
		}
	}
	if (gamepad_button_check_pressed(global.playercontrollerindices[player],gp_face4) && alarm_get(0) < 0) {
		if (alarm_get(3) < 0) {
			grab = true;
			if (sprite_index = SP_PlayerLeftSSS) { // facing left
				player_four_grab.x = x - 32;
				player_four_grab.y = y;
				dir = 0;
				sprite_index = SP_PlayerLPunchSSS;
			} else if (sprite_index = SP_PlayerRightSSS) { // facing right
				player_four_grab.x = x + 32;
				player_four_grab.y = y;
				dir = 1;
				sprite_index = SP_PlayerRPunchSSS;
			}  else if (sprite_index = SP_PlayerUpSSS) { // facing up
				player_four_grab.x = x;
				player_four_grab.y = y - 32;
				dir = 2;
				sprite_index = SP_PlayerUPunchSSS;
			}  else if (sprite_index = SP_PlayerDownSSS) { // facing down
				player_four_grab.x = x;
				player_four_grab.y = y + 32;
				dir = 3;
				sprite_index = SP_PlayerDPunchSSS;
			} 
			//grabInst = instance_create(x, y, "Instances_3", oGrab);
			//grabInst.visible = true;
			alarm[3] = 3;
		}
	}
}
}

if (place_meeting(x + hsp, y, oBorder) && !hit) { // horiz border col
	hsp = 0;	
}
if (place_meeting(x, y + vsp, oBorder) && !hit) { // vert border col
	vsp = 0;	
}

if (place_meeting(x, y, oVehicle)) { // collision !!!
	if (alarm_get(2) < 0) {
		vehicle = instance_place(x, y, oVehicle)
		hit = true;
		depth = -100000;
		grab = false
		//y = 560;
		hsp = walksp * 2 * vehicle.dir;
		if (vehicle.dir == 1) { // left
			sprite_index = SP_PlayerLeftSSS;
		} else { // right
			sprite_index = SP_PlayerRightSSS;
		}
		alarm[1] = 1; // launching animation
		//visible = false;
		alarm[2] = 120;
		vsp = 0;
		if (grabbedWho = 2) { // release people from grabs
			player_two_SSS.grabbed = false;	
		} else if (grabbedWho = 3) { // release people from grabs
			player_three_SSS.grabbed = false;	
		} else if (grabbedWho = 1) { // release people from grabs
			player_one_SSS.grabbed = false;	
		}
	}
}

if ((place_meeting(x + hsp, y, player_two_SSS) || place_meeting(x + hsp, y, player_three_SSS) || place_meeting(x + hsp, y, player_one_SSS)) && !hit) { // player collision horiz
	hsp = 0;
}
if ((place_meeting(x, y + vsp, player_two_SSS) || place_meeting(x, y + vsp, player_three_SSS) || place_meeting(x, y + vsp, player_one_SSS)) && !hit) { // player collision vert
	vsp = 0;
}


if (y <= 16) {
	over = true;
	sprite_index = SP_PlayerDownSSS;
	image_index = index * 3 + 2;
}

if (!over) {
	x += hsp;	
	y += vsp;
}
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








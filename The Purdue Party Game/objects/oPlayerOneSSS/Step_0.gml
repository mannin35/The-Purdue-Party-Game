/// @description Insert description here
// You can write your code in this editor

left_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislh) < -dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padl); // left
up_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislv) < -dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padu)); // up
right_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislh) > dead_zone) || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padr); // right
down_input = (gamepad_axis_value(global.playercontrollerindices[player], gp_axislv) > dead_zone || gamepad_button_check_pressed(global.playercontrollerindices[player], gp_padd)); // down
//show_debug_message("P1 pos = " + string(x) + " " + string(y));
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
if(global.localPlayers[0].isCPU && !hit) {
	//CODE FOR CPU PLAYER
	if(walksp>0) {
		//see if at finish line
		if (y <= 16) {
			if !(over) {
				global.minigameResults[0] = oSSSControl.pos++;
				//show_debug_message("player 1 pos = " + global.minigameResults[0]);
				oSSSControl.pos++;
				sprite_index = SP_PlayerDownSSS;
				image_index = index * 3 + 2;
			}
			walksp = 0;
			over = true;
		} else {
				if (global.CPUSettings[0] == 0) {
					//Easy CPU always goes straight
					direction = 90;
				} else if (global.CPUSettings[0] == 2) {
					if((place_meeting(x+32, y-32, oVehicle) == false && place_meeting(x,y-32, oBorder)==false) &&
					(place_meeting(x-32, y-32, oVehicle) == false) &&
					(place_meeting(x, y-32, oVehicle) == false)){
						direction = 90;
					} else if(y!=560) {
						if(((y - 560)/32)%2 == 0 && (place_meeting(x+32, y, oBorder) == false)) {
							direction = 0;	
						} else if ( (place_meeting(x-32, y, oBorder) == false)){
							direction = 180;
						} else {
							direction = -999;	
						}
					} else {
						direction = -999;	
					}
				} else {
					if((place_meeting(x, y-32, oVehicle) == false && place_meeting(x,y-32, oBorder)==false)){
						direction = 90;
					} else if(y!=560) {
						if(((y - 560)/32)%2 == 0) {
							direction = 0;	
						} else {
							direction = 180;
						}
					} else {
						direction = -999;	
					}
				}
				
				
				//ACTUAL MOVEMENT
				if (direction == 180) { // if left or right are pressed
					if (alarm_get(0) < 0) {
						moving = true
						sprite_index = SP_PlayerLeftSSS;
						image_index = index * 3 + irandom(1);
						//alarm[1] = 4;
						//image_xscale = -1.6;
						//hsp = -walksp;
						if ((x - player_two_SSS.x < 64 && x - player_two_SSS.x >= 0 && y == player_two_SSS.y) || (x - player_three_SSS.x < 64 && x - player_three_SSS.x >= 0 && y == player_three_SSS.y) || (x - player_four_SSS.x < 64 && x - player_four_SSS.x >= 0 && y == player_four_SSS.y)) { // if other player is moving right while you try to move left don't move
							hsp = 0;
						} else {
							hsp = -walksp;	
						}
						alarm[0] = 8;
					}
				} else if (direction == 0) {
					if (alarm_get(0) < 0) {
						moving = true
						sprite_index = SP_PlayerRightSSS;
						image_index = index * 3 + irandom(1);
						//alarm[1] = 4;
						//image_xscale = 1.6;
						//hsp = walksp;
						if ((x - player_two_SSS.x > -64 && x - player_two_SSS.x <= 0 && y == player_two_SSS.y) || (x - player_three_SSS.x > -64 && x - player_three_SSS.x <= 0 && y == player_three_SSS.y) || (x - player_four_SSS.x > -64 && x - player_four_SSS.x <= 0 && y == player_four_SSS.y)) { // if p2 is moving left while you try to move right don't move
							hsp = 0;
						} else {
							hsp = walksp;	
						}
						alarm[0] = 8;
					}
				} else if (direction == 90) {
					if (alarm_get(0) < 0) {
						moving = true
						sprite_index = SP_PlayerUpSSS;
						image_index = index * 3 + irandom(1);
						//alarm[1] = 4;
						//image_xscale = 1.6;
						//vsp = -walksp;
						if ((y - player_two_SSS.y < 64 && y - player_two_SSS.y >= 0 && x == player_two_SSS.x) || (y - player_three_SSS.y < 64 && y - player_three_SSS.y >= 0 && x == player_three_SSS.x) || (y - player_four_SSS.y < 64 && y - player_four_SSS.y >= 0 && x == player_four_SSS.x)) {
							vsp = 0;
						} else {
							vsp = -walksp;	
						}
						alarm[0] = 8;
					}
				}
				 else if (direction == 270) {
					if (alarm_get(0) < 0) {
						moving = true
						sprite_index = SP_PlayerDownSSS;
						image_index = index * 3 + irandom(1);
						//alarm[1] = 4;
						//image_xscale = 1.6;
						//vsp = walksp;
						if ((y - player_two_SSS.y > -64 && y - player_two_SSS.y <= 0 && x == player_two_SSS.x) || (y - player_three_SSS.y > -64 && y - player_three_SSS.y <= 0 && x == player_three_SSS.x) || (y - player_four_SSS.y > -64 && y - player_four_SSS.y <= 0 && x == player_four_SSS.x)) {
							vsp = 0;
						} else {
							vsp = walksp;	
						}
						alarm[0] = 8;
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
			if ((x - player_two_SSS.x < 64 && x - player_two_SSS.x >= 0 && y == player_two_SSS.y && !player_two_SSS.hit) || (x - player_three_SSS.x < 64 && x - player_three_SSS.x >= 0 && y == player_three_SSS.y && !player_three_SSS.hit) || (x - player_four_SSS.x < 64 && x - player_four_SSS.x >= 0 && y == player_four_SSS.y) && !player_four_SSS.hit) { // if other player is moving right while you try to move left don't move
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
			if ((x - player_two_SSS.x > -64 && x - player_two_SSS.x <= 0 && y == player_two_SSS.y && !player_two_SSS.hit) || (x - player_three_SSS.x > -64 && x - player_three_SSS.x <= 0 && y == player_three_SSS.y && !player_three_SSS.hit) || (x - player_four_SSS.x > -64 && x - player_four_SSS.x <= 0 && y == player_four_SSS.y && !player_four_SSS.hit)) { // if p2 is moving left while you try to move right don't move
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
			if ((y - player_two_SSS.y < 64 && y - player_two_SSS.y >= 0 && x == player_two_SSS.x) || (y - player_three_SSS.y < 64 && y - player_three_SSS.y >= 0 && x == player_three_SSS.x) || (y - player_four_SSS.y < 64 && y - player_four_SSS.y >= 0 && x == player_four_SSS.x)) {
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
			//vsp = walksp;
			if ((y - player_two_SSS.y > -64 && y - player_two_SSS.y <= 0 && x == player_two_SSS.x) || (y - player_three_SSS.y > -64 && y - player_three_SSS.y <= 0 && x == player_three_SSS.x) || (y - player_four_SSS.y > -64 && y - player_four_SSS.y <= 0 && x == player_four_SSS.x)) {
				vsp = 0;
			} else {
				vsp = walksp;	
			}
			alarm[0] = 8;
		}
	}
	if (gamepad_button_check_pressed(global.playercontrollerindices[player],gp_face4) && alarm_get(0) < 0) { // grab
		if (alarm_get(3) < 0) {
			grab = true;
			if (sprite_index = SP_PlayerLeftSSS) { // facing left
				player_one_grab.x = x - 32;
				player_one_grab.y = y;
				dir = 0;
				sprite_index = SP_PlayerLPunchSSS;
			} else if (sprite_index = SP_PlayerRightSSS) { // facing right
				player_one_grab.x = x + 32;
				player_one_grab.y = y;
				dir = 1;
				sprite_index = SP_PlayerRPunchSSS;
			}  else if (sprite_index = SP_PlayerUpSSS) { // facing up
				player_one_grab.x = x;
				player_one_grab.y = y - 32;
				dir = 2;
				sprite_index = SP_PlayerUPunchSSS;
			}  else if (sprite_index = SP_PlayerDownSSS) { // facing down
				player_one_grab.x = x;
				player_one_grab.y = y + 32;
				dir = 3;
				sprite_index = SP_PlayerDPunchSSS;
			} 
			//grabInst = instance_create(x, y, "Instances_3", oGrab);
			//grabInst.visible = true;
			alarm[3] = 1;
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
		} else if (grabbedWho = 4) { // release people from grabs
			player_four_SSS.grabbed = false;	
		}
	}
}

if (((place_meeting(x + hsp, y, player_two_SSS) && !player_two_SSS.hit) || (place_meeting(x + hsp, y, player_four_SSS) && !player_four_SSS.hit) || (place_meeting(x + hsp, y, player_three_SSS) && !player_three_SSS.hit)) && !hit) { // player collision horiz
	hsp = 0;
}
if (((place_meeting(x, y + vsp, player_two_SSS) && !player_two_SSS.hit) || (place_meeting(x, y + vsp, player_four_SSS) && !player_four_SSS.hit) || (place_meeting(x, y + vsp, player_three_SSS) && !player_three_SSS.hit)) && !hit) { // player collision vert
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







/// @description Insert description here
// You can write your code in this editor

OBJ_Placement1.visible = visible;
OBJ_Placement2.visible = visible;
OBJ_Placement3.visible = visible;
OBJ_Placement4.visible = visible;
OBJ_Player1st.visible = visible;
OBJ_Player2nd.visible = visible;
OBJ_Player3rd.visible = visible;
OBJ_Player4th.visible = visible;

if(visible && !calculated) {
	//move scoreboard to center of screen
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	x = vx + ((vwidth - sprite_width)/2);
	y = vy + ((vheight - sprite_height)/2) - 15;
	//calculate current player placements
	players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
	//sort list of players by number of boiler bucks
	for(i=0; i<3; i++) {
		for(j=i; j<4;j++) {
			if(players[i].boilerBucks < players[j].boilerBucks) {
				temp = players[i];
				players[i] = players[j];
				players[j] = temp;
			}
		}
	}
	//sort list of players by number of degrees
	for(i=0; i<3; i++) {
		for(j=i; j<4;j++) {
			if(players[i].degrees < players[j].degrees) {
				temp = players[i];
				players[i] = players[j];
				players[j] = temp;
			}
		}
	}
	
	//set player head indices to reflect positioning
	OBJ_Player1st.image_index = players[0].image_index;
	OBJ_Player2nd.image_index = players[1].image_index;
	OBJ_Player3rd.image_index = players[2].image_index;
	OBJ_Player4th.image_index = players[3].image_index;
	//set placement markers to reflect any ties
	OBJ_Placement1.image_index = 0;
	OBJ_Placement2.image_index = 1;
	OBJ_Placement3.image_index = 2;
	OBJ_Placement4.image_index = 3;
	if (players[1].degrees=players[0].degrees && players[1].boilerBucks == players[0].boilerBucks) {
		OBJ_Placement2.image_index = 0;
		if (players[2].degrees=players[0].degrees && players[2].boilerBucks == players[0].boilerBucks) {
			OBJ_Placement3.image_index = 0;
			if (players[3].degrees=players[0].degrees && players[3].boilerBucks == players[0].boilerBucks) {
				OBJ_Placement4.image_index = 0;
			}
		}
	} else if (players[2].degrees=players[1].degrees && players[2].boilerBucks == players[1].boilerBucks) {
		OBJ_Placement3.image_index = 1;
		if (players[3].degrees=players[1].degrees && players[3].boilerBucks == players[1].boilerBucks) {
				OBJ_Placement4.image_index = 1;
			}
	} else if (players[3].degrees=players[2].degrees && players[3].boilerBucks == players[2].boilerBucks) {
				OBJ_Placement4.image_index = 2;
	}
	
	calculated = true;
} else if (!visible && calculated) {
	//reset to calculate every time user opens
	//scoreboard
	calculated = false;
}





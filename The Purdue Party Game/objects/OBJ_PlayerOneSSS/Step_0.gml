/// @description Inserte aquí la descripción
// Puede escribir su código en este editor

if(global.localPlayers[0].isCPU) {
	if(walksp>0) {
		//see if at finish line
		if place_meeting(x, y, oFinish) {
			if !(over) {
				show_debug_message("player 1 pos = " + string(oController.pos));
			}
			walksp = 0;
			over = true;
		} else {
			//calc distance to finish
			dist_to_fin = point_distance(x,y, x, oFinish.y);
			
			//check if close enough for direct route
			if((dist_to_fin<250 && global.CPUSettings[0]==1) || (dist_to_fin<400 && global.CPUSettings[0]==2)) {
			    direct_path = true;	
			}
			if(!direct_path) {
				//decide next direction
				choices = [];
				number_of_choices = 0;

				if(direction!=270) {
					if(place_meeting(x, y-12, OBJ_Vehicle) == false) {
						choices[number_of_choices] = 90;
						number_of_choices++;
					}
				}

				if(direction!=90) {
					if(place_meeting(x, y+12, OBJ_Vehicle) == false) {
						choices[number_of_choices] = 270;
						number_of_choices++;
					}
				}


				if(direction!=0) {
					if(place_meeting(x-18, y, OBJ_Vehicle) == false) {
						choices[number_of_choices] = 180;
						number_of_choices++;
					}
				}


				if(direction!=180) {
					if(place_meeting(x+18, y, OBJ_Vehicle) == false) {
						choices[number_of_choices] = 0;
						number_of_choices++;
					}
				}

				if(number_of_choices==0) {
					direction = (direction+180)%360;
				} else {
					new_direction = choices[irandom(number_of_choices-1)];
					direction = new_direction;
				}
			}
		}
	}
}



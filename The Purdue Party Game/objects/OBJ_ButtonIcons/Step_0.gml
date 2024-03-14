/// @description Insert description here
// You can write your code in this editor

	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	if(image_index == 0){
		x = vx + ((vwidth - sprite_width)/2) - 71;
		y = vy + ((vheight - sprite_height)/2) + 3;
	} else if (image_index == 1){
		x = vx + ((vwidth - sprite_width)/2) - 2;
		y = vy + ((vheight - sprite_height)/2) + 3;
	} else {
		x = vx + ((vwidth - sprite_width)/2) + 69;
		y = vy + ((vheight - sprite_height)/2) + 3;
	}
	if(OBJ_ItemMenu.visible){
			if(players[global.currentplayer].items[0] >= 1 && image_index == 0){
				visible = true;
			} else if (players[global.currentplayer].items[1] >= 1 && image_index == 1){
				visible =true;
			} else if (players[global.currentplayer].items[2] >= 1 && image_index == 2){
				visible = true;
			}	
	}
	
	
	if(OBJ_Items.visible){
		//Doing swap players
		if(visible && image_index == 0 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)){
			//Do the stuff for swapping players
			show_debug_message("Swap")
			OBJ_Items.visible = false;
			
			
		
		}
	//Doing double dice
	if(visible && image_index == 1 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face3)){
		//Do the stuff for double dice
		show_debug_message("Double")
	}
	
	//Doing slow dice
	if(visible && image_index == 2 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face4)){
		//Do the stuff for slowing down dice
		show_debug_message("Slow")
	}
	
	//Exiting the item menu with circle
	if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)){
			visible = false;
	}
	}






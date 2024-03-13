/// @description Insert description here
// You can write your code in this editor

	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	if(image_index == 0){
		x = vx + ((vwidth - sprite_width)/2) - 66;
		y = vy + ((vheight - sprite_height)/2) - 31;
	} else if (image_index == 1){
		x = vx + ((vwidth - sprite_width)/2) - 2;
		y = vy + ((vheight - sprite_height)/2) - 32;
	} else {
		x = vx + ((vwidth - sprite_width)/2) + 62;
		y = vy + ((vheight - sprite_height)/2) - 31;
	}
	if((!OBJ_ItemMenu.itemSelected) && OBJ_ItemMenu.visible){
			if(players[global.currentplayer].items[0] >= 1 && image_index == 0){
				visible = true;
			} else if (players[global.currentplayer].items[1] >= 1 && image_index == 1){
				visible =true;
			} else if (players[global.currentplayer].items[2] >= 1 && image_index == 2){
				visible = true;
			}	
	}
	
	if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)){
			visible = false;
	}







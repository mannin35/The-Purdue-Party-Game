/// @description Insert description here
// You can write your code in this editor

	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	x = vx + ((vwidth - sprite_width)/2) +24;
	y = vy + ((vheight - sprite_height)/2) - 8;
	for(i = 0; i < 4; i++){
		if(OBJ_PlayerSwap1.playerIndex[i] == 0){
			image_index = OBJ_PlayerSwap1.playerFrameIndex[i];
			OBJ_PlayerSwap1.playerIndex[i] = 1;
			break;
		}
	}
	if(global.swap){
		visible = true;	
	}



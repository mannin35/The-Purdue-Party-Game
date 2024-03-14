/// @description Insert description here
// You can write your code in this editor
	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	x = vx + ((vwidth - sprite_width)/2) - 46;
	y = vy + ((vheight - sprite_height)/2) - 8;

	playerIndex[global.currentplayer] = 1;
	for(i = 0; i < 4; i++){
		if(playerIndex[i] == 0){
			image_index = playerFrameIndex[i];
			playerIndex[i] = 1;
			break;
		}
	}
	if(global.swap){
		visible = true;	
	}




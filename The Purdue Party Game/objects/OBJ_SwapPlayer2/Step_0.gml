/// @description Insert description here
// You can write your code in this editor


	var vx = camera_get_view_x(view_camera[0]);
	var vy = camera_get_view_y(view_camera[0]);
	var vwidth = camera_get_view_width(view_camera[0]);
	var vheight = camera_get_view_height(view_camera[0]);
	x = vx + ((vwidth - sprite_width)/2) - 2;
	y = vy + ((vheight - sprite_height)/2) + 3;
	
	if(global.swap){
		visible = true;	
	} 
		




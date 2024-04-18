visible = false;
calculated = false;
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vwidth = camera_get_view_width(view_camera[0]);
var vheight = camera_get_view_height(view_camera[0]);
x = vx + ((vwidth - sprite_width)/2);
y = vy + ((vheight - sprite_height)/2) - 15;
players = [OBJ_Player1Local, OBJ_Player2Local, OBJ_Player3Local, OBJ_Player4Local];
if(global.needLoaded){
	//show_debug_message("Loading")
load_game()	
//show_debug_message("Loaded")
file_delete("save.txt")
global.needLoaded = false;
}



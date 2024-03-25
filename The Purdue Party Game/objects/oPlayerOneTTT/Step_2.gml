/// @description Insert description here
// You can write your code in this editor

if(direct_path && global.localPlayers[0].isCPU && walksp>0) {
	
	//direct route to finish line
	myPath = path_add();
	mp_grid_path(global.maze_grid, myPath, x, y,player_one_finish_TTT.x, player_one_finish_TTT.y, true);
	draw_path(myPath, x, y, false);
	path_start(myPath, walksp, path_action_stop, false);
				
}





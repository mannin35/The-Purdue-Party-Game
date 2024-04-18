/// @description Insert description here
// You can write your code in this editor

if(visible){
	if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)){
		save_game()
		game_end()
	} else if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)){
		if(file_exists("save.txt")){
			file_delete("save.txt")	
		}
		game_end()
	} else if (!global.hasPressed && gamepad_button_check_released(global.playercontrollerindices[global.currentplayer], gp_start)){
		global.hasPressed = true;
		alarm[0] = 15;
		visible = false;
		ResetButtons(global.currentplayer)
		ShowButtons()
	}
}





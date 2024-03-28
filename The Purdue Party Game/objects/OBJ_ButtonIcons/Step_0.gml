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
	if(OBJ_ItemMenu.visible && !global.swap){
			if(players[global.currentplayer].items[0] >= 1 && image_index == 0){
				visible = true;
			} else if (players[global.currentplayer].items[1] >= 1 && image_index == 1){
				visible =true;
			} else if (players[global.currentplayer].items[2] >= 1 && image_index == 2){
				visible = true;
			}	
	}
	
	if(global.swap){
	counter++;	
	}
	if(global.swap && counter >= 2){
		visible = true;
		if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)){
			temp = OBJ_PlayerSwap1.image_index;
			if(global.playerOneIndex == temp){
				playerToSwap = 0;
			} else if (global.playerTwoIndex == temp){
				playerToSwap = 1;
			} else if (global.playerThreeIndex == temp){
				playerToSwap = 2;
			} else {
				playerToSwap = 3;
			}
			/*if(global.currentplayer < 1){
				playerToSwap = 1	
			}else {
				playerToSwap = 0
			}*/
		} else if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face3)){
			temp = OBJ_PlayerSwap2.image_index;
			if(global.playerOneIndex == temp){
				playerToSwap = 0;
			} else if (global.playerTwoIndex == temp){
				playerToSwap = 1;
			} else if (global.playerThreeIndex == temp){
				playerToSwap = 2;
			} else {
				playerToSwap = 3;
			}
			/*if(global.currentplayer < 1){
				playerToSwap = 1	
			}else {
				playerToSwap = 0
			}*/
		} else if (gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face4)){
			temp = OBJ_PlayerSwap3.image_index;
			if(global.playerOneIndex == temp){
				playerToSwap = 0;
			} else if (global.playerTwoIndex == temp){
				playerToSwap = 1;
			} else if (global.playerThreeIndex == temp){
				playerToSwap = 2;
			} else {
				playerToSwap = 3;
			}
			/*if(global.currentplayer < 1){
				playerToSwap = 1	
			}else {
				playerToSwap = 0
			}*/
		}
		if(playerToSwap != -1){
		show_debug_message(playerToSwap)
		tempX = players[playerToSwap].x
		tempY = players[playerToSwap].y
		players[playerToSwap].x = players[global.currentplayer].x;
		players[playerToSwap].y = players[global.currentplayer].y
		players[global.currentplayer].x = tempX
		players[global.currentplayer].y = tempY;
		ResetButtons(global.currentplayer)
		global.swap = false;
		OBJ_Items.visible = false;
		OBJ_ItemMenu.visible = false;
		OBJ_PlayerSwap1.visible = false;
		OBJ_PlayerSwap2.visible = false;
		OBJ_PlayerSwap3.visible = false;
		OBJ_ButtonIcons.visible = false;
		players[global.currentplayer].items[0]--;
		
		tempSpace = players[global.currentplayer].space
		players[global.currentplayer].space = players[playerToSwap].space
		players[playerToSwap].space = tempSpace;
		
		counter = 0;
		}
	}
	
	
	//if(OBJ_Items.visible){
		//Doing swap players
		if(visible && image_index == 0 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face1)){
			//Do the stuff for swapping players
			//show_debug_message("Swap")
			OBJ_Items.visible = false;
			global.swap = true;
			visible = true;
			
		
		}
	//Doing double dice
	if(visible && image_index == 1 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face3)){
		//Do the stuff for double dice
		//show_debug_message("Double")
		global.doubleDice = true;
		OBJ_Items.visible = false;
		OBJ_ItemMenu.visible = false;
		OBJ_ButtonIcons.visible = false;
		players[global.currentplayer].items[1]--;
		
	}
	
	//Doing slow dice
	if(visible && image_index == 2 && gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face4)){
		//Do the stuff for slowing down dice
		global.slowDice = true;
		OBJ_Items.visible = false;
		OBJ_ItemMenu.visible = false;
		OBJ_ButtonIcons.visible = false;
		players[global.currentplayer].items[2]--;
	}
	
	if(!OBJ_PlayerSwap1.visible){
	//Exiting the item menu with circle
	if(gamepad_button_check_pressed(global.playercontrollerindices[global.currentplayer], gp_face2)){
			OBJ_ButtonIcons.visible = false;
	}
	}
	//}
	
	
	if(OBJ_ItemMenu.visible == false){
		OBJ_ButtonIcons.visible = false;
	}





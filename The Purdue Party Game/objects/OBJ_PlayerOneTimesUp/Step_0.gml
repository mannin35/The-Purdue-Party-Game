/// @description Insert description here
// You can write your code in this editor

y = y-1;
counter++;
if(counter % 30 == 0){
	image_index--;
} else if(counter % 15 == 0){
	image_index++;	
}
left = 0;
right = 0;
if(!global.playerOneTU){
	left = gamepad_axis_value(0, gp_axislh) < -.2;
	right = gamepad_axis_value(0, gp_axislh) > .2;
}

if(!left && !right){
	moved = false;	
}

if(!moved){
	if(left || right){
		moved = true;
		global.playerOneTU = true;
		alarm[0] = 30
	}
	
	if(left && sprite == 2){ //Goes from middle to left
		sprite = 1;
		OBJ_PlayerOneTimesUp.sprite_index = SP_Player_Climb_LeftRight;
		x = x-40
	} else if( left && sprite == 3){ //Goes from right to middle
		sprite = 2;
		OBJ_PlayerOneTimesUp.sprite_index = SP_Player_Climb_Up;
		x = x-40
	} else if( right && sprite == 1){ //Goes from left to middle
		sprite = 2;
		OBJ_PlayerOneTimesUp.sprite_index = SP_Player_Climb_Up;
		x = x+40
	} else if(right && sprite == 2){ //Goes from middle to right
		sprite = 3;
		OBJ_PlayerOneTimesUp.sprite_index = SP_Player_Climb_LeftRight;
		x = x+40
	}
}






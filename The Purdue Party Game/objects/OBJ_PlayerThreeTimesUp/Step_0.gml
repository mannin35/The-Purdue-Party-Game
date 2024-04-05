/// @description Insert description here
// You can write your code in this editor
if(y != 95){ 
y = y-1;
counter++;
if(counter % 30 == 0){
	image_index--;
} else if(counter % 15 == 0){
	image_index++;	
}
left = 0;
right = 0;
if(!global.playerThreeTU && !global.playerObjects[2].isCPU){
	left = gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) < -.2;
	right = gamepad_axis_value(global.playercontrollerindices[2], gp_axislh) > .2;
}
if(!left && !right){
	moved = false;	
}

if(!moved){
	if(left || right){
		moved = true;
		global.playerThreeTU = true;
		alarm[0] = 20
	}
	
	if(left && sprite == 2){ //Goes from middle to left
		sprite = 1;
		movingLeft = true;
		OBJ_PlayerThreeTimesUp.sprite_index = SP_Player_Climb_LeftRight;
		//x = x-40
		x = x-20;
	} else if( left && sprite == 3){ //Goes from right to middle
		sprite = 2;
		movingLeft = true;
		OBJ_PlayerThreeTimesUp.sprite_index = SP_Player_Climb_Up;
		//x = x-86
		x = x-66
		image_xscale = 1.5
	} else if( right && sprite == 1){ //Goes from left to middle
		sprite = 2;
		movingRight = true;
		OBJ_PlayerThreeTimesUp.sprite_index = SP_Player_Climb_Up;
		//x = x+40
		x = x+20
	} else if(right && sprite == 2){ //Goes from middle to right
		sprite = 3;
		movingRight = true
		OBJ_PlayerThreeTimesUp.sprite_index = SP_Player_Climb_LeftRight;
		//x = x+86
		x = x +66
		image_xscale = -1.5;
	}
	if(movingRight){
		if(counterTwo != 10){
			counterTwo++;
			x = x+2;
		} else {
			movingRight = false;
			counterTwo = 0;
		}
	}
	if(movingLeft){
		if(counterTwo != 10){
			counterTwo++;	
			x = x - 2;
		} else {
			movingLeft = false;
			counterTwo = 0;
		}
	}
}
}






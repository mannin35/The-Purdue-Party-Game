hsp = 0;
vsp = 0;
walksp = 2;

over = false;
//cn_swap = 0;

//for CPU
direction = 180;
randomize();
if(global.CPUSettings[1]==0) {
	walksp = 1.5;	
}
direct_path = false;
myPath = noone;
pathCreated = false;
dist_to_fin = 9999;

dead_zone = .2;
left_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) < -dead_zone);
right_input =(gamepad_axis_value(global.playercontrollerindices[1], gp_axislh) > dead_zone); 
up_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) < -dead_zone);
down_input = (gamepad_axis_value(global.playercontrollerindices[1], gp_axislv) > dead_zone);

//alarm[0] = irandom_range(300, 600);

prevX = 0
prevY = 0
dx = 0 // set these every frame to determine animation
dy = 0 // 

calculateSpriteDir = function() { // given dy/dx, calculates the sprite to display for player/cpus
	dx = x - prevX
	dy = y - prevY
	if (dx > 0) { // if moving right
		sprite_index = SP_PlayerRightSSS;
	} else if (dx < 0) { // if moving left
		sprite_index = SP_PlayerLeftSSS;
	} else if (dy > 0) { // if moving down
		sprite_index = SP_PlayerDownSSS;
	} else if (dy < 0) { // if moving up
		sprite_index = SP_PlayerUpSSS;
	}
}
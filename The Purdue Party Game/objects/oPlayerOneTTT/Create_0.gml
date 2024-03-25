
hsp = 0;
vsp = 0;
walksp = 2;
//for CPU
direction = 180;
randomize();
if(global.CPUSettings[0]==0) {
	walksp = 1.5;	
}
direct_path = false;																				

over = false;
//cn_swap = 0;

dead_zone = .2;
left_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) < -dead_zone);
right_input =(gamepad_axis_value(global.playercontrollerindices[0], gp_axislh) > dead_zone); 
up_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) < -dead_zone);
down_input = (gamepad_axis_value(global.playercontrollerindices[0], gp_axislv) > dead_zone);

//alarm[0] = irandom_range(300, 600);
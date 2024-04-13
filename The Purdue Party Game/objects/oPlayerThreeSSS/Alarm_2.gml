
x = irandom_range(4, 28) * 32 + 16; // respawning
while (x == player_two_SSS.x || x == player_one_SSS.x || x == player_four_SSS.x) {
	x += 32;	
}

image_xscale = 1.6;
image_yscale = 1.6;
image_angle = 0;
depth = temp_depth;

y = 560;
//visible = true
hit = false
hsp = 0;
vsp = 0;
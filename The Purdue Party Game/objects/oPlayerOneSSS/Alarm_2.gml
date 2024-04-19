
x = irandom_range(8, 20) * 32 + 16; // respawning
y = 560;
while (place_meeting(x, y, player_two_SSS) || place_meeting(x, y, player_three_SSS) || place_meeting(x, y, player_four_SSS)) {
	x += 64;	
	show_debug_message("1 moved");
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
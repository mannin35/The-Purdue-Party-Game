image_index = irandom(5);
//spd = 4
dir = 1;
row = (y - 14) / 32; // dumb math but gets the row where the vehicle is
//spd = 4
respawn_time = 10 * (row % 5 + 1); // semi random respawn time for alarm
if (row % 2 == 0) { // go left
	dir = -1;
	x += oSSSControl.offset;
	spd = 3.8
} else {
	image_xscale = -3;
	x += oSSSControl.offset + irandom(5) * 32;
	spd = 4.2
}


//show_debug_message(string(row) + " is row");














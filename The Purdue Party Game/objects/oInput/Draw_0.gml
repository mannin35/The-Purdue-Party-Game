/// @description Insert description here
// You can write your code in this editor



/*if (t_msec <= 9) {
    t += "0";
}
//t += string(t_msec)*/

// Function to draw time at a specified position
/*function draw_time_at_position(x_pos, y_pos) {
	draw_set_color(c_black);
	draw_set_font(Ft_TimesUpTimer);
	draw_set_halign(fa_right);
	draw_set_valign(fa_right);

	var t = "time:";
	var timer = instance_find(oElevenFiftyNineTimer, 0); // Find the instance of obj_Timer
	if (timer != noone) {
	    t += string(timer.t_hour);
		t += ":";
		if (timer.t_min <= 9) {
			t += "0";
		}
		t += string(timer.t_min);
		t += ":";
		if (timer.t_sec <= 9) {
			t += "0";
		}
		t += string(timer.t_sec);
	    // Access other variables as needed
	}
	
	
    draw_text(x_pos, y_pos, t);
}










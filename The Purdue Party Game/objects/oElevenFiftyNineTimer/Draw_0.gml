/// @description Draw timer
// You can write your code in this editor
draw_set_color(c_black)
draw_set_font(Ft_TimesUpTimer)
draw_set_halign(fa_middle)
draw_set_valign(fa_middle)

var t = ""
t += string(t_hour)
t += ":"
if t_min <= 9 {
	t += "0"
}
t += string(t_min)
t += ":"
if t_sec <= 9 {
	t += "0"
}
t += string(t_sec)
/*if t_msec <= 9 {
	t += "0"
}
//t += string(t_msec)*/

//global.realPlayerCount = 1
var players = global.realPlayerCount

if (t_sec >= 50 || t_sec <= 5) {
	if (players >= 1) {
		if gamepad_button_check_pressed(global.playercontrollerindices[0],gp_face4) {
			if !(player_one.over) {
				player_one.end_time = t
				player_one.end_time += ":" + string(t_msec)
				player_one_hand.over = true
				instance_destroy(player_one.sweat)
				player_one.over = true
			}
			//draw_text(90, 270, player_one.end_time)
		}
	}
	if (players >= 2) {
		if gamepad_button_check_pressed(global.playercontrollerindices[1],gp_face4) {
			if !(player_two.over) {
				player_two.end_time = t
				player_two.end_time += ":" + string(t_msec)
				player_two_hand.over = true
				instance_destroy(player_two.sweat)				
				player_two.over = true
			}
			//draw_text(188, 270, player_two.end_time)
		}
	}
	if (players >= 3) {
		if gamepad_button_check_pressed(global.playercontrollerindices[2],gp_face4) {
			if !(player_three.over) {
				player_three.end_time = t
				player_three.end_time += ":" + string(t_msec)
				player_three_hand.over = true
				instance_destroy(player_three.sweat)
				player_three.over = true
			}
			//draw_text(270, 270, player_three.end_time)
		}
	}
	if (players == 4) {
		if gamepad_button_check_pressed(global.playercontrollerindices[3],gp_face4) {
			if !(player_four.over) {
				player_four.end_time = t
				player_four.end_time += ":" + string(t_msec)
				player_four_hand.over = true
				instance_destroy(player_four.sweat)
				player_four.over = true
			}
			//draw_text(356, 270, player_four.end_time)
		}
	}
}
if ((t_sec <= 49 && t_min <= 59 && t_hour <= 11) || (t_sec = 5 && t_min = 0 && t_hour = 12)) {
	draw_text(256, 90, t)
}

if (t_sec = 5 && t_min = 0 && t_hour = 12) {
	if !(player_one.over) {
		player_one.end_time = t
		player_one.end_time += ":" + string(t_msec)
		player_one.over = true	
	}
	if !(player_two.over) {
		player_two.end_time = t
		player_two.end_time += ":" + string(t_msec)
		player_two.over = true	
	}
	if !(player_three.over) {
		player_three.end_time = t
		player_three.end_time += ":" + string(t_msec)
		player_three.over = true	
	}
	if !(player_four.over) {
		player_four.end_time = t
		player_four.end_time += ":" + string(t_msec)
		player_four.over = true	
	}
}


var compareTimes = function(time_one, time_two) {
	var time_one_split = string_split(time_one, ":")
	var time_two_split = string_split(time_two, ":")
	
	var hour_one = real(time_one_split[0])
	var min_one = real(time_one_split[1]);
	var sec_one = real(time_one_split[2]);
	var msec_one = real(time_one_split[3]);
	
	var hour_two = real(time_two_split[0])
	var min_two = real(time_two_split[1]);
	var sec_two = real(time_two_split[2]);
	var msec_two = real(time_two_split[3]);
	
	if (hour_one != hour_two) {
		return hour_one - hour_two	
	}
	if (hour_one = 12) { // If late compare normally
		if (min_one != min_two) {
			return min_one - min_two
		}
		if (sec_one != sec_two) {
			return sec_one - sec_two	
		}
		return msec_one - msec_two
	} else { // If on time compare in reverse
		if (min_one != min_two) {
			return min_two - min_one
		}
		if (sec_one != sec_two) {
			return sec_two - sec_one	
		}
		return msec_two - msec_one
	}
}

if (player_one.over && player_two.over && player_three.over && player_four.over) {
	//player_two.end_time = "11:59:52:0"
	//player_three.end_time = "12:00:04:0"
	//player_four.end_time = "12:00:05:0"
	var times = [player_one.end_time, player_two.end_time, player_three.end_time, player_four.end_time]
	res = [1, 2, 3, 4]
	for (var i = 0; i < array_length(times) - 1; i++) { // good ol' bubble sort :]
		for (var j = 0; j < array_length(times) - i - 1; j++) {
			if (compareTimes(times[j], times[j + 1]) > 0) {
				var temp = times[j]
				times[j] = times[j + 1]
				times[j + 1] = temp
				
				temp = res[j]
				res[j] = res[j + 1]
				res[j + 1] = temp			
			} else if (compareTimes(times[j], times[j + 1]) = 0) { // frame perfect tie (or didnt submit)
				//res[j] = res[j + 1]		
			}
		}
	}
	
		temp = [0, 0, 0, 0]
		for (var i = 0; i < array_length(res); i++) {
			temp[i] = res[i]
		}
		for (var i = 0; i < array_length(res); i++) {
			res[temp[i] - 1] = i + 1
		}
	
	if player_one.end_time = "12:00:05:0" { // if multiple people dont submit they tie for last
		res[0] = 4
	}
	if player_two.end_time = "12:00:05:0" {
		res[1] = 4
	}
	if player_three.end_time = "12:00:05:0" {
		res[2] = 4
	}
	if player_four.end_time = "12:00:05:0" {
		res[3] = 4
	}
		for (var i = 0; i < array_length(times); i++) {
			//show_debug_message(array_length(times))
			show_debug_message(times[i])
			show_debug_message(res[i])
			
		}
	
	
	global.minigameOver = 1	
}
	
	







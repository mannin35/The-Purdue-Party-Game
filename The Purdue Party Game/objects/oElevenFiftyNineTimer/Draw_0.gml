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

if (t_sec >= 50 || t_sec <= 5) {
	if keyboard_check(vk_up) {
		if !(player_one.over) {
			player_one.end_time = t
		
			player_one.end_time += ":" + string(t_msec)
			player_one.over = true
		}
		draw_text(90, 270, player_one.end_time)
	}
	if keyboard_check(vk_down) {
		if !(player_two.over) {
			player_two.end_time = t
			player_two.end_time += ":" + string(t_msec)
			player_two.over = true
		}
		draw_text(188, 270, player_two.end_time)
	}
	if keyboard_check(vk_left) {
		if !(player_three.over) {
			player_three.end_time = t
			player_three.end_time += ":" + string(t_msec)
			player_three.over = true
		}
		draw_text(270, 270, player_three.end_time)
	}
	if keyboard_check(vk_right) {
		if !(player_four.over) {
			player_four.end_time = t
			player_four.end_time += ":" + string(t_msec)
			player_four.over = true
		}
		draw_text(356, 270, player_four.end_time)
	}
}
if ((t_sec <= 49 && t_min <= 59 && t_hour <= 11) || (t_sec = 5 && t_min = 0 && t_hour = 12)) {
	draw_text(256, 90, t)
}


	
	







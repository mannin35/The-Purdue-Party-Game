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


if ((t_sec <= 49 && t_min <= 59 && t_hour <= 11) || (t_sec = 5 && t_min = 0 && t_hour = 12)) {
	draw_text(256, 90, t)
}

	
	







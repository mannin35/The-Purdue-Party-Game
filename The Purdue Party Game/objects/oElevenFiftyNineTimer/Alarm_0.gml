/// @description Count Timer
// You can write your code in this editor
t_msec += 16.666666666

if t_msec >= 1000 {
	t_msec = 0
	t_sec += 1
}
if t_sec >= 60 {
	t_sec = 0
	t_min += 1
}
if t_min >= 60 {
	t_min = 0
	t_hour += 1
}

if !(t_sec = 5 && t_min = 0 && t_hour = 12) {
	alarm[0] = 1
} else {
	
}







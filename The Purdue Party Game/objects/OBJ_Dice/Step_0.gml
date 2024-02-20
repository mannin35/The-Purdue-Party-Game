// Checks if dice is stopped, then makes it disappear after a time
if (stopped) {
	disappearTime -= 1/30 // Decrease time by one frame (30 fps)
	if (disappearTime <= 0) {
		instance_destroy();
	}
}







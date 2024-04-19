/// @Spawn clocks
var double = irandom_range(0,3);
var lastSide;
var wait = 0;
if (wasDouble) {
	double = 0;
}
generateRandomSide();
dropThemClocks(clockX);
lastSide = side;
if (double != 0) {
	// Generate another clock
	while (side == lastSide) {
		generateRandomSide();
	}
	wait = irandom_range(1, minWait);
	alarm[1] = wait;
	wasDouble = true;
}
else {
	wasDouble = false;
}
alarm[0] = minWait * 2 + wait;

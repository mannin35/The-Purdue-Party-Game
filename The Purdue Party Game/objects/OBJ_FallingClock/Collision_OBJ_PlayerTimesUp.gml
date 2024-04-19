/// @And we all fall down
if (other.isMoving) {
	other.isMoving = false;
	other.isFalling = true;
	other.alarm[2] = 30;
}
else {
	instance_destroy();
}























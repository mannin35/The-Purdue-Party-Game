/// @
isFalling = false;
isMoving = true;
ySpeed = -1;
over = false;
sprite = 1;
left = 0;
right = 0;
cpuLeft = 0;
cpuRight = 0;
timer = instance_create_layer(x, y, OBJ_TimesUpLogic.layer, oTimer);
timer.image_index = 14;
timer.image_speed = 0;
timer.visible = false;
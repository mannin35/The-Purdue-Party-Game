dizzy = instance_create_layer(x - 5, y - 25, "Instances_2", oDizzy);
dizzy.image_speed = 0.20;
dizzy.visible = false;

timer = instance_create_layer(x - 10, y - 25, "Instances_2", oTimer);
timer.image_index = 14;
timer.image_speed = 0;
timer.visible = 0;
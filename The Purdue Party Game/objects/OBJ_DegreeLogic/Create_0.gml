/// Initialize a degree space to have a degree when created
degrees = [Space14, Space35,  Space113];
randomize();
 degreeIndex = irandom_range(0,2);
currentDegreeSpace = degrees[degreeIndex];
currentDegreeSpace.hasDegree = true;
degreeLocal = instance_create_layer(currentDegreeSpace.x, currentDegreeSpace.y, layer, OBJ_DegreeLocal);
degreeFull = instance_create_layer(currentDegreeSpace.x, currentDegreeSpace.y, layer, OBJ_DegreeFull);

function passDegree(currentPlayer) {
	show_debug_message("Degree!!!");
	show_debug_message("Current player = " + object_get_name(currentPlayer));
}
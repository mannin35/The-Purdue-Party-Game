/// Initialize a degree space to have a degree when created
degrees = [Space14, Space35,  Space113];
randomize();
 degreeIndex = irandom_range(0,2);
currentDegree = degrees[degreeIndex];
currentDegree.hasDegree = true;
degreeLocal = instance_create_layer(currentDegree.x, currentDegree.y, layer, OBJ_DegreeLocal);
degreeFull = instance_create_layer(currentDegree.x, currentDegree.y, layer, OBJ_DegreeFull);
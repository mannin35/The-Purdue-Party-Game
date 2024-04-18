/// Initialize a degree space to have a degree when created
degrees = [Space14, Space35,  Space113];
newIndex = -1;
randomize();
function createRandomDegree() {
	newIndex = irandom_range(0,2);
	while (newIndex == degreeIndex) {
		newIndex = irandom_range(0,2);
	}
	degreeIndex = newIndex;
	currentDegreeSpace = degrees[degreeIndex];
	currentDegreeSpace.hasDegree = true;
	degreeLocal = instance_create_layer(currentDegreeSpace.x, currentDegreeSpace.y, "Instances", OBJ_DegreeLocal);
	degreeFull = instance_create_layer(currentDegreeSpace.x, currentDegreeSpace.y, "Instances", OBJ_DegreeFull);
}
if(!global.hasLoaded){
degreeIndex = -1;
self.createRandomDegree();
}

// Give degree and subtract BB
currentPlayer.degrees++;
currentPlayer.boilerBucks -= cost;
OBJ_Player.waitForDegree = false;
if (!permanent) {
	instance_destroy(OBJ_DegreeLogic.degreeLocal);
	instance_destroy(OBJ_DegreeLogic.degreeFull);
	OBJ_DegreeLogic.createRandomDegree();
}
instance_destroy();
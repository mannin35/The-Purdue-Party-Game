// Give degree and subtract BB
currentPlayer.degrees++;
currentPlayer.boilerBucks -= 20;
OBJ_Player.waitForDegree = false;
instance_destroy(OBJ_DegreeLogic.degreeLocal);
instance_destroy(OBJ_DegreeLogic.degreeFull);
OBJ_DegreeLogic.createRandomDegree();
instance_destroy();
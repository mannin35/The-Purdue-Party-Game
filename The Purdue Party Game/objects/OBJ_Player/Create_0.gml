/// @Player parent class
// General info
color = pointer_null;
index = 0;
space = Space0;
isCPU = false;
currentPlayer = pointer_null;
boilerBucks = 10;
degrees = 0;

// Movement info
dead_zone = 0.2; 
startIndex = 0;
walkingIndex = 0;
walkAnimationSpeed = 10; //fps
increasePerFrame = walkAnimationSpeed / 60;
numSpaces = 0;
isMoving = false;
waitForDegree = false;
degreeColided = false;
speedMultiplier = 4;
x = space.x;
y = space.y;

// Path decision  info
arrows = pointer_null;
activeArrow = pointer_null;
inactiveArrow = pointer_null;
awaitingInput = false;
pathChosen = false;

//Store and items
items = [0, 0, 0]		//Swaps, Double, Slowdown
global.store = false;

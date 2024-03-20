/// @Player parent class
// General info
color = pointer_null;
index = 0;
space = Space0;

// Movement info
dead_zone = 0.2; 
walkingIndex = 0;
numSpaces = 0;
isMoving = false;
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
items = [1,1,1]		//Swaps, Double, Slowdown

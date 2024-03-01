/// @Camera which will track current player
cam = view_current;
current = OBJ_Player1Local;
view_set_xport(cam, current.x);
view_set_yport(cam, current.y);
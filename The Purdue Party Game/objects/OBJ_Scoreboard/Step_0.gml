/// @description Insert description here
// You can write your code in this editor

OBJ_Placement1.visible = visible;
OBJ_Placement2.visible = visible;
OBJ_Placement3.visible = visible;
OBJ_Placement4.visible = visible;
OBJ_Player1st.visible = visible;
OBJ_Player2nd.visible = visible;
OBJ_Player3rd.visible = visible;
OBJ_Player4th.visible = visible;

if(visible && !calculated) {
	//calculate and update scoreboard
	
	calculated = true;
} else if (!visible && calculated) {
	//reset to calculate every time user opens
	//scoreboard
	calculated = false;
}





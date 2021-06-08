/// @descr states

script_execute(statesArray[state]);

/*
switch (state){
	case eState.idle:
		scrIdle();
		break;
	case eState.chase:
		scrChase();			
		break;
	case eState.walk: 
		scrWalk();
		break;
}
*/
vsp = (min(8, vsp+grv));
scrEnemyMovement();

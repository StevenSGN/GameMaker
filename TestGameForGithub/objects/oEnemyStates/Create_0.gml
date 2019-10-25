/// @description Insert description here
// You can write your code in this editor

state =eState.idle;
vsp = 0;
hsp = 0;
grv = 0.05;
counter = 0;
statesArray[eState.idle]=scrIdle;
statesArray[eState.walk]=scrWalk;
statesArray[eState.chase]=scrChase;
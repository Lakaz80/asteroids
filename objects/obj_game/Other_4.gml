/// @description Insert description here
// You can write your code in this editor
if(room == rm_game){
	audio_play_sound(msc_song,2,true);
	
	spawn_off_camera(Obj_asteroid,40);
	
	spawn_off_camera(Obj_raider,8);
	spawn_off_camera(Obj_brute,3);
	spawn_off_camera(Obj_hunter,5);
	
alarm[0]=60;
}
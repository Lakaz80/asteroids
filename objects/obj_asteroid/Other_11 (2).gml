/// @description take damage

audio_play_sound(snd_die,1,false);

instance_destroy();
score+=10;

if(sprite_index==spr_asteroid_huge)
{
repeat(2)
{
var new_asteroid = instance_create_layer(x,y,"Instances_1",Obj_asteroid);
	new_asteroid.sprite_index=spr_asteroid_medium;
}}
else if(sprite_index==spr_asteroid_medium){

repeat(2){
var new_asteroid = instance_create_layer(x,y,"Instances_1",Obj_asteroid);
	new_asteroid.sprite_index=spr_asteroid_small;
}}

repeat(10)
{
	instance_create_layer(x,y,"Instances_1",Obj_debris);
}
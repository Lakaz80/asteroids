/// @description take damage

audio_play_sound(snd_die,1,false);

instance_destroy();
score+=10;

var _xx=x,var _yy=y;


if(sprite_index==spr_asteroid_huge)
{
	
	with(Obj_particles){
	part_particles_create(partSys,_xx,_yy,partTypeAsteroidDebris,12);
	}
	
	global.cameraShake=4;
repeat(2)
{
var new_asteroid = instance_create_layer(x,y,"Instances_1",Obj_asteroid);
	new_asteroid.sprite_index=spr_asteroid_medium;
}}
else if(sprite_index==spr_asteroid_medium){
global.cameraShake=2;
with(Obj_particles){
	part_particles_create(partSys,_xx,_yy,partTypeAsteroidDebris,6);
	}

repeat(2){
var new_asteroid = instance_create_layer(x,y,"Instances_1",Obj_asteroid);
	new_asteroid.sprite_index=spr_asteroid_small;
}}else{
	
	with(Obj_particles){
	part_particles_create(partSys,_xx,_yy,partTypeAsteroidDebris,4);
	}
	global.cameraShake=1
}


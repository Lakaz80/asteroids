/// @description Insert description here
// You can write your code in this editor
	var _xx=x,
	var _yy=y;
	var _ib=image_blend;
	with(Obj_particles){
	part_particles_create_color(partSys,_xx,_yy,partTypeShipDebris,_ib,10);
	}

audio_play_sound(snd_die,1,false);

switch(object_index){
	case Obj_raider: score +=15; break;
	case Obj_hunter: score +=30; break;
	case Obj_brute: score +=50; break;
}

if(irandom_range(0,2)==0){
instance_create_layer(x,y,"Instances_1",Obj_powerup)	
};

global.cameraShake=4;
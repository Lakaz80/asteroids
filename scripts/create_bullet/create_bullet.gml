// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_bullet(_dir,_spd,_fac,_type){
			
			//Choose gun type
			
			switch(_type){
			case powerups.three_bullets:
			var inst = instance_create_layer(x,y,"Instances_1",Obj_bullet);
			initialise_bullet(_dir,_spd,_fac,inst);
			//cheeky trick by ignoring the break, three bullets is just two plus one extral
			case powerups.two_bullets:
			audio_play_sound(snd_zap,1,false);
			var _sep =12;
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir+90),y+lengthdir_y(_sep,_dir+90),"Instances_1",Obj_bullet);
			
			
			initialise_bullet(_dir,_spd,_fac,inst);
			
			var inst = instance_create_layer(x+lengthdir_x(_sep,_dir-90),y+lengthdir_y(_sep,_dir-90),"Instances_1",Obj_bullet);
			initialise_bullet(_dir,_spd,_fac,inst);
			
			break;
			case powerups.four_bullets:
			audio_play_sound(snd_zap,1,false);
			var _sep =7, bullet_angle;
			var i=0; repeat(4){
				bullet_angle=_dir+(i*90)
			var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle+90),y+lengthdir_y(_sep,bullet_angle+90),"Instances_1",Obj_bullet);
						
			initialise_bullet(bullet_angle,_spd,_fac,inst);
			i++;
			}
			break;
			case powerups.star_bullets:
			audio_play_sound(snd_zap,1,false);
			var _sep =7, bullet_angle;
			var i=0; repeat(8){
				bullet_angle=_dir+(i*45)
			var inst = instance_create_layer(x+lengthdir_x(_sep,bullet_angle+90),y+lengthdir_y(_sep,bullet_angle+90),"Instances_1",Obj_bullet);
				
			initialise_bullet(bullet_angle,_spd,_fac,inst);
			i++;
			}
			break;
			case powerups.laser_bullets:
			audio_play_sound(snd_laser,1,false);
			var inst=instance_create_layer(x,y,"Instances_1",Obj_laser);
			initialise_bullet(_dir,_spd,_fac,inst);
			break;
			default:
			var inst = instance_create_layer(x,y,"Instances_1",Obj_bullet);
			audio_play_sound(snd_zap,1,false);
			initialise_bullet(_dir,_spd,_fac,inst);
			break;
			}
	
}
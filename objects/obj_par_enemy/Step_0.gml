/// @description Insert description here
// You can write your code in this editor
exhaustCounter++;
	
	if(exhaustCounter>=4){
	var len=sprite_height*.4,
	var _xx=x-lengthdir_x(len,image_angle),
	_yy=y-lengthdir_y(len,image_angle);
	with(Obj_particles){
	part_particles_create(partSys,_xx,_yy,partTypeEnemyExhaust,1);
	}
	exhaustCounter=0;
	}
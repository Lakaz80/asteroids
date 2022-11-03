/// @description Insert description here
// You can write your code in this editor
/// if player is inside range
event_inherited();
if(!instance_exists(Obj_ship)) exit;
if(point_distance(x,y,Obj_ship.x,Obj_ship.y)<250){
//turn to look at player ship
var new_angle =point_direction(x,y,Obj_ship.x,Obj_ship.y);
new_angle=image_angle-angle_difference(image_angle,new_angle);
image_angle=lerp(image_angle,new_angle,0.1);
direction=image_angle;

if(point_distance(x,y,Obj_ship.x,Obj_ship.y)<150){
speed-=0.05	
}
else {
speed+=0.01	
}

bulletCounter++;
if(bulletCounter>=60){
create_bullet(image_angle,8,faction,-1);
bulletCounter=0;
}
} else {
speed=lerp(speed,originalSpeed,0.1);
}

//otherwise,  no change
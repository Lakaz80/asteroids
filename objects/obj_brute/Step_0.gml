/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// if player is inside range

image_index=HP-1;

if(!instance_exists(Obj_ship)) exit;
if(point_distance(x,y,Obj_ship.x,Obj_ship.y)<500){
//turn to look at player ship
var new_angle =point_direction(x,y,Obj_ship.x,Obj_ship.y);
new_angle=image_angle-angle_difference(image_angle,new_angle);
image_angle=lerp(image_angle,new_angle,0.1);
direction=image_angle;

} else {
}

//otherwise,  no change
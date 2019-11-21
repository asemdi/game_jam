/// @description Insert description here
// You can write your code in this editor
if(distance_to_object(obj_Player) < 30){
	var inst = instance_nearest(x, y, obj_Player);
	inst.hasAxe = true;
	instance_destroy(self.id);
}
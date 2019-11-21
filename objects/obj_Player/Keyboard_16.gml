/// @description Insert description here
// You can write your code in this editor
if(hasAxe){
	show_debug_message("swoosh");
	sprite_index = reem_swoosh;
	var inst = collision_circle(x, y, 40, obj_WalkingRobot, false, false);
	if(inst != noone){
		inst.hp -= 13 + irandom(5);
	}
}
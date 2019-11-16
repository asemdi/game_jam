/// @description Insert description here
// You can write your code in this editor
	
if (has_Axe == true){
sprite_index = reem_with_axe_standing


}
if (keyboard_check(vk_right) && place_free(x + collisionSpeed, y)){
x += walkSpeed;
image_speed = walkSpeed/3;
if (has_Axe == true){
sprite_index = ream_with_axe_walking;
}
}

if (keyboard_check(vk_left) && place_free(x - collisionSpeed, y)){
x -= walkSpeed;
image_speed = walkSpeed/3;
if (has_Axe == true){
sprite_index = ream_with_axe_walking;
}
}

if (keyboard_check(vk_down)&& place_free(x, y + collisionSpeed)){
y += walkSpeed;
image_speed = walkSpeed/3;
if (has_Axe == true){
sprite_index = ream_with_axe_walking;
}
}

if (keyboard_check(vk_up) && place_free(x, y - collisionSpeed)){
y -= walkSpeed;
image_speed = walkSpeed/3;
if (has_Axe == true){
sprite_index = ream_with_axe_walking;
}
}


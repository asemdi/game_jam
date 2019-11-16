/// @description Insert description here
// You can write your code in this editor

if (keyboard_check(vk_right) && place_free(x + collisionSpeed, y)){
x += walkSpeed;
image_speed = walkSpeed/3;
/*sprite_index = sprWalkRight;*/
}

if (keyboard_check(vk_left) && place_free(x - collisionSpeed, y)){
x -= walkSpeed;
image_speed = walkSpeed/3;
/*sprite_index = sprWalkLeft;*/
}

if (keyboard_check(vk_down)&& place_free(x, y + collisionSpeed)){
y += walkSpeed;
image_speed = walkSpeed/3;
/*sprite_index = sprWalkDown;*/
}

if (keyboard_check(vk_up) && place_free(x, y - collisionSpeed)){
y -= walkSpeed;
image_speed = walkSpeed/3;
/*sprite_index = sprWalkUp;*/
}


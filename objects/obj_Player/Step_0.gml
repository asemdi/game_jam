/// @description Insert description here
// You can write your code in this editor

// Basic movement
if (keyboard_check(vk_right)){
	x += walkSpeed;
	image_speed = walkSpeed/3;
	/*sprite_index = sprWalkRight;*/
}

if (keyboard_check(vk_left)){
	x -= walkSpeed;
	image_speed = walkSpeed/3;
	/*sprite_index = sprWalkLeft;*/
}

if (keyboard_check(vk_down)){
	y += walkSpeed;
	image_speed = walkSpeed/3;
	/*sprite_index = sprWalkDown;*/
}

if (keyboard_check(vk_up)){
	y -= walkSpeed;
	image_speed = walkSpeed/3;
	/*sprite_index = sprWalkUp;*/
}

/// @description Insert description here
// You can write your code in this editor
	
if (hasAxe == true && sprite_index != reem_swoosh){
	sprite_index = ream_with_axe_standing
}

if (keyboard_check(vk_right) && place_free(x + collisionSpeed, y)){
	x += walkSpeed;
	image_speed = walkSpeed/3;
	if (hasAxe == true){
		sprite_index = ream_with_axe_walking;
	}
	if(image_xscale < 0){
		image_xscale *= -1;
	}
}

if (keyboard_check(vk_left) && place_free(x - collisionSpeed, y)){
	x -= walkSpeed;
	image_speed = walkSpeed/3;
	if (hasAxe == true){
		sprite_index = ream_with_axe_walking;
	}
	if(image_xscale > 0){
		image_xscale *= -1;
	}
}

if (keyboard_check(vk_down)&& place_free(x, y + collisionSpeed)){
	y += walkSpeed;
	image_speed = walkSpeed/3;
	if (hasAxe == true){
		sprite_index = ream_with_axe_walking;
	}
}

if (keyboard_check(vk_up) && place_free(x, y - collisionSpeed)){
	y -= walkSpeed;
	image_speed = walkSpeed/3;
	if (hasAxe == true){
		sprite_index = ream_with_axe_walking;
	}
}

if(hp <= 0){
	show_message("Game Over");
	room_restart();
}

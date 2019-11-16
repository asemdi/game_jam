/// @description Insert description here
// You can write your code in this editor

var dir = image_angle;
var angle_dir = 1;
var add_angle = 5;

image_angle = direction;

see_player = false;
for(var rays = 0; rays <= ray_count; rays++){
	for(var line_length = 0; line_length < vision_length; line_length++){
		var nx = x + lengthdir_x(line_length, dir);
		var ny = y + lengthdir_y(line_length, dir);
		
		if(position_empty(nx, ny) == false){
			if(instance_place(nx, ny, obj_Wall) != noone){
				break;
			}
			
			if(instance_place(nx, ny, obj_Player) != noone){
				see_player = true;
				target = obj_Player;
				break;
			}
		}
	}
	dir += (add_angle * rays) * angle_dir;
	angle_dir *= -1;
}

if(target){
	direction = point_direction(x, y, target.x, target.y);
	//show_debug_message(direction);
	move_towards_point(target.x, target.y, 3);
}
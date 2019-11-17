/// @description player detection
// You can write your code in this editor
 
var dir = image_angle;
var angle_dir = 1;
var add_angle = 5;

var sgn = sign(image_xscale);

see_player = false;
for(var rays = 0; rays <= ray_count; rays++){
    for(var line_length = 0; line_length < vision_length; line_length++){
        var nx = x + sgn * lengthdir_x(line_length, dir);
        var ny = y + sgn * lengthdir_y(line_length, dir);
       
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

if(hp <= 0){
	instance_destroy(self.id);
}

if(target){
    //direction = point_direction(x, y, target.x, target.y);
    //show_debug_message(direction);
	if((target.x < x && image_xscale > 0.0001) || 
		(target.x > x && image_xscale < -0.0001)){
		image_xscale *= -1;
	}
    move_towards_point(target.x, target.y, 3);
}


var inst = collision_circle(x, y, 30, obj_Player, false, false);
if(inst != noone && canAttack){
	inst.hp -= 10 + irandom(5);
	alarm[0] = room_speed;
	canAttack = false;
}
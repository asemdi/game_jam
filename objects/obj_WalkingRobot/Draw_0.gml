/// @description Insert description here
// You can write your code in this editor
draw_self();
 
var dir = image_angle;
var angle_dir = 1;
var add_angle = 5;
 
if(is_debug){
    for(var rays = 0; rays <= ray_count; rays++){
        for(var line_length = 0; line_length < vision_length; line_length++){
            var nx = x + lengthdir_x(line_length, dir);
            var ny = y + lengthdir_y(line_length, dir);
            if(position_empty(nx, ny) == false){
                if(instance_place(nx, ny, obj_Wall) != noone){
                    draw_set_alpha(c_red);
                    draw_circle(nx, ny, 5, false);
                    break;
                }
           
                if(instance_place(nx, ny, obj_Player) != noone){
                    draw_set_alpha(c_red);
                    draw_circle(nx, ny, 5, false);
                    break;
                }
            }
            draw_set_color(c_lime);
            draw_point(nx, ny);
        }
        dir += (add_angle * rays) * angle_dir;
        angle_dir *= -1;
    }
}
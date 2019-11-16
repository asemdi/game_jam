/// @description Insert description here
// You can write your code in this editor
if(place_meeting(x, y, obj_Player)&& is_open == false){  
	is_open = true;
	sprite_index = door_opening;
    //object_set_sprite(obj_Door, door_open);
}
//if (sprite_index == door_opening && image_index >= sprite_get_number(sprite_index) ){
//sprite_index = door_open;
//}

if (distance_to_object(obj_Player) > 200 && sprite_index == door_open){
is_open = false;
sprite_index = door_closing;
}
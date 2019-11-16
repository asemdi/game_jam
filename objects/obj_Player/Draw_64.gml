/// @description healthbar
// You can write your code in this editor

draw_sprite(healthbar_holder, 0, healthbar_x, healthbar_y);
draw_sprite_stretched(healthbar_filler, 0, healthbar_x, healthbar_y, (hp/hp_max) * healthbar_width, healthbar_height);
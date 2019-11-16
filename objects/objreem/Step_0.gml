/// @description Insert description here
// You can write your code in this editor
key_left_pressed = keyboard_check(vk_left)
key_right_pressed = keyboard_check(vk_right)

move_dir = key_right_pressed - key_left_pressed

m_move_h = move_dir * 4

x += m_move_h
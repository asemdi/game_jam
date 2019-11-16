/// @description Touch controls
if (os_type == os_android || os_type == os_ios) {
    if (mouse_x < 100 && mouse_y < 100) keyboard_key_press(vk_space);
    else if (mouse_x > x) event_perform(ev_keyboard,vk_right);
    else if (mouse_x < x) event_perform(ev_keyboard,vk_left);
}


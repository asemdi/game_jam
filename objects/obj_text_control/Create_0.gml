/// @description Setup text
text_setup();

///Show some textboxes to greet you
show_message("Welcome to the text engine demo!");
show_message(@"Speak to the men by pressing space.#
Make sure to only speak to one man at a time, otherwise you#
get strange looking results.#
The engine allows to lock the player, however this is not enabled#
for most of the conversations.#
Have fun!");
if (os_type == os_android || os_type == os_ios) {
    show_message(@"On phone use touch to control.#
Tap in the top right corner to move (might be the black area)");
}

///Enable debug overlay
show_debug_overlay(true);


/// @description Show a dialogue when player walks by

//This only contains comments for actions that are different from obj_text_demo's!

//Do not check for keyboard input
if (text_get_state(0) == 0 && distance_to_object(global.text_local_player) < 20) {
    text_demo7_colors();
} 

if (text_get_state(0) == 1) {
  //We will simply destroy this instance to not show the text again
  //for a better method see obj_text_demo_onlyonce
  text_reset_state(0);
  instance_destroy();
}


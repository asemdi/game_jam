/// @description Show a dialogue when player is near and presses space

//This only contains comments for actions that are different from obj_text_demo's!

if (keyboard_check_pressed(vk_space)) {
    if (!done && //Check if already done
     text_get_state(0) == 0 && distance_to_object(global.text_local_player) < 40) {
        text_demo12_onlyonce();
    } 
}

if (text_get_state(0) == 1) {
  //We set done to true so it doesn't run again.
  done = true;
  text_reset_state(0);
}


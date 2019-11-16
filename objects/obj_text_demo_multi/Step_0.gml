/// @description Show a dialogue when player walks by

//This only contains comments for actions that are different from obj_text_demo's!

if (keyboard_check_pressed(vk_space)) {
    //Check state of both conversations
    if (text_get_state(1) == 0 && text_get_state(0) == 0 && distance_to_object(global.text_local_player) < 40) {
        //Create two cobversations. demo11 uses conv. number 1 instead of 0
        text_demo10_multi1();
        text_demo11_multi2();
    } 
}

//Ouput a message for each conversation that is over
if (text_get_state(0) == 1) {
  show_message("Multi demo: Conversation 0 is done");
  text_reset_state(0);
}
if (text_get_state(1) == 1) {
  show_message("Multi demo: Conversation 1 is done");
  text_reset_state(1);
}


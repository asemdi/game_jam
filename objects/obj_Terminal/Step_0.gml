// @description Show a dialogue when player is near and presses space

if (keyboard_check_pressed(vk_space)) {
    //Checks if conversation is not already running and if player is near
    if (text_get_state(0) == 0 && distance_to_object(obj_Player) < 40) {
        //Now the script, that is set in the creation code, is called
        //I used the creation code for that so I don't have to create 12 objects...
        text_terminal();
        //This will add the conversation with number 0 to this instance
        //Conversations are seperate for each instance, so other instances can also
        //create a conversation with id 0
        //FOR MORE DETAILS SEE THIS SCRIPTS IN THE demos FOLDER UNDER SCRIPTS
    } 
}

//Check if conversation is over
//Returns: -1 if running, 0 if not created and 1 if done
//More information in the manual
if (text_get_state(0) == 1) {
  //After the cobversation is over text_get_state(0) will return 1.
  //You should use text_reset_state(0) then to free up some memory
  //Please note that this will destroy the conversation and text_get_state(0)
  //will start returning 0 again. If you want to save if the conversation is over
  //use a custom variable (as shown in obj_text_demo_onlyonce)
  text_reset_state(0);
}


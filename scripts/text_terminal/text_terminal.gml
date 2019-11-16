commands = ds_list_create();

text_add_command(commands,"show");
text_add_command(commands,"line","Hi. This text will only show once.");
text_add_command(commands,"wait_input",2);
text_add_command(commands,"close");
text(commands,0);
commands = ds_list_create();

text_parts = [
	"World War III: We Turned to the Past \nto Save Our Future",
	"2219 was a year of doom for humanity: \nthe World War III plunged the planet Earth",
	"turning everything on its path to fire.\n The threat came from the unexpected,\n",
	"the backbone of our society - our machines,\n and they did not intend to show any mercy",
	"to their creators. For some time, it seemed\nlike humanity had no chance of survival.",
	"Luckily, our adaptiveness, the same skill\nthat let us rampage through evolution,\nstroke again…"
]

for(var i = 0; i < 6; i++){
	text_add_command(commands,"show");
	text_add_command(commands,"line", text_parts[i]);
	text_add_command(commands,"wait_input",2);
	text_add_command(commands,"close");
	
}

text(commands,0);


/*



 The threat came from the unexpected, the backbone of our society - our machines, and they did not intend to show any mercy to their creators. For some time, it seemed like humanity had no chance of survival. Luckily, our adaptiveness, the same skill that let us rampage through evolution, stroke again…
*/
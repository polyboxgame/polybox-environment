# polybox-environment
### How to use
- Create a github codespace.
- Run the init.sh file by opening a terminal and running ```bash init.sh```.
- Open the code-workspace file ```File > Open Workspace from File > polybox.code-workspace```.

Walla! You now have polybox-server and polybox-client accessable and able to interact with eachover, without needing to run 2 codespaces!

### Additional Information
You might get a message saying ```This folder contains a workspace file 'polybox.code-workspace'. Do you want to open it? Learn more about workspace files.```
This will too, just make sure to run the init.sh file before doing that.  

This can be used on windows using the init.bat file, just double click it and run it instead of the shell script file. 

I'm not sure why you would want to do this, but its an option if you want to.

### scripts.js
This is a JavaScript file that runs different commands for a project called "polybox-environment." The `concurrently` package is used to run multiple commands simultaneously. The file exports an object called `commands`, which contains three keys: `run`, `build`, and `watch`. Each key has an array of objects that represent a command to run.  

To use the script, you can run the following command in your terminal: ```node scripts.js -<command>```  

The available commands are:
- `-run`: runs the server and client concurrently.
- `-build`: builds the client and server.
- `-watch`: starts a development server that watches for changes and rebuilds the client and server automatically.  

If you don't specify a command, the script defaults to running the `run` command.
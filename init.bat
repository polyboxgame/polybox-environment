@echo on

:: Make folders for repositories
mkdir polybox-client
mkdir polybox-server

:: Setup client
cd ./polybox-client
git init --quiet
git remote add origin https://github.com/polyboxgame/polybox-client.git
git pull origin main
git switch main
call npm i

:: Setup server
cd ../polybox-server
git init --quiet
git remote add origin https://github.com/polyboxgame/polybox-server.git
git pull origin main
git switch main
call npm i

:: Setup environment
cd ../
call npm i;

:: Display message when done
echo Done! Now you just need to open the code-workspace file in your favorite IDE that supports it.
pause
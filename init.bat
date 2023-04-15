@echo off

:: Make folders for repositories
mkdir polybox-client
mkdir polybox-server

:: Setup client
cd ./polybox-client
git init --quiet
git remote add origin https://github.com/polyboxgame/polybox-client.git
git pull origin main
git checkout main
npm i

:: Setup server
cd ../polybox-server
git init --quiet
git remote add origin https://github.com/polyboxgame/polybox-server.git
git pull origin main
git checkout main
npm i

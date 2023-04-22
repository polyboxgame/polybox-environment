#!/bin/bash

# Make folders for repositories
mkdir polybox-client;
mkdir polybox-server;

# Setup client
cd ./polybox-client;
git init --quiet; # --quiet to hide hints about default branch
git remote add origin https://github.com/polyboxgame/polybox-client.git;
git pull origin main;
git switch main;
npm i; # Install npm packages that are required for the project to run

# Setup server
cd ../polybox-server;
git init --quiet;
git remote add origin https://github.com/polyboxgame/polybox-server.git;
git pull origin main;
git switch main;
npm i;

# Setup environment
cd ../;
npm i;
#!/bin/bash

mkdir polybox-client;
mkdir polybox-server;
cd ./polybox-client;
git init;
git remote add origin https://github.com/polyboxgame/polybox-client.git;
git checkout main;
cd ../polybox-server;
git init;
git remote add origin https://github.com/polyboxgame/polybox-server.git;
git checkout main;
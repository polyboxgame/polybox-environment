const concurrently = require("concurrently");
const commands = {};

commands.run = [{
    "name": "polybox-client",
    "command": "\"cd ./polybox-client && npm run server\""
}, {
    "name": "polybox-server",
    "command": "\"cd ./polybox-server && npm run server\""
}];

commands.build = [{
    "name": "client-host",
    "command": "\"cd ./polybox-client && npm run build-server\""
}, {
    "name": "client-webpack",
    "command": "\"cd ./polybox-client && npm run build-client\""
}, {
    "name": "server",
    "command": "\"cd ./polybox-server && npm run build\""
}];

commands.watch = [{
    "name": "client-host",
    "command": "\"cd ./polybox-client && npm run watch-server\""
}, {
    "name": "client-webpack",
    "command": "\"cd ./polybox-client && npm run watch-client\""
}, {
    "name": "server",
    "command": "\"cd ./polybox-server && npm run watch\""
}];

const key = process.argv[2]?.split("-")?.[1] ?? "run";
if (!commands.hasOwnProperty(key)) throw new Error(`Job "${key}" is not valid.`);

concurrently(commands[key]).result.then(s => console.log(s), e => console.error(e));
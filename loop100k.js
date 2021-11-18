#!/home/enriquerene/nodejs/bin/node
const process = require('process');
for (let i = 0; i < 100000; i++) {
    process.stdout.write(`${i}\r`);
}

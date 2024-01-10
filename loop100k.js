const process = require("process");

const loop = (n) => {
  for (let i = 0; i < n; i++) {
    process.stdout.write(`${i}\r`);
  }
};

const main = () => {
  loop(100000);
};

main();

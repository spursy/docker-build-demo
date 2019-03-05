const Web3 = require('web3');
const web3 = new Web3(new Web3.providers.HttpProvider());
const ret = web3.utils.toWei('1', 'ether');
console.log(`The result is ${ret}.`);